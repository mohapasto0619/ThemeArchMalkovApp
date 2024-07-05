class AppRoute {
  const AppRoute._(this.path, this.name);
  final String path;
  final String name;

  //Home route
  static const home = AppRoute._('/home', 'home');
}
