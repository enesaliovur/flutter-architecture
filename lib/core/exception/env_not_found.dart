class EnvNotFound implements Exception {
   final String? value;
  EnvNotFound({
    required this.value,
  });

  @override
  String toString() {
    // TODO: implement toString
    return 'This $value doesnt found in env file';
  }
   
 }
