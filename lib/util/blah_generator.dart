import 'dart:math';

class BlahGenerator {
  BlahGenerator._();

  static String generate({
    int maxWordSegments = 3,
    int maxACount = 3,
    int minParagraphs = 2,
    int maxParagraphs = 4,
    int minWordCount = 25,
    int maxWordCount = 100,
    int uppercaseChancePercent = 10,
  }) {
    final random = Random(DateTime.now().millisecondsSinceEpoch);
    StringBuffer buffer = StringBuffer();
    final actualWordCount =
        random.nextInt(maxWordCount - minWordCount + 1) + minWordCount;
    final actualParagraphs =
        random.nextInt(maxParagraphs - minParagraphs + 1) + minParagraphs;
    final paragraphPositions =
        _generateParagraphPositions(random, actualParagraphs, actualWordCount);

    for (int words = 0; words < actualWordCount; words++) {
      int actualWordSegments = random.nextInt(maxWordSegments) + 1;
      for (int segments = 0; segments < actualWordSegments; segments++) {
        buffer.generateWord(random, uppercaseChancePercent, maxACount);
      }

      if (paragraphPositions.contains(words)) {
        buffer.newParagraph();
      } else if (words < actualWordCount - 1) {
        buffer.space();
      }
    }

    buffer.write(".");
    return buffer.toString();
  }

  static List<int> _generateParagraphPositions(
    Random random,
    int paragraphsCount,
    int overallWordCount,
  ) {
    final result = <int>[];
    for (int i = 0; i < paragraphsCount - 1; i++) {
      result.add(random.nextInt(overallWordCount - 2) + 1);
    }
    return result;
  }
}

extension on StringBuffer {
  void generateWord(Random random, int uppercaseChancePercent, int maxACount) {
    final isEmptyOrNewParagraph = isEmpty || toString().endsWith("\n\n");
    final isUppercase = isEmptyOrNewParagraph ||
        (random.nextInt(100) + 1) <= uppercaseChancePercent;
    write("${isUppercase ? 'B' : 'b'}l");

    for (int i = 0; i < random.nextInt(maxACount) + 1; i++) {
      write("a");
    }
    write("h");
  }

  void newParagraph() {
    write(".\n\n");
  }

  void space() {
    write(" ");
  }
}
