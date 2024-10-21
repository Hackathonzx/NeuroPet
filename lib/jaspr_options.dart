// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:neuropetweb/components/header.dart' as prefix0;
import 'package:neuropetweb/pages/about.dart' as prefix1;
import 'package:neuropetweb/app.dart' as prefix2;

/// Default [JasprOptions] for use with your jaspr project.
///
/// Use this to initialize jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'jaspr_options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultJasprOptions,
///   );
///
///   runApp(...);
/// }
/// ```
final defaultJasprOptions = JasprOptions(
  clients: {
    prefix1.About: ClientTarget<prefix1.About>('pages/about'),
  },
  styles: () => [
    ...prefix0.Header.styles,
    ...prefix1.About.styles,
    ...prefix2.App.styles,
  ],
);
