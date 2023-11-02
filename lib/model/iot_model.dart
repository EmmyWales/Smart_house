class HomeModels {
  String imagePaths;
  String name;
  String devices;
   bool isSwitched;

  HomeModels({
    required this.imagePaths,
    required this.name,
    required this.devices,
    this.isSwitched = false,
  });
}

List<HomeModels> homeData = [
  HomeModels(imagePaths: "living_room", name: 'Living Room', devices: '3 devices'),
  HomeModels(
      imagePaths: 'bathrom', name: 'Bathroom', devices: '3 devices'),
  HomeModels(imagePaths: 'dinning', name: "Dinning Room", devices: '3 devices'),
  HomeModels(imagePaths: 'bedroom', name: "Bedroom", devices: '3 devices'),
];
