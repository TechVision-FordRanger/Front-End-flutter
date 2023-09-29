class DefaultResponseDto<T> {
  bool success;
  String message;
  T? data;

  DefaultResponseDto({required this.success, required this.message, this.data});
}
