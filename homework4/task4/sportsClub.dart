import 'playable.dart';

class SportsClub {
  final List<Playable> sports = [];

  void addSport(Playable sport) {
    sports.add(sport);
  }

  void playAll() {
    for (var sport in sports) {
      sport.play();
    }
  }
}
