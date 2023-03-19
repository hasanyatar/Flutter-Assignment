enum SvgImageTypes {
  noImage('no_image'),
  sliders('sliders');

  final String name;

  const SvgImageTypes(this.name);
}

extension SvgImageTypesE on SvgImageTypes {
  String get fullPath => '$path$name.svg';

  static String path = "assets/svg/";
}
