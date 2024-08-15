const readmeContent = '''
# version_updater

**version_updater** is a simple Dart command-line tool that updates the version number in a Flutter web project's \`web/index.html\` file based on the version specified in the \`pubspec.yaml\`.

## Features

- Automatically reads the current version from \`pubspec.yaml\`.
- Updates the \`flutter_bootstrap.js?v=<version>\` query parameter in \`web/index.html\`.
- Easy to integrate and run within any Flutter project.

## Installation

To use this tool, first install it globally:

\`\`\`bash
dart pub global activate version_updater
\`\`\`

## Usage

Once installed, navigate to the root directory of your Flutter project and run:

\`\`\`bash
dart update_version
\`\`\`

This command will:

1. Locate the \`pubspec.yaml\` file in the current directory.
2. Extract the version number.
3. Update the \`web/index.html\` file, replacing the version in the \`flutter_bootstrap.js?v=<version>\` parameter.

## Requirements

- Dart SDK \`>=3.5.0 <4.0.0\`
- The project should be a Flutter web project with a \`pubspec.yaml\` file and a \`web/index.html\` file.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Issues

If you encounter any problems or have suggestions for improvements, please file an issue on the [issue tracker](https://github.com/xM1haix/version_updater/issues).
''';
