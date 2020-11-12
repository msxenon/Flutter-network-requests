 abstract class Result<T> {
  factory Result.success(T data) = SuccessState<T>;
  factory Result.error(String e) = ErrorState;
  factory Result.loading() = LoadingState;
 }

class SuccessState<T> implements Result<T> {
  final T data;
  const SuccessState(this.data);
}

class ErrorState<T> implements Result<T> {
  final String errorMessage;
  const ErrorState(this.errorMessage);
}

 class LoadingState<T> implements Result<T> {
    const LoadingState();
 }
