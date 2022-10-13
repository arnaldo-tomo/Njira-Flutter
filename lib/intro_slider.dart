import 'package:flutter/material.dart';
import 'package:flutter_intro_slider_example/home.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class IntroSliderPage extends StatefulWidget {
  @override
  _IntroSliderPageState createState() => _IntroSliderPageState();
}

class _IntroSliderPageState extends State<IntroSliderPage> {
  List<Slide> slides = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides.add(
      new Slide(
        title: "Njira",
        description: " ",
        pathImage: "assets/images/hamburger.png",
      ),
    );
    slides.add(
      new Slide(
        title: "Conecte-se",
        description:
            "E teras todos os transportes a sua disposicao em sua rota!",
        pathImage: "assets/images/movie.png",
      ),
    );
    slides.add(
      new Slide(
        title: "Reserve",
        description: "Nao teras que ficar nas paragens por muito tempo!",
        pathImage: "assets/images/discount.png",
      ),
    );
    slides.add(
      new Slide(
        title: "Pague",
        description: "faça o pagemento da viagem de forma segura e moderna!",
        pathImage: "assets/images/travel.png",
      ),
    );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = new List();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            margin: EdgeInsets.only(bottom: 160, top: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      //shape: BoxShape.circle,
                      //color: Colors.white,
                      ),
                  child: Image.asset(
                    currentSlide.pathImage,
                    matchTextDirection: true,
                    height: 250,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    currentSlide.title,
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Text(
                    currentSlide.description,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      height: 1.5,
                    ),
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                  margin: EdgeInsets.only(
                    top: 1,
                    left: 20,
                    right: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      backgroundColorAllSlides: Color.fromARGB(255, 24, 25, 32),
      renderSkipBtn: Text("Saltar"),
      renderNextBtn: Text(
        "Proximo",
        style: TextStyle(color: Color.fromARGB(255, 24, 25, 32)),
      ),
      renderDoneBtn: Text(
        "Iniciar",
        style: TextStyle(color: Color.fromARGB(255, 24, 25, 32)),
      ),
      colorDoneBtn: Colors.white,
      colorActiveDot: Colors.white,
      sizeDot: 9.0,
      typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,
      listCustomTabs: this.renderListCustomTabs(),
      scrollPhysics: BouncingScrollPhysics(),
      shouldHideStatusBar: false,
      onDonePress: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => HomePage(),
        ),
      ),
    );
  }
}
