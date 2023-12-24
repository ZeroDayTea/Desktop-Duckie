#include <iostream>
#include <cstdlib>
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

#ifdef _WIN32
    #define GLFW_EXPOSE_NATIVE_WIN32
    #include <GLFW/glfw3native.h>
    #include <windows.h>
#elif defined(__APPLE__)
    #include "macwindowsetup.h"
#endif

glm::vec3 genRandPosition() {
    float x = static_cast<float>(rand()) / static_cast<float>(RAND_MAX);
    float y = static_cast<float>(rand()) / static_cast<float>(RAND_MAX);

    return {x, y, 0.0};
}

int main() {
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_TRANSPARENT_FRAMEBUFFER, 1);
#if __APPLE__
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
#endif

    // Get the primary monitor
    GLFWmonitor* primaryMonitor = glfwGetPrimaryMonitor();
    if (!primaryMonitor) {
        std::cerr << "Failed to get primary monitor" << std::endl;
        return -1;
    }

    // Get the video mode of the monitor
    const GLFWvidmode* mode = glfwGetVideoMode(primaryMonitor);
    if (!mode) {
        std::cerr << "Failed to get video mode" << std::endl;
        return -1;
    }

    // create the window
    GLFWwindow *window = glfwCreateWindow(mode->width, mode->height, "Desktop Duckie", nullptr, nullptr);
    if (!window) {
        std::cerr << "Failed to create GLFW window" << std::endl;
        glfwTerminate();
        return -1;
    }

    // make window transparent, click-through and topmost (platform dependent)
#ifdef _WIN32
    HWND hwnd = glfwGetWin32Window(window);
    LONG style = GetWindowLong(hwnd, GWL_STYLE);
    //SetWindowLong(hwnd, GWL_STYLE, style & ~WS_OVERLAPPEDWINDOW | WS_POPUP);
    LONG exStyle = GetWindowLong(hwnd, GWL_EXSTYLE);
    SetWindowLong(hwnd, GWL_EXSTYLE, exStyle | WS_EX_TRANSPARENT | WS_EX_LAYERED);
    SetWindowPos(hwnd, HWND_TOPMOST, -5, -5, -5, -5, SWP_NOMOVE | SWP_NOSIZE | SWP_NOACTIVATE);
#elif defined(__APPLE__)
    setMacWindowProperties(window);
#endif

    glfwMakeContextCurrent(window);

    if (!gladLoadGLLoader((GLADloadproc) glfwGetProcAddress)) {
        glfwTerminate();
        std::cerr << "Failed to initialize GLAD" << std::endl;
        return -1;
    }

    int width, height;
    glfwGetFramebufferSize(window, &width, &height);
    glViewport(0, 0, width, height);
    glfwSetFramebufferSizeCallback(window, [](GLFWwindow *window, int width, int height) {
        glViewport(0, 0, width, height);
    });

    // duck drawn to quad [3 positions, 3 colors, 2 texture coords]
    float x = 0.025f;
    float y = 0.025f;
    float vertices[] = {
            x,  y, 0.0f,   1.0f, 0.0f, 0.0f,   1.0f, 0.0f,   // top right
            x, -y, 0.0f,   0.0f, 1.0f, 0.0f,   1.0f, 1.0f,   // bottom right
            -x, -y, 0.0f,   0.0f, 0.0f, 1.0f,   0.0f, 1.0f,   // bottom left

            -x,  y, 0.0f,   1.0f, 1.0f, 0.0f,   0.0f, 0.0f    // top left
    };
    unsigned int indices[] = {
            0, 1, 3, // triangle 1
            1, 2, 3 // triangle 2
    };

    unsigned int VBO, VAO, EBO;
    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);
    glGenBuffers(1, &EBO);

    glBindVertexArray(VAO);

    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);

    // position attribute
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void*)nullptr);
    glEnableVertexAttribArray(0);
    // color attribute
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void*)(3 * sizeof(float)));
    glEnableVertexAttribArray(1);
    // texture coord attribute
    glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void*)(6 * sizeof(float)));
    glEnableVertexAttribArray(2);

    // load the duck texture
    unsigned int texture;
    glGenTextures(1, &texture);
    glBindTexture(GL_TEXTURE_2D, texture);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_BORDER);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_BORDER);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

    int duck_width, duck_height, nrChannels;
    //stbi_set_flip_vertically_on_load(true);
    unsigned char *data = stbi_load("../assets/desktopduckie.png", &duck_width, &duck_height, &nrChannels, STBI_rgb_alpha);

    if(data) {
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, duck_width, duck_height, 0, GL_RGBA, GL_UNSIGNED_BYTE, data);
        glGenerateMipmap(GL_TEXTURE_2D);
    }
    else {
        std::cout << "Failed to load texture" << std::endl;
        std::cerr << stbi_failure_reason() << std::endl;
    }
    stbi_image_free(data);

    // shaders
    const char *vertexShaderSource = R"glsl(
    #version 330 core
    layout (location = 0) in vec3 aPos;
    layout (location = 1) in vec3 aColor;
    layout (location = 2) in vec2 aTexCoord;

    out vec3 ourColor;
    out vec2 TexCoord;

    uniform mat4 transform;

    void main() {
        gl_Position = transform * vec4(aPos, 1.0);
        ourColor = aColor;
        TexCoord = vec2(aTexCoord.x, aTexCoord.y);
    }
    )glsl";

    const char *fragmentShaderSource = R"glsl(
    #version 330 core
    out vec4 FragColor;

    in vec3 ourColor;
    in vec2 TexCoord;

    uniform sampler2D texture1;

    void main() {
        FragColor = texture(texture1, TexCoord);
    }
    )glsl";

    GLuint vertexShader = glCreateShader(GL_VERTEX_SHADER);
    GLuint fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(vertexShader, 1, &vertexShaderSource, nullptr);
    glShaderSource(fragmentShader, 1, &fragmentShaderSource, nullptr);
    // TODO: add shader error handling
    glCompileShader(vertexShader);
    glCompileShader(fragmentShader);

    GLuint shaderProgram = glCreateProgram();
    glAttachShader(shaderProgram, vertexShader);
    glAttachShader(shaderProgram, fragmentShader);
    glLinkProgram(shaderProgram);

    glDeleteShader(vertexShader);
    glDeleteShader(fragmentShader);

    glm::vec3 currentPosition = glm::vec3(0.0f, 0.0f, 0.0f);
    glm::vec3 movingTowards = glm::vec3(0.3f, 0.3f, 0.0f);
    float speed = 0.05f;

    bool stopped = false;
    float stopTime = 0.0f;
    float stopMax = 15.0f;

    glBindTexture(GL_TEXTURE_2D, texture);

    // main loop of the window
    while (!glfwWindowShouldClose(window)) {
        glClear(GL_COLOR_BUFFER_BIT);

        // movement calculations
        float deltaTime = glfwGetTime();
        glfwSetTime(0.0);
        float step = speed * deltaTime;

        if(!stopped && glm::distance(currentPosition, movingTowards) > step) {
            glm::vec3 direction = glm::normalize(movingTowards - currentPosition);
            currentPosition += direction * step;
        }
        else if (!stopped) {
            currentPosition = movingTowards;
            stopped = true;
            stopTime = static_cast <float> (rand()) / (static_cast <float> (RAND_MAX/stopMax));
            movingTowards = genRandPosition();
        }
        else {
            if (stopTime >= 0.0f) {
                stopTime -= deltaTime;
            }
            else {
                stopped = false;
                stopTime = 0.0f;
            }
        }

        // create textures
        glm::mat4 trans = glm::mat4(1.0f);
        trans = glm::translate(trans, currentPosition);
        //trans = glm::rotate(trans, currentTime, glm::vec3(0.0f, 0.0f, 1.0f));

        glUseProgram(shaderProgram);
        unsigned int transformLoc = glGetUniformLocation(shaderProgram, "transform");
        glUniformMatrix4fv(transformLoc, 1, GL_FALSE, glm::value_ptr(trans));

        // render duck quad container
        glBindVertexArray(VAO);
        glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);

        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    // deallocating and terminating
    glDeleteVertexArrays(1, &VAO);
    glDeleteBuffers(1, &VBO);
    glDeleteBuffers(1, &EBO);
    glfwTerminate();
    return 0;
}
