import 'package:banking_app/config/routes/router_handler.dart';
import 'package:fluro/fluro.dart';

class Routes {
  /// Router path
  static String login = "/login";
  static String bankingHome = "/banking_home";

  /// Setup route for the app
  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = notHandler;

    router.define(
      login,
      handler: loginHandler,
      transitionType: TransitionType.inFromRight,
    );

    router.define(
      bankingHome,
      handler: bankingHomeHandler,
      transitionType: TransitionType.inFromRight,
    );
  }
}
