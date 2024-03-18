class PlaceInfo {
  final String location, image, name, desc;
  final int distance, days;

  PlaceInfo({
    required this.location,
    required this.image,
    required this.name,
    required this.desc,
    required this.distance,
    required this.days,
  });
}

List places = [
  PlaceInfo(
      location: "Japan",
      image: "lib/assets/images/Kyoto-Japan.jpeg",
      name: "Kyoto",
      desc:
          "Kyoto, located in the Kansai region of Japan, is the country's seventh largest city, with a population of 1.4 million people. Steeped in history, Kyoto is home to roughly one quarter of Japan's national treasures, countless shrines and temples, and seventeen sites recognized by UNESCO as World Heritage Sites.",
      distance: 2000,
      days: 7),
  PlaceInfo(
      location: "Italy",
      image: "lib/assets/images/Cinque-Terre-Italy.jpeg",
      name: "Cinque Terre",
      desc:
          "The Cinque Terre (Italian pronunciation: [ˈtʃiŋkwe ˈtɛrre], meaning /Five Lands/) is a coastal area within Liguria, in the northwest of Italy. It lies in the west of La Spezia Province, and comprises five villages: Monterosso al Mare, Vernazza, Corniglia, Manarola, and Riomaggiore.",
      distance: 7000,
      days: 10),
  PlaceInfo(
      location: "Turkey",
      image: "lib/assets/images/licensed-image.jpeg",
      name: "Ephesus",
      desc:
          "Ephesus (Ancient Greek: Ephesos) was an ancient Greek city located on the west coast of Anatolia, within the borders of the Selçuk district of today's İzmir province, and later became an important Roman city. It was one of the twelve cities of Ionia in the classical Greek era.",
      distance: 10000,
      days: 5),
];
