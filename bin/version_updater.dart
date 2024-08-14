import 'dart:io';

import 'package:yaml/yaml.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Please provide the path to your HTML file.');
    exit(1);
  }

  final htmlFilePath = arguments[0];

  // Read pubspec.yaml
  final pubspec = File('pubspec.yaml');
  final content = pubspec.readAsStringSync();
  final doc = loadYaml(content);

  // Extract version
  final version = doc['version'] as String;

  // Read HTML file
  final htmlFile = File(htmlFilePath);
  var htmlContent = htmlFile.readAsStringSync();

  // Replace the version in the script tag
  final updatedHtmlContent = htmlContent.replaceFirst(
      RegExp(r'flutter_bootstrap\.js\?v=\d+\.\d+\.\d+'),
      'flutter_bootstrap.js?v=$version');

  // Write the updated content back to the HTML file
  htmlFile.writeAsStringSync(updatedHtmlContent);

  print('Updated version to $version in $htmlFilePath');
}
