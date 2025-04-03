abstract class AppState {}

class IninitialState extends AppState {}

class NavigationHashUpdated extends AppState {
  final String hash;
  NavigationHashUpdated(this.hash);
}
