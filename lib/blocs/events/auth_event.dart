abstract class AuthEvent {}

// Login event
class LoginEvent extends AuthEvent {
  LoginEvent(this.email, this.password);

  final String email;
  final String password;
}

// Register event
class RegisterEvent extends AuthEvent {
  RegisterEvent(this.email, this.password, this.name);

  final String email;
  final String password;
  final String name;
}
