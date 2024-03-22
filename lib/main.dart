import 'package:fitpage_app/provider/selected_scan_provider.dart';
import 'package:fitpage_app/ui/scan_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ScanProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ScanList(),
      ),
    );
  }
}
