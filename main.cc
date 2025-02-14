#include <iostream>
#include <wayland-client-protocol.h>
#include <wayland-client.h>

int main()
{
    wl_registry_listener listener;
    wl_display* display = wl_display_connect(nullptr);

    if (display) {
        std::cout << "found\n";
    } else {
        std::cout << "not found\n";
        return 0;
    }

    wl_registry* registry = wl_display_get_registry(display);

    return 0;
}