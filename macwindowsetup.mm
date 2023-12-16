#include "MacWindowSetup.h"
#include <GLFW/glfw3.h>
#define GLFW_EXPOSE_NATIVE_COCOA
#include <GLFW/glfw3native.h>
#import <Cocoa/Cocoa.h>

void setMacWindowProperties(GLFWwindow* window) {
    NSWindow* cocoaWindow = glfwGetCocoaWindow(window);
    
    // Set the window to be transparent
    [cocoaWindow setOpaque:NO];
    [cocoaWindow setBackgroundColor:[NSColor clearColor]];

    // Set the window to ignore mouse events
    [cocoaWindow setIgnoresMouseEvents:YES];

    // Set the window to be always on top
    [cocoaWindow setLevel:NSFloatingWindowLevel];
}
