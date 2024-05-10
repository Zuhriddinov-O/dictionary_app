import '../../data/model/model.dart';

class DictionaryResponse {
  Meta? meta;
  String? fl;
  List<Def>? def;
  List<String>? shortdef;

  DictionaryResponse({
    required this.meta,
    required this.fl,
    required this.def,
    required this.shortdef,
  });
}
