import 'package:elwekala/core/api/end_points.dart';

class ApiInterpreter {
  static void checkResponseStatus(Map<String, dynamic> data) {
    if (data[ApiKeys.status] != ApiKeys.success) {
      throw Exception(data[ApiKeys.message] ?? 'Unexpected error');
    }
  }
}
