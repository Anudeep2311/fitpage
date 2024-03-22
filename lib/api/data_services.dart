import 'package:fitpage_app/model/scan_list_model.dart';
import 'package:http/http.dart' as http;

class DataService {
  final String _baseUrl =
      "http://coding-assignment.bombayrunning.com/data.json";

  Future<List<Scan>> fetchScans() async {
    final response = await http.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      return scanFromJson(response.body);
    } else {
      throw Exception("Failed to load scans");
    }
  }
}
