
// ignore_for_file: constant_identifier_names

class ResponseMessage {
  // Dio
  static const String SUCCESS ="تمت العمليه بنجاح";
  static const String NO_CONTENT = "لا يوجد محتوي. حاول مرة أخرى لاحقًا";
  static const String BAD_REQUEST = "طلب غير صالح. حاول مرة أخرى لاحقًا";
  static const String UNAUTHORIZED =  "مستخدم غير مصرح له. حاول مرة أخرى لاحقًا";
  static const String FORBIDDEN =  "يتعذر الوصول ألي الخادم. حاول مرة أخرى لاحقًا";
  static const String INTERNAL_SERVER_ERROR = "خطأ داخلي في الخادم. حاول مرة أخرى لاحقًا";
  static const String NOT_FOUND =  "url غير موجود , حاول مرة أخرى لاحقًا";

  // local status code
  static const String CONNECT_TIMEOUT = "انتهت المهلة , حاول مرة أخرى متأخرًا";
  static const String CANCEL = "حدث خطأ ما , حاول مرة أخرى لاحقًا";
  static const String RECEIVE_TIMEOUT = "انتهت المهلة , حاول مرة أخرى متأخرًا";
  static const String SEND_TIMEOUT = "انتهت المهلة , حاول مرة أخرى متأخرًا";
  static const String CACHE_ERROR = "خطأ في ذاكرة التخزين المؤقت , حاول مرة أخرى لاحقًا";
  static const String NO_INTERNET_CONNECTION = " يُرجى التحقق من اتصالك بالإنترنت";
  static const String DEFAULT = "حدث خطأ ما , حاول مرة أخرى لاحقًا";

}