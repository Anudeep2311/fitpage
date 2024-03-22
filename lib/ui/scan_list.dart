import 'package:fitpage_app/provider/selected_scan_provider.dart';
import 'package:fitpage_app/utils/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScanList extends StatefulWidget {
  const ScanList({super.key});

  @override
  ScanListState createState() => ScanListState();
}

class ScanListState extends State<ScanList> {
  // final _preferencesService = PreferencesService();

  @override
  void initState() {
    super.initState();
    Provider.of<ScanProvider>(context, listen: false).loadScans();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ScanProvider>(
      builder: (context, scanProvider, child) {
        return Scaffold(
          appBar: AppBar(title: const Text('Stock Scans')),
          body: scanProvider.scans.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: scanProvider.scans.length,
                  itemBuilder: (context, index) {
                    final scan = scanProvider.scans[index];
                    return ListTile(
                      title: Text(scan.name ?? ''),
                      subtitle: Container(),
                    );
                  },
                ),
        );
      },
    );
  }
}
