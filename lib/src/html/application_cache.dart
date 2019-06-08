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

abstract class ApplicationCache extends EventTarget {
  static const EventStreamProvider<Event> cachedEvent =
      EventStreamProvider<Event>("cached");

  static const EventStreamProvider<Event> checkingEvent =
      EventStreamProvider<Event>("checking");

  static const EventStreamProvider<Event> downloadingEvent =
      EventStreamProvider<Event>("downloading");

  static const EventStreamProvider<Event> errorEvent =
      EventStreamProvider<Event>("error");

  static const EventStreamProvider<Event> noUpdateEvent =
      EventStreamProvider<Event>("noupdate");

  static const EventStreamProvider<Event> obsoleteEvent =
      EventStreamProvider<Event>("obsolete");

  static const EventStreamProvider<Event> progressEvent =
      EventStreamProvider<Event>("progress");

  static const EventStreamProvider<Event> updateReadyEvent =
      EventStreamProvider<Event>("updateready");

  static const int UNCACHED = 0;

  static const int IDLE = 1;

  static const int CHECKING = 2;

  static const int DOWNLOADING = 3;

  static const int UPDATEREADY = 4;

  static const int OBSOLETE = 5;

  static bool get supported => false;

  Stream<Event> get onCached;

  Stream<Event> get onChecking;

  Stream<Event> get onDownloading;

  Stream<Event> get onError;

  Stream<Event> get onNoUpdate;

  Stream<Event> get onObsolete;

  Stream<Event> get onProgress;

  Stream<Event> get onUpdateReady;

  int get status => UNCACHED;

  void abort();

  void swapCache();

  void update();
}