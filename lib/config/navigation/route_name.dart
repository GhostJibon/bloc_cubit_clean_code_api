class RouteName {
  static RouteName? _instance;
  // Avoid self instance
  RouteName._();
  //
  static RouteName get instance => _instance ??= RouteName._();

  static Future<String> get initialRoute async {
    return loginScreen;
  }

  static const String loginScreen = '/';
  static const String dashboard = "/dashboard";
}