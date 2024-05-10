import 'package:dictionary/domain/model_specific/dictionary_response.dart';

abstract class NetworkRepository {
  Future<List<DictionaryResponse>> getDescList();
}
