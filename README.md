# Delta 
## Download
First download the Flutter SDK from the main Flutter development website. 

For windows: https://flutter.dev/docs/get-started/install/windows

For macOS: https://flutter.dev/docs/get-started/install/macos

For linux: https://flutter.dev/docs/get-started/install/linux

Follow the website instructions on how to add the path to your local machine.

Download Android Studio from https://developer.android.com/studio and follow the flutter instructions on the setup for Android Studio.

## Set up on Android
In order to run the Flutter app on an Android device:
1. Enable Developer options on your device
2. Window devices must install the Google USB Driver from https://developer.android.com/studio/run/win-usb.
3. Must plug in the device to your local machine.
3. Run **flutter devices** in terminal or command prompt.

## Set up on Local Machine
For testing and running a Flutter app on your local machine using an Android emulator.
1. Enable VM acceleration. Instructions on enabling on different platforms are at https://developer.android.com/studio/run/emulator-acceleration.
2. Launch **Android Studio > Tools > AVD Manager** and select **Create Virtual Device**. For device definition select Pixel XL and then click **Next**. For the system image select **Q** and click **Next**.
3. Under Emulated Performance, select **Hardware- GLES 2.0** to enable hardware acceleration.
4. Verify the settings and click **Finish**.
5. In the AVD Manager, click **Run**.

