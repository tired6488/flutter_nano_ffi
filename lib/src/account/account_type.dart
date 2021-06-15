/// Regex and prefix holder for account types.
class NanoAccountType {
  static const int NANO = 1;
  static const int BANANO = 2;
  static const int TROLLAR = 3;
  static const String NANO_REGEX =
      r"(xrb|nano)(_)(1|3)[13456789abcdefghijkmnopqrstuwxyz]{59}";
  static const String BANANO_REGEX =
      r"(ban)(_)(1|3)[13456789abcdefghijkmnopqrstuwxyz]{59}";
  static const String TROLLAR_REGEX =
      r"(troll)(_)(1|3)[13456789abcdefghijkmnopqrstuwxyz]{59}";

  static String getPrefix(int type) {
    switch (type) {
      case NANO:
        return "nano_";
      case BANANO:
        return "ban_";
      case TROLLAR:
        return "troll_";
      default:
        return "nano_";
    }
  }

  static String getRegex(int type) {
    switch (type) {
      case NANO:
        return NANO_REGEX;
      case BANANO:
        return BANANO_REGEX;
      default:
        return NANO_REGEX;
    }
  }
}
