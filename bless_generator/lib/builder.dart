library bless_generator;

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/bless_generator.dart';

Builder bless(BuilderOptions options) {
  return SharedPartBuilder([BlessGenerator(options)], 'bless');
}
