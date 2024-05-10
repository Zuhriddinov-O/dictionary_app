import 'package:dictionary/core/constants/constants.dart';
import 'package:dictionary/data/network/api_service.dart';
import 'package:dictionary/data/repository/repository.dart';
import 'package:dictionary/domain/model_specific/dictionary_response.dart';

class NetworkRepositoryImpl extends NetworkRepository {
  final _service = ApiService(buildDioClient(Constants.baseUrl));

  @override
  Future<List<DictionaryResponse>> getDescList() async {
    try {
      final response = await _service.getWordData("word", Constants.apiKey);
      final List<DictionaryResponse> defList = response.
    } catch (e) {
      print("@@@ $e");
    }
  }
}
