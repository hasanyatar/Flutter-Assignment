import 'i_base_model.dart';

class BaseModel<T> implements IBaseModel<T> {
  @override
  List<T> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((e) => fromJson(e)).toList();
  }

  @override
  T fromJson(Map<String, dynamic> json) {
    throw UnimplementedError();
  }
}
