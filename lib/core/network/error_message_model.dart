import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final int statusCode;
  final String statusMessage;
  final bool success;
  const ErrorMessageModel({
    required this.statusCode,
    required this.statusMessage,
    required this.success,
  });
  factory ErrorMessageModel.fromjson(Map<String, dynamic> json) {
    return ErrorMessageModel(
        statusCode: json["status_code"],
        statusMessage: json["status_message"],
        success: json["success"]);
  }
  @override
  List<Object?> get props => throw [];
}
