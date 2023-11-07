class SpecificException implements Exception {
  final String message;

  SpecificException(this.message);

  @override
  String toString() {
    return message;
  }
}