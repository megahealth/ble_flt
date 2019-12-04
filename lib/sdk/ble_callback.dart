import 'package:ble_flt/sdk/ble_beans.dart';
import 'package:flutter_blue/flutter_blue.dart';

class MegaCallback {
  MegaCallback({
    this.onConnectionStateChange,
    this.onBatteryChangedV2,
    this.onHeartBeatReceived,
    this.onV2Live,
    this.onSetUserInfo,
    this.onIdle,

    this.onTokenReceived,
    this.onKnockDevice,
    this.onOperationStatus,
    this.onEnsureBindWhenTokenNotMatch,
    this.onError,
    
    this.onCrashLogReceived,
    this.onV2ModeReceived,
    this.onDeviceInfoReceived,
  });

  final void Function(BluetoothDeviceState state) onConnectionStateChange;
  final void Function(MegaBattery batt) onBatteryChangedV2;
  final void Function(MegaBleHeartBeat) onHeartBeatReceived;
  final void Function(MegaV2Live live) onV2Live;
  final void Function() onSetUserInfo;
  final void Function() onIdle;

  final void Function(String token) onTokenReceived;
  final void Function() onKnockDevice;
  final void Function(int cmd, int status) onOperationStatus;
  final void Function() onEnsureBindWhenTokenNotMatch;
  final void Function(int errorCode) onError;

  final void Function(List<int> a) onCrashLogReceived;
  final void Function(MegaV2Mode mode) onV2ModeReceived;
  final void Function(MegaDeviceInfo mode) onDeviceInfoReceived;
}
