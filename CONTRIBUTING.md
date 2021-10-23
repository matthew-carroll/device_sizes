# CONTRIBUTING
Please follow the processes in this document to file issues and contribute work.

## File Bugs
When you file a bug, please include *at least* the following details:

 * description of the problem
 * the version of the package that you're using
 * output from `flutter doctor` or your current Dart version
 * minimum code needed to reproduce the issue

## File Feature Requests
When you file a feature request, please explain *why* you need the given feature.

The purpose of this package is extremely narrow. There is no guarantee that new capabilities will be added.

## Submit a Pull Request
Every PR must have an associated issue. Please make sure to file an issue before working on a bug or feature.

Please name your branch like `xxxx_summary-of-work`, where `xxxx` is the issue ticket number that you're working on.

Please end your commit message with ` (Resolves #xxxx)`, where `xxxx` is the issue ticket number that you're working on. This practice causes the ticket to be closed upon merge.

If you're adding new device sizes, please include a link in your PR to a webpage that verifies the screen details that you're adding.

If you're working on a new feature, you should wait for initial feedback on your issue ticket to ensure that this package will accept that feature.

All behavioral changes must include effective tests.