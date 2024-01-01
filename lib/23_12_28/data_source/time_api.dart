import 'dart:convert';

import 'package:flutter_chobo_class/23_12_28/model/time.dart';
import 'package:http/http.dart' as http;

class TimeApi {
  Future<Time> getTime() async {
    final response = await http.get(Uri.parse('uri'));
    return Time.fromJson(jsonDecode(response.body));
  }
}

