import 'package:google_sign_in/google_sign_in.dart';

class GoogleSigninService {
  static GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
    ],
  );

  static Future signinWithGoogle() async {
    try {
      final account = await _googleSignIn.signIn();
      print(account);
      return account;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
