import 'package:banking_app/config/routes/router_handler.dart';
import 'package:fluro/fluro.dart';

class Routes {
  /// Router path
  static String login = "/login";
  static String bankingMain = "/banking_main";

  /// Setup route for the app
  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = notHandler;

    router.define(
      login,
      handler: loginHandler,
      transitionType: TransitionType.inFromRight,
    );

    router.define(
      bankingMain,
      handler: bankingMainHandler,
      transitionType: TransitionType.inFromRight,
    );
  }
}
