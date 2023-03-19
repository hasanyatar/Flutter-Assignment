enum LottieTypes {
  noData("nodata"),
  loading("loading");

  final String name;

  const LottieTypes(this.name);
}

extension LottieTypesE on LottieTypes {
  String get fullPath => '$path$name.json';

  static String path = 'assets/lotties/';
}
