import 'dart:io';

import 'package:yaml/yaml.dart';

void main() {
  final Directory currentDir = Directory.current;
  final pubspecFile = File('${currentDir.path}/pubspec.yaml');
  if (!pubspecFile.existsSync()) {
    print('Error: pubspec.yaml not found in the current directory.');
    exit(1);
  }
  final webIndexFile = File('${currentDir.path}/web/index.html');
  if (!webIndexFile.existsSync()) {
    print('Error: web/index.html not found in the current directory.');
    exit(1);
  }
  final version = loadYaml(pubspecFile.readAsStringSync())['version'] as String;
  webIndexFile.writeAsStringSync(webIndexFile.readAsStringSync().replaceFirst(
      RegExp(r'flutter_bootstrap\.js\?v=\d+\.\d+\.\d+'),
      'flutter_bootstrap.js?v=$version'));
  print('Updated version to $version in ${webIndexFile.path}');
}
