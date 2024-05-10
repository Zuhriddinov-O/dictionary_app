import 'package:dictionary/data/model/model.dart';
import 'package:dictionary/domain/model_specific/dictionary_response.dart';

extension Map on Dictionary {
  DictionaryResponse toDef() {
    return DictionaryResponse(fl: fl, def: def, shortdef: shortdef, meta: meta);
  }
}
