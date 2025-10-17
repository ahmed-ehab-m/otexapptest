class Failure {
  final String message;
  Failure({required this.message});
}

class LocalDataFailure extends Failure {
  LocalDataFailure({required super.message});
}
