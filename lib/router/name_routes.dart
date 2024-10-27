part of "app_routes.dart";

sealed class Routes {
  Routes._();

  static const String root = "/";

  // auth
  static const String signIn = "/sign_in";

  // main
  static const String error = "/error";
  static const String inProgress = "/in_progress";
}
