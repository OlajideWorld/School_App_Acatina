import 'package:acatina_app/utils/size.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselImage extends StatefulWidget {
  const CarouselImage({super.key});

  @override
  State<CarouselImage> createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  final images = ["assets/imageCountry.png", "assets/imageCountry2.png"];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          viewportFraction: 1,
          height: heightSize(239),
          autoPlay: true,
          // to stop at the first and last image, remove infinity scroll
          //enableInfiniteScroll: false,

          // to scroll over the image without always staying on one
          //pageSnapping: false,

          // enlarge the current Page
          enlargeCenterPage: true,

          // enlarge the current page by height
          enlargeStrategy: CenterPageEnlargeStrategy.height),
      items: images.map((image) {
        return Builder(
            builder: (BuildContext context) => Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: heightSize(239),
                ));
      }).toList(),
    );
  }
}

class CarouselAutoImage extends StatefulWidget {
  const CarouselAutoImage({super.key});

  @override
  State<CarouselAutoImage> createState() => _CarouselAutoImageState();
}

class _CarouselAutoImageState extends State<CarouselAutoImage> {
  final images = ["assets/imageCountry.png", "assets/imageCountry2.png"];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: images.length,
        itemBuilder: (context, index, realindex) {
          final urlImage = images[index];
          return buildImage(urlImage, index);
        },
        options: CarouselOptions(
            autoPlay: true, viewportFraction: 1, height: heightSize(239)));
  }

  Widget buildImage(String image, int index) {
    return SizedBox(
      width: double.infinity,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
