#include <iostream>
#include <wayland-client.h>

int main()
{
    wl_display* display = wl_display_connect(nullptr);

    if (display) {
        std::cout << "found\n";
    } else {
        std::cout << "not found\n";
    }

    return 0;
}