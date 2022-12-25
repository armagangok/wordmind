import 'package:english_accent_dictionary/data/entity/word_entity.dart';

import '../../../../global/export/export.dart';

abstract class BaseWordController {
  List<WordEntity> noun = [];
  List<WordEntity> verb = [];
  List<WordEntity> interjection = [];
  List<WordEntity> pronoun = [];
  List<WordEntity> articles = [];
  List<WordEntity> adverb = [];
  List<WordEntity> preposition = [];
  List<WordEntity> adjective = [];
}