abstract class IBaseModel<T> {
  T fromJson(Map<String, dynamic> json);
  List<T> fromJsonList(List<dynamic> jsonList);
}
