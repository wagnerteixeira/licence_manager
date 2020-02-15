# licence_manager

License manager for Systore

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


in linux, if not permission in device create file /etc/udev/rules.d/51-android.rules and put content 

SUBSYSTEM=="usb", ATTR{idVendor}=="05c6", ATTR{idProduct}=="9091", MODE="0666", GROUP="plugdev"

when idVendor an idProduct is part of content of lsusb comamand, example:

the result is lsusb is
Bus 001 Device 010: ID 05c6:9091 Qualcomm, Inc. 

the vendor is 05c6 and product is 9091

more in

https://stackoverflow.com/questions/53887322/adb-devices-no-permissions-user-in-plugdev-group-are-your-udev-rules-wrong