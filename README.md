# cn1-Device
A small library to get the market (consumer-friendly) name, model, and manufacturer of devices.

On many popular devices, the market name of the device is not available.
For example, on the Samsung Galaxy S7 the value of [`Build.MODEL`] may be any of `"SAMSUNG-SM-G930A"`, `"SM-G930F"`, `"SM-G930K"`, `"SM-G930L"`, etc.
Apple devices are mostly recognized by their machine name... `"iPhone 8 Plus"` is `"iPhone10,2"`, and `"iPad Pro 9.7-inch (WiFi+Cellular)"` is `"iPad6,4"`, etc.

This library is useful for providing technical support for a particular device or adding some rules, e.g extra bottom-padding on iPhone X because of the on-screen Home Bar icon layered over the App and blocking an underlined contents.

The android device list is based on the Google maintained list of about 20,000 supported devices found [here][1]. We will keep the library up-to-date.

Installation
============

 - Search for **Device** in Codename One extension store and add it to your project.

   Or download  [Device.cn1Lib][2] to the **lib** folder of your project.

 - Go to your project and do **Refresh cn1Lib files**.


JavaDoc
=======

View the project JavaDoc [here][3].


Usage example
=============

To avoid blocking the EDT on Android, it's advisable to call these methods in a `callSerially()`.

Get the **name** of the current device (e.g iPhone 8 Plus):
 
     String name = Device.getName();
    
Get the **model** of the current device (e.g iPhone 8 Plus (China/Japan)):
 
     String model = Device.getModel();
    
Get the **manufacturer** of the current device (e.g Apple Inc.):
 
     String manufacturer = Device.getManufacturer();


Contribution
============

You are welcome to improve the code and add more devices.

Fork the project, commit your code, and create a pull request.

You can also improve the documentation, methods, and classes used.


Quick Links
===========
[Update Android devices][4]

[Update Apple devices][5]

Author
======

Diamond Dev Group.


License
=======

MIT License

Copyright (c) 2018 Diamond Dev Group

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


  [1]: https://support.google.com/googleplay/answer/1727131?hl=en
  [2]: https://github.com/diamondobama/CN1-Device/blob/master/Device.cn1lib?raw=true
  [3]: https://diamondobama.github.io/apidocs/CN1-Device
  [4]: https://github.com/diamonddevgroup/CN1-Device/tree/master/native/android
  [5]: https://github.com/diamonddevgroup/CN1-Device/blob/master/native/ios/DeviceList.plist
