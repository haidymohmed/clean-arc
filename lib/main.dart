import 'package:clean_arc/core/app/app.dart';
import 'package:flutter/material.dart';

import 'core/data_source/remote_data_source.dart';

void main() async {
  await ApiClientHelper.init();
  runApp(const MyApp());
}