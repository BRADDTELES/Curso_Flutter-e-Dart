import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String?> entrarUsuario(
      {required String email, required String senha}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: senha);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          return 'Usuário não encontrado';
        case 'wrong-password':
          return 'Senha incorreta';
        case 'weak-password':
          return 'A senha deve ter pelo menos 6 caracteres';
        case 'channel-error':
          return 'Informe um E-mail válido';
        case 'invalid-email':
          return 'Informe um E-mail válido';
        case 'network-request-failed':
          return 'Falha na rede';
        case 'network-request-failed':
          return 'Falha na rede';
        case 'operation-not-allowed':
          return 'Este email não está habilitado para esta operação';
        case 'email-already-in-use':
          return 'Este email já está em uso';
      }
      return e.code;
    }

    return null;
  }

  Future<String?> cadastrarUsuario(
      {required String email,
      required String senha,
      required String nome}) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: senha);
      await userCredential.user!.updateDisplayName(nome);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'email-already-in-use':
          return 'O email já está em uso';
        case 'weak-password':
          return 'A senha deve ter pelo menos 6 caracteres';
        case 'network-request-failed':
          return 'Falha na rede';
        case 'channel-error':
          return 'Informe um E-mail válido';
      }
      return e.code;
    }

    return null;
  }

  Future<String?> redefinicaoSenha({required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          return 'Usuário não encontrado';
        case 'invalid-email':
          return 'E-mail inválido';
        case 'network-request-failed':
          return 'Falha na rede';
        case 'channel-error':
          return 'Informe um E-mail válido';
      }
      return e.code;
    }

    return null;
  }

  Future<String?> deslogar() async {
    try {
      await _firebaseAuth.signOut();
    } on FirebaseAuthException catch (e) {
      return e.code;
    }

    return null;
  }

  Future<String?> excluirConta({required String senha}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: _firebaseAuth.currentUser!.email!, password: senha);
      await _firebaseAuth.currentUser!.delete();
    } on FirebaseAuthException catch (e) {
      return e.code;
    }
    return null;
  }
}
