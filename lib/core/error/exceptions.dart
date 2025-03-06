class Customexception implements Exception {
  final String message;

  const Customexception({required this.message});
  @override
  toString() {
    return message;
  }
}
