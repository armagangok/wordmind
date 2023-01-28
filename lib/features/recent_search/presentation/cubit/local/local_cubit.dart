// // ignore_for_file: prefer_final_fields

// import '../../../../../global/export/export.dart';

// part 'local_state.dart';

// class LocalCubit extends Cubit<LocalState> implements WordCubitContract {
//   LocalCubit() : super(LocalInitial());

//   late final _localUsecase = getIt.call<LocalWordUsecase>();

//   @override
//   late List<WordEntity> adjective = [];
//   @override
//   List<WordEntity> adverb = [];
//   @override
//   List<WordEntity> articles = [];
//   @override
//   List<WordEntity> interjection = [];
//   @override
//   List<WordEntity> noun = [];
//   @override
//   List<WordEntity> preposition = [];
//   @override
//   List<WordEntity> pronoun = [];
//   @override
//   List<WordEntity> verb = [];

//   List<WordModel> _wordList = [];

//   List<WordModel> get wordList => _wordList;

//   final Box<String> _hiveWords = HiveBoxes.wordBox;

//   Box<String> get getHiveBox => _hiveWords;

//   // Future<void> addData(WordModel word) async => await _hiveWords.add(word);

//   // List<WordModel> getAll() {
//   //   _wordList.clear();

//   //   for (WordModel word in _hiveWords.values) {
//   //     _wordList.add(word);
//   //   }
//   //   return _wordList;
//   // }

//   Future<void> deleteData(index) async => await _hiveWords.deleteAt(index);

//   WordModel getData(int index) => _hiveWords.getAt(index) as WordModel;

//   Future<String> getLanguage() async {
//     final Box box = Hive.box("countryBox");
//     final String index = await box.getAt(0);
//     return index;
//   }

//   Future<void> saveLanguage(String lang) async {
//     await Hive.box("countryBox").clear();
//     await Hive.box("countryBox").add(lang);
//   }

//   Future<void> deleteByName(WordModel wordModel) async {
//     // final Map<dynamic, WordModel> deliveriesMap = _hiveWords.toMap();
//     // dynamic desiredKey;
//     // deliveriesMap.forEach((key, wordModel) {
//     //   if (wordModel.isSelected) {
//     //     desiredKey = key;
//     //   }
//     // });
//     await _hiveWords.delete(wordModel.word);
//   }

//   Future<void> updateWord(int index, WordModel wordModel) async =>
//       await _localUsecase.updateWord(
//         index: index,
//         wordModel: wordModel,
//       );

//   Future<void> deleteAllWords() async => await _hiveWords.clear();

//   Future<void> fetchWord({required String word}) async {
//     clearAllList();
//     emit(LocalingState());
//     var response = await _localUsecase.fetchWord(word: word);

//     response.fold(
//       (Failure failure) {
//         emit(
//           LocalFailed(
//             errorMessage: LocalFailedState.errorMessage,
//             errorTitle: LocalFailedState.errorTitle,
//           ),
//         );
//       },
//       (WordModel data) {
//         if (data.meanings != null) {
//           for (Meaning element in data.meanings!) {
//             switch (element.partOfSpeech) {
//               case "noun":
//                 for (var element in element.definitions!) {
//                   noun.add(element);
//                 }
//                 break;

//               case "verb":
//                 for (var element in element.definitions!) {
//                   verb.add(element);
//                 }
//                 break;

//               case "interjection":
//                 for (var element in element.definitions!) {
//                   interjection.add(element);
//                 }
//                 break;

//               case "pronoun":
//                 for (var element in element.definitions!) {
//                   pronoun.add(element);
//                 }
//                 break;

//               case "articles":
//                 for (var element in element.definitions!) {
//                   articles.add(element);
//                 }
//                 break;

//               case "adverb":
//                 for (var element in element.definitions!) {
//                   adverb.add(element);
//                 }
//                 break;

//               case "preposition":
//                 for (var element in element.definitions!) {
//                   preposition.add(element);
//                 }
//                 break;

//               case "adjective":
//                 for (var element in element.definitions!) {
//                   adjective.add(element);
//                 }
//                 break;

//               default:
//             }
//           }
//         }

//         emit(LocalSucceded(wordModel: data));
//       },
//     );
//   }

//   void clearAllList() {
//     noun.clear();
//     verb.clear();
//     interjection.clear();
//     pronoun.clear();
//     articles.clear();
//     adverb.clear();
//     preposition.clear();
//     adjective.clear();
//   }
// }