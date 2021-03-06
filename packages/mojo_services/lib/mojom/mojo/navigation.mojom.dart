// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library navigation_mojom;

import 'dart:async';

import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojom/mojo/url_request.mojom.dart' as url_request_mojom;

const int Target_DEFAULT = 0;
const int Target_SOURCE_NODE = 1;
const int Target_NEW_NODE = 2;


class NavigatorHostRequestNavigateParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  int target = 0;
  url_request_mojom.UrlRequest request = null;

  NavigatorHostRequestNavigateParams() : super(kVersions.last.size);

  static NavigatorHostRequestNavigateParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static NavigatorHostRequestNavigateParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    NavigatorHostRequestNavigateParams result = new NavigatorHostRequestNavigateParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      result.target = decoder0.decodeInt32(8);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(16, false);
      result.request = url_request_mojom.UrlRequest.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeInt32(target, 8);
    
    encoder0.encodeStruct(request, 16, false);
  }

  String toString() {
    return "NavigatorHostRequestNavigateParams("
           "target: $target" ", "
           "request: $request" ")";
  }
}

class NavigatorHostRequestNavigateHistoryParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  int delta = 0;

  NavigatorHostRequestNavigateHistoryParams() : super(kVersions.last.size);

  static NavigatorHostRequestNavigateHistoryParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static NavigatorHostRequestNavigateHistoryParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    NavigatorHostRequestNavigateHistoryParams result = new NavigatorHostRequestNavigateHistoryParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      result.delta = decoder0.decodeInt32(8);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeInt32(delta, 8);
  }

  String toString() {
    return "NavigatorHostRequestNavigateHistoryParams("
           "delta: $delta" ")";
  }
}

class NavigatorHostDidNavigateLocallyParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  String url = null;

  NavigatorHostDidNavigateLocallyParams() : super(kVersions.last.size);

  static NavigatorHostDidNavigateLocallyParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static NavigatorHostDidNavigateLocallyParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    NavigatorHostDidNavigateLocallyParams result = new NavigatorHostDidNavigateLocallyParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      result.url = decoder0.decodeString(8, false);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeString(url, 8, false);
  }

  String toString() {
    return "NavigatorHostDidNavigateLocallyParams("
           "url: $url" ")";
  }
}

const int kNavigatorHost_requestNavigate_name = 0;
const int kNavigatorHost_requestNavigateHistory_name = 1;
const int kNavigatorHost_didNavigateLocally_name = 2;

const String NavigatorHostName =
      'mojo::NavigatorHost';

abstract class NavigatorHost {
  void requestNavigate(int target, url_request_mojom.UrlRequest request);
  void requestNavigateHistory(int delta);
  void didNavigateLocally(String url);

}


class NavigatorHostProxyImpl extends bindings.Proxy {
  NavigatorHostProxyImpl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  NavigatorHostProxyImpl.fromHandle(core.MojoHandle handle) :
      super.fromHandle(handle);

  NavigatorHostProxyImpl.unbound() : super.unbound();

  static NavigatorHostProxyImpl newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For NavigatorHostProxyImpl"));
    return new NavigatorHostProxyImpl.fromEndpoint(endpoint);
  }

  String get name => NavigatorHostName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  String toString() {
    var superString = super.toString();
    return "NavigatorHostProxyImpl($superString)";
  }
}


class _NavigatorHostProxyCalls implements NavigatorHost {
  NavigatorHostProxyImpl _proxyImpl;

  _NavigatorHostProxyCalls(this._proxyImpl);
    void requestNavigate(int target, url_request_mojom.UrlRequest request) {
      assert(_proxyImpl.isBound);
      var params = new NavigatorHostRequestNavigateParams();
      params.target = target;
      params.request = request;
      _proxyImpl.sendMessage(params, kNavigatorHost_requestNavigate_name);
    }
  
    void requestNavigateHistory(int delta) {
      assert(_proxyImpl.isBound);
      var params = new NavigatorHostRequestNavigateHistoryParams();
      params.delta = delta;
      _proxyImpl.sendMessage(params, kNavigatorHost_requestNavigateHistory_name);
    }
  
    void didNavigateLocally(String url) {
      assert(_proxyImpl.isBound);
      var params = new NavigatorHostDidNavigateLocallyParams();
      params.url = url;
      _proxyImpl.sendMessage(params, kNavigatorHost_didNavigateLocally_name);
    }
  
}


class NavigatorHostProxy implements bindings.ProxyBase {
  final bindings.Proxy impl;
  NavigatorHost ptr;
  final String name = NavigatorHostName;

  NavigatorHostProxy(NavigatorHostProxyImpl proxyImpl) :
      impl = proxyImpl,
      ptr = new _NavigatorHostProxyCalls(proxyImpl);

  NavigatorHostProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) :
      impl = new NavigatorHostProxyImpl.fromEndpoint(endpoint) {
    ptr = new _NavigatorHostProxyCalls(impl);
  }

  NavigatorHostProxy.fromHandle(core.MojoHandle handle) :
      impl = new NavigatorHostProxyImpl.fromHandle(handle) {
    ptr = new _NavigatorHostProxyCalls(impl);
  }

  NavigatorHostProxy.unbound() :
      impl = new NavigatorHostProxyImpl.unbound() {
    ptr = new _NavigatorHostProxyCalls(impl);
  }

  static NavigatorHostProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For NavigatorHostProxy"));
    return new NavigatorHostProxy.fromEndpoint(endpoint);
  }

  Future close({bool immediate: false}) => impl.close(immediate: immediate);

  int get version => impl.version;

  Future<int> queryVersion() => impl.queryVersion();

  void requireVersion(int requiredVersion) {
    impl.requireVersion(requiredVersion);
  }

  String toString() {
    return "NavigatorHostProxy($impl)";
  }
}


class NavigatorHostStub extends bindings.Stub {
  NavigatorHost _impl = null;

  NavigatorHostStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [this._impl])
      : super.fromEndpoint(endpoint);

  NavigatorHostStub.fromHandle(core.MojoHandle handle, [this._impl])
      : super.fromHandle(handle);

  NavigatorHostStub.unbound() : super.unbound();

  static NavigatorHostStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For NavigatorHostStub"));
    return new NavigatorHostStub.fromEndpoint(endpoint);
  }

  static const String name = NavigatorHostName;



  Future<bindings.Message> handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      return bindings.ControlMessageHandler.handleMessage(this,
                                                          0,
                                                          message);
    }
    assert(_impl != null);
    switch (message.header.type) {
      case kNavigatorHost_requestNavigate_name:
        var params = NavigatorHostRequestNavigateParams.deserialize(
            message.payload);
        _impl.requestNavigate(params.target, params.request);
        break;
      case kNavigatorHost_requestNavigateHistory_name:
        var params = NavigatorHostRequestNavigateHistoryParams.deserialize(
            message.payload);
        _impl.requestNavigateHistory(params.delta);
        break;
      case kNavigatorHost_didNavigateLocally_name:
        var params = NavigatorHostDidNavigateLocallyParams.deserialize(
            message.payload);
        _impl.didNavigateLocally(params.url);
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
    return null;
  }

  NavigatorHost get impl => _impl;
  set impl(NavigatorHost d) {
    assert(_impl == null);
    _impl = d;
  }

  String toString() {
    var superString = super.toString();
    return "NavigatorHostStub($superString)";
  }

  int get version => 0;
}


