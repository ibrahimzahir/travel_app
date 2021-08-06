class CarouselModel {
  String image;

  CarouselModel(this.image);
}

List<CarouselModel> carouseldta =
    carouselsCard.map((item) => CarouselModel(item['image'])).toList();

var carouselsCard = [
  {'image': 'assets/images/beach-weds.jpeg'},
  {'image': 'assets/images/sea-view.jpeg'},
  {'image': 'assets/images/hilton.png'},
];
