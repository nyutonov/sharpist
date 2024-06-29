import 'dart:math';

class Utils {
  static const text1 = "near the borders of a large forest dwelt in olden times a poor wood-cutter, who had two children-a boy named hansel, and his sister, gretel. they had very little to live upon, and once when there was a dreadful season of scarcity in the land, the poor wood-cutter could not earn sufficient to supply their daily food.";
  static const text2 = "once upon a time in the middle of winter, when the flakes of snow were falling like feathers from the clouds, a queen sat at her palace window, which had an ebony black frame, stitching her husband's shirts. while she was thus engaged and looking out at the snow she pricked her finger, and three drops of blood fell upon the snow.";
  static const text3 = "who lived village near the forest. whenever she went out, the little girl wore a red riding cloak, so everyone in the village called her little red riding hood one morning, little red riding hood asked her mother if she could go to visit her grandmother it had been awhile since they'd seen each other, that's a good idea. her mother said. so they packed mice basket for little red roding hood to take to her grandmother";

  static final _texts = [
    text1,
    text2,
    text3
  ];

  static int getRandomNumber() {
    var random = Random();

    return random.nextInt(3);
  }

  static String getTextByIndex(int index) {
    return _texts[index];
  }
}