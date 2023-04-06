import 'package:bless_generator/src/bless_declaration.dart';

abstract class BlessBaseGenerator {
  const BlessBaseGenerator();

  String? generate(BlessDeclaration bless);
}
