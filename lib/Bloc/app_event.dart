abstract class AppEvent {}

class GetAppEvent extends AppEvent {}

class NavigateToHashEvent extends AppEvent {
  final String hash;
  NavigateToHashEvent(this.hash);
}
