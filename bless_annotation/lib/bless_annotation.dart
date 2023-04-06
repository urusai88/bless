// ignore: depend_on_referenced_packages
import 'package:meta/meta_meta.dart';

@Target({TargetKind.classType, TargetKind.enumType})
class BlessIt {
  const BlessIt({
    this.asIs = true,
    this.map = true,
    this.copyWith = true,
    this.json = true,
  });

  const BlessIt.only({
    this.asIs = false,
    this.map = false,
    this.copyWith = false,
    this.json = false,
  });

  final bool asIs;
  final bool map;
  final bool copyWith;
  final bool json;
}
