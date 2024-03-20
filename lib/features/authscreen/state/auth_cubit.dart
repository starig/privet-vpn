import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:privet_vpn/config/storage.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit()
      : super(AuthState(
          isAuthorized: false,
        ));

  Future<void> logout() async {
    LocalStorage().storage.delete(key: StorageConstants().idToken);
    emit(state.copyWith(isAuthorized: false));
  }

  Future<void> checkIsAuth() async {
    final value = await LocalStorage().storage.read(key: StorageConstants().idToken);
    state.isAuthorized = value != null;
    emit(state.copyWith(
      isAuthorized: state.isAuthorized,
    ));
  }

  signInWithGoogle() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      if (googleAuth?.idToken != null) {
        await LocalStorage()
            .storage
            .write(key: StorageConstants().idToken, value: googleAuth!.idToken);
        checkIsAuth();
      }

      // Once signed in, return the UserCredential
      return await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      inspect(e);
    }
  }
}
