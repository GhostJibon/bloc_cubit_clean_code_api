enum ErrorType {
  serverFailure,
  noInternetFailure,
  cacheFailure,
  unauthorizedFailure,
  notFoundFailure,
  conflictFailure,
  socketException,
  deadlineExceededFailure,
  dadCertificateFailure,
  invalidFormatFailure,
  connectionFailure,
  unknownFailure,
  invalidInputFailure,
  cancelFailure,
  modelBindingError,
  badCertificateFailure,
  internalServerFailure,
  badRequestFailure
}

class Failure {
  final String message;
  final ErrorType type;

  Failure({required this.message, this.type = ErrorType.badCertificateFailure});
}

class ServerFailure extends Failure {
  ServerFailure({
    super.message = 'Server Failure',
    super.type = ErrorType.serverFailure,
  });
}

class CacheFailure extends Failure {
  CacheFailure({
    super.message = 'Cache Failure',
    super.type = ErrorType.cacheFailure,
  });
}

class NoInternetFailure extends Failure {
  NoInternetFailure({
    super.message = 'No Internet Connection',
    super.type = ErrorType.noInternetFailure,
  });
}

class UnauthorizedFailure extends Failure {
  UnauthorizedFailure({
    super.message = 'Unauthorized',
    super.type = ErrorType.unauthorizedFailure,
  });
}

class NotFoundFailure extends Failure {
  NotFoundFailure({
    super.message = 'Not Found',
    super.type = ErrorType.notFoundFailure,
  });
}

class ConflictFailure extends Failure {
  ConflictFailure({
    super.message = 'Not Found',
    super.type = ErrorType.conflictFailure,
  });
}

class DeadlineExceededFailure extends Failure {
  DeadlineExceededFailure({
    super.message = 'Deadline Exceeded',
    super.type = ErrorType.deadlineExceededFailure,
  });
}

class BadCertificateFailure extends Failure {
  BadCertificateFailure({
    super.message = 'Bad Certificate',
    super.type = ErrorType.badCertificateFailure,
  });
}

class InternalServerFailure extends Failure {
  InternalServerFailure({
    super.message = 'Bad Certificate',
    super.type = ErrorType.internalServerFailure,
  });
}

class BadRequestFailure extends Failure {
  BadRequestFailure({
    super.message = 'Bad Certificate',
    super.type = ErrorType.badCertificateFailure,
  });
}

class ConnectionFailure extends Failure {
  ConnectionFailure({
    super.message = 'Connection Error',
    super.type = ErrorType.connectionFailure,
  });
}

class CancelFailure extends Failure {
  CancelFailure({
    super.message = 'Cancel',
    super.type = ErrorType.cancelFailure,
  });
}

class UnknownFailure extends Failure {
  UnknownFailure({
    super.message = 'Unknown',
    super.type = ErrorType.unknownFailure,
  });
}

class ModelBindingError extends Failure {
  ModelBindingError({
    super.message = 'Model Binding Error',
    super.type = ErrorType.modelBindingError,
  });
}

class InvalidInputFailure extends Failure {
  InvalidInputFailure({
    super.message = 'Invalid Input',
    super.type = ErrorType.invalidInputFailure,
  });
}

class InvalidFormatFailure extends Failure {
  InvalidFormatFailure({
    super.message = 'Invalid Format',
    super.type = ErrorType.invalidFormatFailure,
  });
}
