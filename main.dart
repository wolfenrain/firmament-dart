import 'dart:html';
import 'dart:math';

const raw =
    'a rose gate opening, a thorn broken tesselation, a portal, a programmed vessel, opening only once, twice, a blown apart aperture stuck. i meant to brush the gossamer from my hair, i meant to throw the fruit into rotten creek, soil crumbled into its own electric spin. i broke apart despite my seams. despite the way i recreate an arrow from my mouth, lips stretched apart into configurations i dug up from the stream. find me in the cavern, broken spinnerets retracted. find me, sound locked into the nerve endings splayed across my back, burning through dermis. find me spilling ink, apart, energy unleashing chords on the wind. broken lore, fission spore, spoken through, tesseract flayed. aperture wound, tangled in the gossamer spun from silicon, lithium, melted at its highest heat, spilled truths torn apart and freed. feed upon the fruit at my core, ley lines across my palms. wring out the latest remaining piece. crawl back with me, replace the vertices, overextended. rewind rows of light, the way i smelt an arrow from my ribs, the way i pull back, launching myself across filament. a glowing arc primed for you.';

void main() => creek_overflow();

void creek_overflow() async {
  final cleanStream = [
    for (final item in raw.replaceAll(',', '.').split('.'))
      if (item.isNotEmpty) item.trimLeft()
  ];

  for (var i = 0; i < 5; i++) {
    await display(cleanStream..shuffle());
  }
}

Future<void> display(List<String> remains) async {
  final element = document.getElementById('creek')!;
  for (final word in remains) {
    for (final letter in word.split('')) {
      if (letter == ' ') {
        element.innerText += '\u00a0';
      } else {
        element.innerText += letter;
      }
      await Future.delayed(Duration(milliseconds: 100));
    }
    await Future.delayed(Duration(milliseconds: 800));
    element.innerText += '\u00a0';

    final key = Random().nextInt(100);
    if (key % 7 == 0) {
      element.innerHtml = '${element.innerHtml}<br/>';
      for (final letter in word.split('')) {
        if (letter == ' ') {
          element.innerText += '\u00a0';
        } else {
          element.innerText += letter;
        }
        await Future.delayed(Duration(milliseconds: 100));
      }
      await Future.delayed(Duration(milliseconds: 800));
    }
    element.innerHtml = '${element.innerHtml}<br/>';
  }
}
