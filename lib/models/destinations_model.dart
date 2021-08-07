class PopularDestinationModel {
  String name;
  String island;
  String image;

  PopularDestinationModel(this.name, this.island, this.image);
}

List<PopularDestinationModel> popDestinations = popDestinationsList
    .map((item) =>
        PopularDestinationModel(item['name'], item['island'], item['image']))
    .toList();

var popDestinationsList = [
  {
    "name": "Coral Beach Maldives",
    "island": "Adh. Hagnameedhoo",
    "image": "assets/images/beach-view.jpeg"
  },
  {
    "name": "Anantara",
    "island": "Adh. Anatara",
    "image": "assets/images/beach-weds.jpeg"
  },
  {
    "name": "Veligandu Maldives",
    "island": "AA. Rasdhoo",
    "image": "assets/images/beach.jpeg"
  },
  {
    "name": "Palm Beach Resort",
    "island": "Ga. Dhevvadhoo",
    "image": "assets/images/beach.jpg"
  },
  {
    "name": "Niyaam Beach",
    "island": "N. Hithaadhoo",
    "image": "assets/images/sunset.jpeg"
  },
];
