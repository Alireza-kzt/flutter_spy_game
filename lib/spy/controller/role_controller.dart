import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spy/core/constants/rout_path.dart';
import 'package:spy/spy/controller/spy_controller.dart';

import '../data/repositories/save_random_number_repository.dart';
import '../data/repositories/word_repository.dart';

class RoleController extends GetxController {
  final PageController pageController = PageController();
  WordRepository wordRepository = WordRepository();
  RandomNumberRepository randomNumberRepository = RandomNumberRepository();
  RxBool seen = false.obs;
  late String word;
  late List<int> spies;

  static RoleController get to => Get.find();

  @override
  onInit() {
    spies = generateRandomIntegers(SpyController.to.spies.value, SpyController.to.players.value);
    word = initNewWord();

    super.onInit();
  }

  String initNewWord() {
    final List<String> words = wordRepository.getWords();
    List oldIndexes = randomNumberRepository.getIndexes();

    if(words.length == oldIndexes.length) {
      randomNumberRepository.clearList();
      oldIndexes = <int>[];
    }

    final List<String> nonRepeatedWords = words;

    for (int index in oldIndexes) {
      nonRepeatedWords.removeAt(index);
    }

    int randomInt = Random().nextInt(nonRepeatedWords.length);
    String newWord = nonRepeatedWords[randomInt];
    randomNumberRepository.addIndex(words.indexOf(newWord));

    return newWord;
  }

  List<int> generateRandomIntegers(int count, int max) {
    Set<int> randomSet = {};

    var random = Random();

    for (var i = 0; randomSet.length < count; i++) {
      randomSet.add(random.nextInt(max));
    }

    return randomSet.toList();
  }

  onGrantPressed() {
    seen.value = false;
    pageController.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
  }

  onSeenPressed() => seen.value = true;

  startGame() => Get.offNamed(RoutePath.timer);
}
