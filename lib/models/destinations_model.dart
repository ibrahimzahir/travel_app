class PopularDestinationModel {
  String name;
  String island;
  String image;

  PopularDestinationModel(String name, String island, String image);

  List<PopularDestinationModel> popDestinations = popDestinationsList
      .map(
        (item) => PopularDestinationModel(
          item['name'],
          item['island'],
          item['image'],
        ),
      )
      .toList();
}

var popDestinationsList = [
  {
    "name": "Coral Beach Maldives",
    "island": "Adh.Hagnameedhoo",
    "image": "assets/images/beach-view.jpeg"
  },
  {
    "name": "Anantara",
    "island": "Adh.Anatara",
    "image": "assets/images/beach-weds.jpeg"
  },
  {
    "name": "Veligandu Beach Maldives",
    "island": "AA.Rasdhoo",
    "image": "assets/images/beach.jpeg"
  },
  {
    "name": "Palm Tree Beach Maldives",
    "island": "Ga.Dhevvadhoo",
    "image": "assets/images/beach.jpg"
  },
  {
    "name": "Sun set Beach",
    "island": "B.Hithaadhoo",
    "image": "assets/images/sunset.jpeg"
  },
];
