import '/screens/bottom_bar.dart';
import '/screens/signing_screen.dart';
import '/screens/home_screen.dart';




routes() {
  return {

    SignInScreen.route: (context) => SignInScreen(),

    BottomBar.route: (context) => BottomBar(),
    HomeScreen.route: (context) => HomeScreen(),


  };
}
