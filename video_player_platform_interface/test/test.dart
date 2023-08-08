// Autogenerated from Pigeon (v3.1.6), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis
// ignore_for_file: avoid_relative_lib_imports
// @dart = 2.12
import 'dart:async';
import 'dart:typed_data' show Uint8List, Int32List, Int64List, Float64List;
import 'package:flutter/foundation.dart' show WriteBuffer, ReadBuffer;
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/messages.dart';

class _TestHostVideoPlayerApiCodec extends StandardMessageCodec {
  const _TestHostVideoPlayerApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is BitrateMessage) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else 
    if (value is CreateMessage) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else 
    if (value is DurationMessage) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else 
    if (value is LoopingMessage) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else 
    if (value is MixWithOthersMessage) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    } else 
    if (value is PlaybackSpeedMessage) {
      buffer.putUint8(133);
      writeValue(buffer, value.encode());
    } else 
    if (value is PositionMessage) {
      buffer.putUint8(134);
      writeValue(buffer, value.encode());
    } else 
    if (value is TextureMessage) {
      buffer.putUint8(135);
      writeValue(buffer, value.encode());
    } else 
    if (value is VolumeMessage) {
      buffer.putUint8(136);
      writeValue(buffer, value.encode());
    } else 
{
      super.writeValue(buffer, value);
    }
  }
  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:       
        return BitrateMessage.decode(readValue(buffer)!);
      
      case 129:       
        return CreateMessage.decode(readValue(buffer)!);
      
      case 130:       
        return DurationMessage.decode(readValue(buffer)!);
      
      case 131:       
        return LoopingMessage.decode(readValue(buffer)!);
      
      case 132:       
        return MixWithOthersMessage.decode(readValue(buffer)!);
      
      case 133:       
        return PlaybackSpeedMessage.decode(readValue(buffer)!);
      
      case 134:       
        return PositionMessage.decode(readValue(buffer)!);
      
      case 135:       
        return TextureMessage.decode(readValue(buffer)!);
      
      case 136:       
        return VolumeMessage.decode(readValue(buffer)!);
      
      default:      
        return super.readValueOfType(type, buffer);
      
    }
  }
}
abstract class TestHostVideoPlayerApi {
  static const MessageCodec<Object?> codec = _TestHostVideoPlayerApiCodec();

  void initialize();
  TextureMessage create(CreateMessage msg);
  void dispose(TextureMessage msg);
  void setLooping(LoopingMessage msg);
  void setVolume(VolumeMessage msg);
  void setPlaybackSpeed(PlaybackSpeedMessage msg);
  void setBitrate(BitrateMessage msg);
  void play(TextureMessage msg);
  PositionMessage position(TextureMessage msg);
  DurationMessage duration(TextureMessage msg);
  void seekTo(PositionMessage msg);
  void pause(TextureMessage msg);
  void setMixWithOthers(MixWithOthersMessage msg);
  static void setup(TestHostVideoPlayerApi? api, {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.VideoPlayerApi.initialize', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          // ignore message
          api.initialize();
          return <Object?, Object?>{};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.VideoPlayerApi.create', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.VideoPlayerApi.create was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final CreateMessage? arg_msg = (args[0] as CreateMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.VideoPlayerApi.create was null, expected non-null CreateMessage.');
          final TextureMessage output = api.create(arg_msg!);
          return <Object?, Object?>{'result': output};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.VideoPlayerApi.dispose', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.VideoPlayerApi.dispose was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final TextureMessage? arg_msg = (args[0] as TextureMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.VideoPlayerApi.dispose was null, expected non-null TextureMessage.');
          api.dispose(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.VideoPlayerApi.setLooping', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.VideoPlayerApi.setLooping was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final LoopingMessage? arg_msg = (args[0] as LoopingMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.VideoPlayerApi.setLooping was null, expected non-null LoopingMessage.');
          api.setLooping(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.VideoPlayerApi.setVolume', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.VideoPlayerApi.setVolume was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final VolumeMessage? arg_msg = (args[0] as VolumeMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.VideoPlayerApi.setVolume was null, expected non-null VolumeMessage.');
          api.setVolume(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.VideoPlayerApi.setPlaybackSpeed', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.VideoPlayerApi.setPlaybackSpeed was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PlaybackSpeedMessage? arg_msg = (args[0] as PlaybackSpeedMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.VideoPlayerApi.setPlaybackSpeed was null, expected non-null PlaybackSpeedMessage.');
          api.setPlaybackSpeed(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.VideoPlayerApi.setBitrate', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.VideoPlayerApi.setBitrate was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final BitrateMessage? arg_msg = (args[0] as BitrateMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.VideoPlayerApi.setBitrate was null, expected non-null BitrateMessage.');
          api.setBitrate(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.VideoPlayerApi.play', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.VideoPlayerApi.play was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final TextureMessage? arg_msg = (args[0] as TextureMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.VideoPlayerApi.play was null, expected non-null TextureMessage.');
          api.play(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.VideoPlayerApi.position', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.VideoPlayerApi.position was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final TextureMessage? arg_msg = (args[0] as TextureMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.VideoPlayerApi.position was null, expected non-null TextureMessage.');
          final PositionMessage output = api.position(arg_msg!);
          return <Object?, Object?>{'result': output};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.VideoPlayerApi.duration', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.VideoPlayerApi.duration was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final TextureMessage? arg_msg = (args[0] as TextureMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.VideoPlayerApi.duration was null, expected non-null TextureMessage.');
          final DurationMessage output = api.duration(arg_msg!);
          return <Object?, Object?>{'result': output};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.VideoPlayerApi.seekTo', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.VideoPlayerApi.seekTo was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PositionMessage? arg_msg = (args[0] as PositionMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.VideoPlayerApi.seekTo was null, expected non-null PositionMessage.');
          api.seekTo(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.VideoPlayerApi.pause', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.VideoPlayerApi.pause was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final TextureMessage? arg_msg = (args[0] as TextureMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.VideoPlayerApi.pause was null, expected non-null TextureMessage.');
          api.pause(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.VideoPlayerApi.setMixWithOthers', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.VideoPlayerApi.setMixWithOthers was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final MixWithOthersMessage? arg_msg = (args[0] as MixWithOthersMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.VideoPlayerApi.setMixWithOthers was null, expected non-null MixWithOthersMessage.');
          api.setMixWithOthers(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
  }
}
