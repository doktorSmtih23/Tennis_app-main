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
      final googleKey = await account.authentication;
      print(account);
      print('=========idToken========');
      print(googleKey.idToken);
      return account;
    } catch (e) {
      print(e);
      return null;
    }
  }

  static Future signOut() async {
    await _googleSignIn.signOut();
  }
}
