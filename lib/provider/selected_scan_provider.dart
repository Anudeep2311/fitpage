import 'package:fitpage_app/api/data_services.dart';
import 'package:fitpage_app/model/scan_list_model.dart';
import 'package:flutter/material.dart';

class ScanProvider with ChangeNotifier {
  final _dataService = DataService();
  List<Scan> _scans = [];

  List<Scan> get scans => _scans;

  Future<void> loadScans() async {
    _scans = await _dataService.fetchScans();
    notifyListeners();
  }
}
