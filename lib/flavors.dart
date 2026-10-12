enum Flavor {
  nike,
  puma,
  adidas,
}

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.nike:
        return 'Flavor Nike';
      case Flavor.puma:
        return 'Flavor Puma';
      case Flavor.adidas:
        return 'Flavor Adidas';
    }
  }

}
