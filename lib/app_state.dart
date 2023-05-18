import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  final _equtyPageManager = StreamRequestManager<List<EquityRecord>>();
  Stream<List<EquityRecord>> equtyPage({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<EquityRecord>> Function() requestFn,
  }) =>
      _equtyPageManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearEqutyPageCache() => _equtyPageManager.clear();
  void clearEqutyPageCacheKey(String? uniqueKey) =>
      _equtyPageManager.clearRequest(uniqueKey);

  final _optionsPageManager = StreamRequestManager<List<OptionsRecord>>();
  Stream<List<OptionsRecord>> optionsPage({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<OptionsRecord>> Function() requestFn,
  }) =>
      _optionsPageManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearOptionsPageCache() => _optionsPageManager.clear();
  void clearOptionsPageCacheKey(String? uniqueKey) =>
      _optionsPageManager.clearRequest(uniqueKey);

  final _futuresPageManager = StreamRequestManager<List<FuturesRecord>>();
  Stream<List<FuturesRecord>> futuresPage({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<FuturesRecord>> Function() requestFn,
  }) =>
      _futuresPageManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearFuturesPageCache() => _futuresPageManager.clear();
  void clearFuturesPageCacheKey(String? uniqueKey) =>
      _futuresPageManager.clearRequest(uniqueKey);

  final _mCXPageManager = StreamRequestManager<List<McxRecord>>();
  Stream<List<McxRecord>> mCXPage({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<McxRecord>> Function() requestFn,
  }) =>
      _mCXPageManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearMCXPageCache() => _mCXPageManager.clear();
  void clearMCXPageCacheKey(String? uniqueKey) =>
      _mCXPageManager.clearRequest(uniqueKey);
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
