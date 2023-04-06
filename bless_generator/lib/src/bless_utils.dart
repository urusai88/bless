class BlessUtils {
  const BlessUtils._();

  static String toUpper(String source, [int count = 1]) =>
      source.substring(0, count).toUpperCase() + source.substring(count);

  static String toLower(String source, [int count = 1]) =>
      source.substring(0, count).toLowerCase() + source.substring(count);
}
