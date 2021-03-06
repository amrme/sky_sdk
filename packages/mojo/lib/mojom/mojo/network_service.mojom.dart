// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library network_service.mojom;

import 'dart:async';

import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojom/mojo/network_error.mojom.dart' as network_error_mojom;
import 'package:mojom/mojo/cookie_store.mojom.dart' as cookie_store_mojom;
import 'package:mojom/mojo/http_server.mojom.dart' as http_server_mojom;
import 'package:mojom/mojo/net_address.mojom.dart' as net_address_mojom;
import 'package:mojom/mojo/tcp_bound_socket.mojom.dart' as tcp_bound_socket_mojom;
import 'package:mojom/mojo/tcp_connected_socket.mojom.dart' as tcp_connected_socket_mojom;
import 'package:mojom/mojo/udp_socket.mojom.dart' as udp_socket_mojom;
import 'package:mojom/mojo/url_loader.mojom.dart' as url_loader_mojom;
import 'package:mojom/mojo/url_loader_interceptor.mojom.dart' as url_loader_interceptor_mojom;
import 'package:mojom/mojo/web_socket.mojom.dart' as web_socket_mojom;


class NetworkServiceCreateUrlLoaderParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  Object loader = null;

  NetworkServiceCreateUrlLoaderParams() : super(kVersions.last.size);

  static NetworkServiceCreateUrlLoaderParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static NetworkServiceCreateUrlLoaderParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    NetworkServiceCreateUrlLoaderParams result = new NetworkServiceCreateUrlLoaderParams();

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
      
      result.loader = decoder0.decodeInterfaceRequest(8, false, url_loader_mojom.UrlLoaderStub.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeInterfaceRequest(loader, 8, false);
  }

  String toString() {
    return "NetworkServiceCreateUrlLoaderParams("
           "loader: $loader" ")";
  }
}

class NetworkServiceGetCookieStoreParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  Object cookieStore = null;

  NetworkServiceGetCookieStoreParams() : super(kVersions.last.size);

  static NetworkServiceGetCookieStoreParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static NetworkServiceGetCookieStoreParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    NetworkServiceGetCookieStoreParams result = new NetworkServiceGetCookieStoreParams();

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
      
      result.cookieStore = decoder0.decodeInterfaceRequest(8, false, cookie_store_mojom.CookieStoreStub.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeInterfaceRequest(cookieStore, 8, false);
  }

  String toString() {
    return "NetworkServiceGetCookieStoreParams("
           "cookieStore: $cookieStore" ")";
  }
}

class NetworkServiceCreateWebSocketParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  Object socket = null;

  NetworkServiceCreateWebSocketParams() : super(kVersions.last.size);

  static NetworkServiceCreateWebSocketParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static NetworkServiceCreateWebSocketParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    NetworkServiceCreateWebSocketParams result = new NetworkServiceCreateWebSocketParams();

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
      
      result.socket = decoder0.decodeInterfaceRequest(8, false, web_socket_mojom.WebSocketStub.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeInterfaceRequest(socket, 8, false);
  }

  String toString() {
    return "NetworkServiceCreateWebSocketParams("
           "socket: $socket" ")";
  }
}

class NetworkServiceCreateTcpBoundSocketParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  net_address_mojom.NetAddress localAddress = null;
  Object boundSocket = null;

  NetworkServiceCreateTcpBoundSocketParams() : super(kVersions.last.size);

  static NetworkServiceCreateTcpBoundSocketParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static NetworkServiceCreateTcpBoundSocketParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    NetworkServiceCreateTcpBoundSocketParams result = new NetworkServiceCreateTcpBoundSocketParams();

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
      
      var decoder1 = decoder0.decodePointer(8, true);
      result.localAddress = net_address_mojom.NetAddress.decode(decoder1);
    }
    if (mainDataHeader.version >= 0) {
      
      result.boundSocket = decoder0.decodeInterfaceRequest(16, false, tcp_bound_socket_mojom.TcpBoundSocketStub.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(localAddress, 8, true);
    
    encoder0.encodeInterfaceRequest(boundSocket, 16, false);
  }

  String toString() {
    return "NetworkServiceCreateTcpBoundSocketParams("
           "localAddress: $localAddress" ", "
           "boundSocket: $boundSocket" ")";
  }
}

class NetworkServiceCreateTcpBoundSocketResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  network_error_mojom.NetworkError result = null;
  net_address_mojom.NetAddress boundTo = null;

  NetworkServiceCreateTcpBoundSocketResponseParams() : super(kVersions.last.size);

  static NetworkServiceCreateTcpBoundSocketResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static NetworkServiceCreateTcpBoundSocketResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    NetworkServiceCreateTcpBoundSocketResponseParams result = new NetworkServiceCreateTcpBoundSocketResponseParams();

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
      
      var decoder1 = decoder0.decodePointer(8, false);
      result.result = network_error_mojom.NetworkError.decode(decoder1);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(16, true);
      result.boundTo = net_address_mojom.NetAddress.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(result, 8, false);
    
    encoder0.encodeStruct(boundTo, 16, true);
  }

  String toString() {
    return "NetworkServiceCreateTcpBoundSocketResponseParams("
           "result: $result" ", "
           "boundTo: $boundTo" ")";
  }
}

class NetworkServiceCreateTcpConnectedSocketParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(32, 0)
  ];
  net_address_mojom.NetAddress remoteAddress = null;
  core.MojoDataPipeConsumer sendStream = null;
  core.MojoDataPipeProducer receiveStream = null;
  Object clientSocket = null;

  NetworkServiceCreateTcpConnectedSocketParams() : super(kVersions.last.size);

  static NetworkServiceCreateTcpConnectedSocketParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static NetworkServiceCreateTcpConnectedSocketParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    NetworkServiceCreateTcpConnectedSocketParams result = new NetworkServiceCreateTcpConnectedSocketParams();

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
      
      var decoder1 = decoder0.decodePointer(8, false);
      result.remoteAddress = net_address_mojom.NetAddress.decode(decoder1);
    }
    if (mainDataHeader.version >= 0) {
      
      result.sendStream = decoder0.decodeConsumerHandle(16, false);
    }
    if (mainDataHeader.version >= 0) {
      
      result.receiveStream = decoder0.decodeProducerHandle(20, false);
    }
    if (mainDataHeader.version >= 0) {
      
      result.clientSocket = decoder0.decodeInterfaceRequest(24, false, tcp_connected_socket_mojom.TcpConnectedSocketStub.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(remoteAddress, 8, false);
    
    encoder0.encodeConsumerHandle(sendStream, 16, false);
    
    encoder0.encodeProducerHandle(receiveStream, 20, false);
    
    encoder0.encodeInterfaceRequest(clientSocket, 24, false);
  }

  String toString() {
    return "NetworkServiceCreateTcpConnectedSocketParams("
           "remoteAddress: $remoteAddress" ", "
           "sendStream: $sendStream" ", "
           "receiveStream: $receiveStream" ", "
           "clientSocket: $clientSocket" ")";
  }
}

class NetworkServiceCreateTcpConnectedSocketResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  network_error_mojom.NetworkError result = null;
  net_address_mojom.NetAddress localAddress = null;

  NetworkServiceCreateTcpConnectedSocketResponseParams() : super(kVersions.last.size);

  static NetworkServiceCreateTcpConnectedSocketResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static NetworkServiceCreateTcpConnectedSocketResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    NetworkServiceCreateTcpConnectedSocketResponseParams result = new NetworkServiceCreateTcpConnectedSocketResponseParams();

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
      
      var decoder1 = decoder0.decodePointer(8, false);
      result.result = network_error_mojom.NetworkError.decode(decoder1);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(16, true);
      result.localAddress = net_address_mojom.NetAddress.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(result, 8, false);
    
    encoder0.encodeStruct(localAddress, 16, true);
  }

  String toString() {
    return "NetworkServiceCreateTcpConnectedSocketResponseParams("
           "result: $result" ", "
           "localAddress: $localAddress" ")";
  }
}

class NetworkServiceCreateUdpSocketParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  Object socket = null;

  NetworkServiceCreateUdpSocketParams() : super(kVersions.last.size);

  static NetworkServiceCreateUdpSocketParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static NetworkServiceCreateUdpSocketParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    NetworkServiceCreateUdpSocketParams result = new NetworkServiceCreateUdpSocketParams();

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
      
      result.socket = decoder0.decodeInterfaceRequest(8, false, udp_socket_mojom.UdpSocketStub.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeInterfaceRequest(socket, 8, false);
  }

  String toString() {
    return "NetworkServiceCreateUdpSocketParams("
           "socket: $socket" ")";
  }
}

class NetworkServiceCreateHttpServerParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  net_address_mojom.NetAddress localAddress = null;
  Object delegate = null;

  NetworkServiceCreateHttpServerParams() : super(kVersions.last.size);

  static NetworkServiceCreateHttpServerParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static NetworkServiceCreateHttpServerParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    NetworkServiceCreateHttpServerParams result = new NetworkServiceCreateHttpServerParams();

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
      
      var decoder1 = decoder0.decodePointer(8, false);
      result.localAddress = net_address_mojom.NetAddress.decode(decoder1);
    }
    if (mainDataHeader.version >= 0) {
      
      result.delegate = decoder0.decodeServiceInterface(16, false, http_server_mojom.HttpServerDelegateProxy.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(localAddress, 8, false);
    
    encoder0.encodeInterface(delegate, 16, false);
  }

  String toString() {
    return "NetworkServiceCreateHttpServerParams("
           "localAddress: $localAddress" ", "
           "delegate: $delegate" ")";
  }
}

class NetworkServiceCreateHttpServerResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  network_error_mojom.NetworkError result = null;
  net_address_mojom.NetAddress boundTo = null;

  NetworkServiceCreateHttpServerResponseParams() : super(kVersions.last.size);

  static NetworkServiceCreateHttpServerResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static NetworkServiceCreateHttpServerResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    NetworkServiceCreateHttpServerResponseParams result = new NetworkServiceCreateHttpServerResponseParams();

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
      
      var decoder1 = decoder0.decodePointer(8, false);
      result.result = network_error_mojom.NetworkError.decode(decoder1);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(16, true);
      result.boundTo = net_address_mojom.NetAddress.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(result, 8, false);
    
    encoder0.encodeStruct(boundTo, 16, true);
  }

  String toString() {
    return "NetworkServiceCreateHttpServerResponseParams("
           "result: $result" ", "
           "boundTo: $boundTo" ")";
  }
}

class NetworkServiceRegisterUrlLoaderInterceptorParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  Object factory = null;

  NetworkServiceRegisterUrlLoaderInterceptorParams() : super(kVersions.last.size);

  static NetworkServiceRegisterUrlLoaderInterceptorParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static NetworkServiceRegisterUrlLoaderInterceptorParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    NetworkServiceRegisterUrlLoaderInterceptorParams result = new NetworkServiceRegisterUrlLoaderInterceptorParams();

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
      
      result.factory = decoder0.decodeServiceInterface(8, false, url_loader_interceptor_mojom.UrlLoaderInterceptorFactoryProxy.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeInterface(factory, 8, false);
  }

  String toString() {
    return "NetworkServiceRegisterUrlLoaderInterceptorParams("
           "factory: $factory" ")";
  }
}

const int kNetworkService_createUrlLoader_name = 0;
const int kNetworkService_getCookieStore_name = 1;
const int kNetworkService_createWebSocket_name = 2;
const int kNetworkService_createTcpBoundSocket_name = 3;
const int kNetworkService_createTcpConnectedSocket_name = 4;
const int kNetworkService_createUdpSocket_name = 5;
const int kNetworkService_createHttpServer_name = 6;
const int kNetworkService_registerUrlLoaderInterceptor_name = 7;

const String NetworkServiceName =
      'mojo::NetworkService';

abstract class NetworkService {
  void createUrlLoader(Object loader);
  void getCookieStore(Object cookieStore);
  void createWebSocket(Object socket);
  Future<NetworkServiceCreateTcpBoundSocketResponseParams> createTcpBoundSocket(net_address_mojom.NetAddress localAddress,Object boundSocket,[Function responseFactory = null]);
  Future<NetworkServiceCreateTcpConnectedSocketResponseParams> createTcpConnectedSocket(net_address_mojom.NetAddress remoteAddress,core.MojoDataPipeConsumer sendStream,core.MojoDataPipeProducer receiveStream,Object clientSocket,[Function responseFactory = null]);
  void createUdpSocket(Object socket);
  Future<NetworkServiceCreateHttpServerResponseParams> createHttpServer(net_address_mojom.NetAddress localAddress,Object delegate,[Function responseFactory = null]);
  void registerUrlLoaderInterceptor(Object factory);

}


class NetworkServiceProxyImpl extends bindings.Proxy {
  NetworkServiceProxyImpl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  NetworkServiceProxyImpl.fromHandle(core.MojoHandle handle) :
      super.fromHandle(handle);

  NetworkServiceProxyImpl.unbound() : super.unbound();

  static NetworkServiceProxyImpl newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new NetworkServiceProxyImpl.fromEndpoint(endpoint);

  String get name => NetworkServiceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case kNetworkService_createTcpBoundSocket_name:
        var r = NetworkServiceCreateTcpBoundSocketResponseParams.deserialize(
            message.payload);
        if (!message.header.hasRequestId) {
          throw 'Expected a message with a valid request Id.';
        }
        Completer c = completerMap[message.header.requestId];
        if (c == null) {
          throw 'Message had unknown request Id: ${message.header.requestId}';
        }
        completerMap.remove(message.header.requestId);
        assert(!c.isCompleted);
        c.complete(r);
        break;
      case kNetworkService_createTcpConnectedSocket_name:
        var r = NetworkServiceCreateTcpConnectedSocketResponseParams.deserialize(
            message.payload);
        if (!message.header.hasRequestId) {
          throw 'Expected a message with a valid request Id.';
        }
        Completer c = completerMap[message.header.requestId];
        if (c == null) {
          throw 'Message had unknown request Id: ${message.header.requestId}';
        }
        completerMap.remove(message.header.requestId);
        assert(!c.isCompleted);
        c.complete(r);
        break;
      case kNetworkService_createHttpServer_name:
        var r = NetworkServiceCreateHttpServerResponseParams.deserialize(
            message.payload);
        if (!message.header.hasRequestId) {
          throw 'Expected a message with a valid request Id.';
        }
        Completer c = completerMap[message.header.requestId];
        if (c == null) {
          throw 'Message had unknown request Id: ${message.header.requestId}';
        }
        completerMap.remove(message.header.requestId);
        assert(!c.isCompleted);
        c.complete(r);
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  String toString() {
    var superString = super.toString();
    return "NetworkServiceProxyImpl($superString)";
  }
}


class _NetworkServiceProxyCalls implements NetworkService {
  NetworkServiceProxyImpl _proxyImpl;

  _NetworkServiceProxyCalls(this._proxyImpl);
    void createUrlLoader(Object loader) {
      assert(_proxyImpl.isBound);
      var params = new NetworkServiceCreateUrlLoaderParams();
      params.loader = loader;
      _proxyImpl.sendMessage(params, kNetworkService_createUrlLoader_name);
    }
  
    void getCookieStore(Object cookieStore) {
      assert(_proxyImpl.isBound);
      var params = new NetworkServiceGetCookieStoreParams();
      params.cookieStore = cookieStore;
      _proxyImpl.sendMessage(params, kNetworkService_getCookieStore_name);
    }
  
    void createWebSocket(Object socket) {
      assert(_proxyImpl.isBound);
      var params = new NetworkServiceCreateWebSocketParams();
      params.socket = socket;
      _proxyImpl.sendMessage(params, kNetworkService_createWebSocket_name);
    }
  
    Future<NetworkServiceCreateTcpBoundSocketResponseParams> createTcpBoundSocket(net_address_mojom.NetAddress localAddress,Object boundSocket,[Function responseFactory = null]) {
      assert(_proxyImpl.isBound);
      var params = new NetworkServiceCreateTcpBoundSocketParams();
      params.localAddress = localAddress;
      params.boundSocket = boundSocket;
      return _proxyImpl.sendMessageWithRequestId(
          params,
          kNetworkService_createTcpBoundSocket_name,
          -1,
          bindings.MessageHeader.kMessageExpectsResponse);
    }
    Future<NetworkServiceCreateTcpConnectedSocketResponseParams> createTcpConnectedSocket(net_address_mojom.NetAddress remoteAddress,core.MojoDataPipeConsumer sendStream,core.MojoDataPipeProducer receiveStream,Object clientSocket,[Function responseFactory = null]) {
      assert(_proxyImpl.isBound);
      var params = new NetworkServiceCreateTcpConnectedSocketParams();
      params.remoteAddress = remoteAddress;
      params.sendStream = sendStream;
      params.receiveStream = receiveStream;
      params.clientSocket = clientSocket;
      return _proxyImpl.sendMessageWithRequestId(
          params,
          kNetworkService_createTcpConnectedSocket_name,
          -1,
          bindings.MessageHeader.kMessageExpectsResponse);
    }
    void createUdpSocket(Object socket) {
      assert(_proxyImpl.isBound);
      var params = new NetworkServiceCreateUdpSocketParams();
      params.socket = socket;
      _proxyImpl.sendMessage(params, kNetworkService_createUdpSocket_name);
    }
  
    Future<NetworkServiceCreateHttpServerResponseParams> createHttpServer(net_address_mojom.NetAddress localAddress,Object delegate,[Function responseFactory = null]) {
      assert(_proxyImpl.isBound);
      var params = new NetworkServiceCreateHttpServerParams();
      params.localAddress = localAddress;
      params.delegate = delegate;
      return _proxyImpl.sendMessageWithRequestId(
          params,
          kNetworkService_createHttpServer_name,
          -1,
          bindings.MessageHeader.kMessageExpectsResponse);
    }
    void registerUrlLoaderInterceptor(Object factory) {
      assert(_proxyImpl.isBound);
      var params = new NetworkServiceRegisterUrlLoaderInterceptorParams();
      params.factory = factory;
      _proxyImpl.sendMessage(params, kNetworkService_registerUrlLoaderInterceptor_name);
    }
  
}


class NetworkServiceProxy implements bindings.ProxyBase {
  final bindings.Proxy impl;
  NetworkService ptr;
  final String name = NetworkServiceName;

  NetworkServiceProxy(NetworkServiceProxyImpl proxyImpl) :
      impl = proxyImpl,
      ptr = new _NetworkServiceProxyCalls(proxyImpl);

  NetworkServiceProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) :
      impl = new NetworkServiceProxyImpl.fromEndpoint(endpoint) {
    ptr = new _NetworkServiceProxyCalls(impl);
  }

  NetworkServiceProxy.fromHandle(core.MojoHandle handle) :
      impl = new NetworkServiceProxyImpl.fromHandle(handle) {
    ptr = new _NetworkServiceProxyCalls(impl);
  }

  NetworkServiceProxy.unbound() :
      impl = new NetworkServiceProxyImpl.unbound() {
    ptr = new _NetworkServiceProxyCalls(impl);
  }

  static NetworkServiceProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new NetworkServiceProxy.fromEndpoint(endpoint);

  Future close({bool immediate: false}) => impl.close(immediate: immediate);

  int get version => impl.version;

  Future<int> queryVersion() => impl.queryVersion();

  void requireVersion(int requiredVersion) {
    impl.requireVersion(requiredVersion);
  }

  String toString() {
    return "NetworkServiceProxy($impl)";
  }
}


class NetworkServiceStub extends bindings.Stub {
  NetworkService _impl = null;

  NetworkServiceStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [this._impl])
      : super.fromEndpoint(endpoint);

  NetworkServiceStub.fromHandle(core.MojoHandle handle, [this._impl])
      : super.fromHandle(handle);

  NetworkServiceStub.unbound() : super.unbound();

  static NetworkServiceStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) =>
      new NetworkServiceStub.fromEndpoint(endpoint);

  static const String name = NetworkServiceName;


  NetworkServiceCreateTcpBoundSocketResponseParams _NetworkServiceCreateTcpBoundSocketResponseParamsFactory(network_error_mojom.NetworkError result, net_address_mojom.NetAddress boundTo) {
    var result = new NetworkServiceCreateTcpBoundSocketResponseParams();
    result.result = result;
    result.boundTo = boundTo;
    return result;
  }
  NetworkServiceCreateTcpConnectedSocketResponseParams _NetworkServiceCreateTcpConnectedSocketResponseParamsFactory(network_error_mojom.NetworkError result, net_address_mojom.NetAddress localAddress) {
    var result = new NetworkServiceCreateTcpConnectedSocketResponseParams();
    result.result = result;
    result.localAddress = localAddress;
    return result;
  }
  NetworkServiceCreateHttpServerResponseParams _NetworkServiceCreateHttpServerResponseParamsFactory(network_error_mojom.NetworkError result, net_address_mojom.NetAddress boundTo) {
    var result = new NetworkServiceCreateHttpServerResponseParams();
    result.result = result;
    result.boundTo = boundTo;
    return result;
  }

  Future<bindings.Message> handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      return bindings.ControlMessageHandler.handleMessage(this,
                                                          0,
                                                          message);
    }
    assert(_impl != null);
    switch (message.header.type) {
      case kNetworkService_createUrlLoader_name:
        var params = NetworkServiceCreateUrlLoaderParams.deserialize(
            message.payload);
        _impl.createUrlLoader(params.loader);
        break;
      case kNetworkService_getCookieStore_name:
        var params = NetworkServiceGetCookieStoreParams.deserialize(
            message.payload);
        _impl.getCookieStore(params.cookieStore);
        break;
      case kNetworkService_createWebSocket_name:
        var params = NetworkServiceCreateWebSocketParams.deserialize(
            message.payload);
        _impl.createWebSocket(params.socket);
        break;
      case kNetworkService_createTcpBoundSocket_name:
        var params = NetworkServiceCreateTcpBoundSocketParams.deserialize(
            message.payload);
        return _impl.createTcpBoundSocket(params.localAddress,params.boundSocket,_NetworkServiceCreateTcpBoundSocketResponseParamsFactory).then((response) {
          if (response != null) {
            return buildResponseWithId(
                response,
                kNetworkService_createTcpBoundSocket_name,
                message.header.requestId,
                bindings.MessageHeader.kMessageIsResponse);
          }
        });
        break;
      case kNetworkService_createTcpConnectedSocket_name:
        var params = NetworkServiceCreateTcpConnectedSocketParams.deserialize(
            message.payload);
        return _impl.createTcpConnectedSocket(params.remoteAddress,params.sendStream,params.receiveStream,params.clientSocket,_NetworkServiceCreateTcpConnectedSocketResponseParamsFactory).then((response) {
          if (response != null) {
            return buildResponseWithId(
                response,
                kNetworkService_createTcpConnectedSocket_name,
                message.header.requestId,
                bindings.MessageHeader.kMessageIsResponse);
          }
        });
        break;
      case kNetworkService_createUdpSocket_name:
        var params = NetworkServiceCreateUdpSocketParams.deserialize(
            message.payload);
        _impl.createUdpSocket(params.socket);
        break;
      case kNetworkService_createHttpServer_name:
        var params = NetworkServiceCreateHttpServerParams.deserialize(
            message.payload);
        return _impl.createHttpServer(params.localAddress,params.delegate,_NetworkServiceCreateHttpServerResponseParamsFactory).then((response) {
          if (response != null) {
            return buildResponseWithId(
                response,
                kNetworkService_createHttpServer_name,
                message.header.requestId,
                bindings.MessageHeader.kMessageIsResponse);
          }
        });
        break;
      case kNetworkService_registerUrlLoaderInterceptor_name:
        var params = NetworkServiceRegisterUrlLoaderInterceptorParams.deserialize(
            message.payload);
        _impl.registerUrlLoaderInterceptor(params.factory);
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
    return null;
  }

  NetworkService get impl => _impl;
  set impl(NetworkService d) {
    assert(_impl == null);
    _impl = d;
  }

  String toString() {
    var superString = super.toString();
    return "NetworkServiceStub($superString)";
  }

  int get version => 0;
}


