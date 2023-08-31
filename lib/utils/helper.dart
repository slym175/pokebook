class AppHelper {
  String toOrdinalNumber(int id) {
    return "Nº${id.toString().padLeft(3, '0')}";
  }

  String capitalize(String str) {
    return "${str.substring(0, 1).toUpperCase()}${str.substring(1).toLowerCase()}";
  }
}
