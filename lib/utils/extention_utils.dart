extension StringExtension on String {
  String camelcase() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}
