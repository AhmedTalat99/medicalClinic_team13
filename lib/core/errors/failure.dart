abstract class Failure {
  final String message;
  const Failure(this.message);
  @override
  List<Object?> get props => [message];
}
