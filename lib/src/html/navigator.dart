/*
Some source code in this file was adopted from 'dart:html' in Dart SDK. See:
  https://github.com/dart-lang/sdk/tree/master/tools/dom

The source code adopted from 'dart:html' had the following license:

  Copyright 2012, the Dart project authors. All rights reserved.
  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are
  met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of Google Inc. nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/
part of universal_html;

class Navigator {
  final HtmlDriver _driver;
  final Permissions permission = Permissions._();

  /// IMPORTANT: Not part of 'dart:html' API.
  Navigator.internal(
    this._driver, {
    this.deviceMemory,
    this.vendor = "",
    this.vendorSub = "",
  });

  final int deviceMemory;

  Geolocation _geoLocation;
  Geolocation get geoLocation {
    return _geoLocation ?? (_geoLocation = _driver.newGeolocation());
  }

  String get language {
    final languages = this.languages;
    return languages.isEmpty ? null : languages.first;
  }

  List<String> get languages => _driver.languages;

  MediaDevices get mediaDevices => MediaDevices._();

  bool get onLine => false;

  String get userAgent => _driver.userAgent;

  final String vendor;

  final String vendorSub;

  ServiceWorkerContainer get serviceWorker {
    throw UnimplementedError();
  }

  void cancelKeyboardLock() {
    // Ignore
  }

  Future<RelatedApplication> getInstalledRelatedApps() {
    return Future.error(UnimplementedError());
  }

  Future<MediaStream> getUserMedia(
      {dynamic audio = false, dynamic video = false}) {
    return Future.error(UnimplementedError());
  }

  void registerProtocolHandler(String scheme, String url, String title) {
    // Ignore
  }

  Future requestKeyboardLock([List<String> keyCodes]) {
    return Future.error(UnimplementedError());
  }

  Future requestMediaKeySystemAccess(
      String keySystem, List<Map> supportedConfigurations) {
    return Future.error(UnimplementedError());
  }

  bool sendBeacon(String url, Object data) {
    _sendBeacon(url, data);
    return true;
  }

  Future<void> _sendBeacon(String url, Object data) async {
    await HttpRequest.request(url, method: "POST", sendData: data);
  }
}

class RelatedApplication {
  final String id;
  final String platform;
  final String url;

  RelatedApplication._({this.id, this.platform, this.url});
}