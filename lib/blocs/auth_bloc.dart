import 'dart:async';
import './events/auth_event.dart';
import './states/auth_state.dart';

class AuthBloc {
  // Initalize state
  var state = AuthState(false);

  // Create 2 controllers
  // 1 event controller to receive state from UI
  final eventController = StreamController<AuthEvent>();
  // 1 state controller to pass state to UI
  final stateController = StreamController<AuthState>();

  AuthBloc() {
    // Listen when eventController push new event
    eventController.stream.listen(_mapEventToState);
  }

  // Private function
  Future<void> _mapEventToState(AuthEvent event) async {
    if (event is LoginEvent) {
      if (event.email == "admin@example.com" && event.password == "admin1234") {
        state = AuthState(true);
      }
    } else if (event is RegisterEvent) {
      if (event.email == "admin@example.com" && event.password == "admin1234") {
        state = AuthState(true);
      }
    }

    // add new state to state controller to pass state to UI
    stateController.sink.add(state);
  }

  // close all controllers
  void dispose() {
    stateController.close();
    eventController.close();
  }
}
