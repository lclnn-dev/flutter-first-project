import 'animal.dart';
import 'book.dart';
import 'task3/duck.dart';
import 'task3/fish.dart';
import 'task4/basketball.dart';
import 'task4/soccer.dart';
import 'task4/sports_club.dart';
import 'task5/coordinate.dart';
import 'task5/coordinate2.dart';

void main() {
  //task 1
  Book book1 = Book('Treasure Island', 'Robert Louis Stevenson', 1883);
  Book book2 = Book('It', 'Stephen King', 1986);

  book1.displayInfo();
  book2.displayInfo();

  //task 2
  Animal animal1 = Animal('Cat', 3);
  Animal animal2 = Animal.newborn('Mouse');

  print('Animal: ${animal1.species}. Age: ${animal1.age}');
  print('Is the ${animal2.species} an adult? ${animal2.isAdult()}');

  //task 3
  Fish fish1 = Fish();
  Duck duck1 = Duck();

  fish1.swim();
  duck1.swim();

  //task 4
  final soccer = Soccer();
  final basketball = Basketball();
  final SportsClub club = SportsClub();
  club.addSport(soccer);
  club.addSport(basketball);

  club.playAll();

  //task 5.1
  Coordinate c1 = Coordinate(66.45, 33.52);
  Coordinate c2 = Coordinate(66.45, 33.52);

  print(c1 == c2);
  print(c1);

  //task 5.2
  const c3 = Coordinate2(20.22, 22.21);
  const c4 = Coordinate2(30.22, 22.31);

  print(c3 == c4);
  print(c3);
}
