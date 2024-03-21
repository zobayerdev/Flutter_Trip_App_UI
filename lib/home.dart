import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;

  void _onScroll() {}
  int totalPage = 4;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          MakePage(
              page: 1,
              image: 'lib/assets/one.jpg',
              title: 'Forest',
              description:
                  'Mangrove forests are dynamic coastal ecosystems, thriving at the intersection of land and sea. These lush expanses are characterized by salt-tolerant trees and shrubs, whose tangled roots provide critical shelter for a diverse array of marine and terrestrial species. Acting as natural coastal defenders, mangroves protect shorelines from erosion and help mitigate the impacts of climate change by sequestering significant amounts of carbon.'),
          MakePage(
              page: 2,
              image: 'lib/assets/two.jpg',
              title: 'Beach',
              description:
                  'Beaches are serene landscapes where the sea meets the shore, offering stretches of soft sand or pebble-covered coastlines that glisten under the sun embrace. They serve as a natural playground for humans and habitat for marine life, where the rhythmic waves orchestrate a calming melody. Beaches are not just natural wonders but also vital ecosystems that buffer coastal regions from erosion and storms.'),
          MakePage(
              page: 3,
              image: 'lib/assets/three.jpg',
              title: 'Mountain',
              description:
                  'Mountains stand tall and majestic, their rugged peaks piercing the sky, showcasing natures grandeur and resilience. These towering formations provide a haven for diverse flora and fauna, each ecosystem unique to its altitude and climate. Mountains are more than geological features; they are sacred symbols of challenge and inspiration, inviting adventurers to conquer their heights and discover the profound beauty of the world below.'),
          MakePage(
              page: 4,
              image: 'lib/assets/four.jpg',
              title: 'Panther',
              description:
                  'The panther, with its sleek, black coat and piercing green eyes, moves through the shadows with unmatched grace and power. This solitary predator, which is actually a melanistic variant of leopards or jaguars, dominates its territory with stealth and strength, embodying the essence of the wild. Revered and feared, the panthers mysterious allure has made it a symbol of the dark and untamed parts of the natural world.'),
        ],
      ),
    );
  }

  Widget MakePage({image, title, description, page}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.3, 0.9],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(page.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  Text("/" + totalPage.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      )),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: GoogleFonts.spaceGrotesk(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 40,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),
                        Text(
                          '4.0',
                          style: TextStyle(color: Colors.white70),
                        ),
                        Text(
                          '(2300)',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 35),
                      child: Text(
                        description,
                        style: GoogleFonts.spaceGrotesk(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'READ MORE',
                      style: GoogleFonts.spaceGrotesk(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
