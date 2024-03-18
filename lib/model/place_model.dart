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
      image: "lib/assets/images/2316970_46f2f70f8e5d2a7ad1f207ee4710a4fc_640x640.jpg",
      name: "Neolokal",
      desc:
          "Beyoğlu'nda bulunan Neolokal, Türk mutfağına dair lezzetler sunuyor. İstanbul'da 1 Michelin Yıldızına sahip olan 4 restorandan biri olan Neolokal'de yemek yemenin maliyeti ortalama 1490 TL.
          1 Michelin Yıldızı 'yüksek kalite mutfak, uğramaya değer' anlamına geliyor.
          Neolokal, sürdürülebilir gastronomiye yönelik öncü yaklaşımından dolayı Michelin Yıldızı'nın yanı sıra Yeşil Yıldız da almasıyla dikkat çekiyor.",
      distance: 10000,
      days: 5),
];
