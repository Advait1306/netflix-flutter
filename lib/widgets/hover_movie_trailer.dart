import 'package:flutter/material.dart';

class HoverMovieTrailer extends StatelessWidget {
  const HoverMovieTrailer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textTheme = TextStyle(color: Colors.white);

    return SizedBox(
      width: 400,
      height: 400,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFF242424)),
        child: Column(
          children: [
            Image.asset("assets/backgrounds/background1.jpg"),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      RoundIconButton(icon: Icons.play_arrow_outlined),
                      SizedBox(width: 5),
                      RoundIconButton(icon: Icons.add_outlined),
                      SizedBox(width: 5),
                      RoundIconButton(icon: Icons.thumb_up_alt_outlined),
                      SizedBox(width: 5),
                    ],
                  ),
                  Row(
                    children: const [
                      RoundIconButton(icon: Icons.keyboard_arrow_down_outlined),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  const Text(
                    "98% Match",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1)
                    ),
                    child: const Text(
                      "18+",
                      style: textTheme,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    "4 Seasons",
                    style: textTheme,
                  ),
                  const SizedBox(width: 5),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1)
                    ),
                    child: const Text(
                      "HD",
                      style: textTheme,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Captivating",
                    style: textTheme,
                  ),
                  const SizedBox(width: 5),
                  Container(
                    width: 5,
                    height: 5,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white54
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    "Exciting",
                    style: textTheme,
                  ),
                  const SizedBox(width: 5),
                  Container(
                    width: 5,
                    height: 5,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white54
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    "Docuseries",
                    style: textTheme,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  const RoundIconButton({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent,
          border: Border.all(width: 2, color: Colors.white)),
      margin: const EdgeInsets.all(1),
      child: IconButton(
        onPressed: () {},
        icon: Icon(icon),
        color: Colors.white,
      ),
    );
  }
}
