import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/repository/auth_repository.dart';

class UserBloc implements Bloc {

  final _auth_repository = AuthRepository();

  //Flujo de datos  - streams
  //stream - firebase
  //StreamController
  Stream<FirebaseUser> streamFirebase = FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirebase;

  //casos de uso
  //1.- SignIn a la aplicacion Google
  Future<FirebaseUser> signIn(){

    return _auth_repository.signInFirebase() ;
  }

  signOut(){
    _auth_repository.signOut();
  }

  @override
  void dispose() {

  }
}