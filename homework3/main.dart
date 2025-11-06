import 'package:collection/collection.dart';

void main() {
  task3();
}

void task1() {
  List<String> originalColors = [
    'red',
    'blue',
    'green',
    'yellow',
    'purple',
    'orange',
    'pink',
    'brown',
    'black',
    'white'
  ];

  List<String> colors = List.from(originalColors);

  print('Список кольорів: $colors');

  colors.add('lavender');
  print('Після додавання нового кольору: $colors');

  colors.remove('brown');
  print('Після видалення "brown": $colors');

  colors.sort();
  print('Після сортування: $colors');

  List<String> colorsUpper = colors.map((c) => c.toUpperCase()).toList();
  print('\nПочатковий список: $originalColors');
  print('Перетворений список: $colorsUpper');
}

void task2() {
  Set<int> set1 = {1, 3, 5, 7};
  Set<int> set2 = {3, 5, 8, 10};

  print('Набір 1: $set1');
  print('Набір 2: $set2\n');

  var unionSet = set1.union(set2);
  print('Об\'єднання: $unionSet');

  var intersectionSet = set1.intersection(set2);
  print('Перетин: $intersectionSet');

  var difference12 = set1.difference(set2);
  print('Різниця між 1 та 2: $difference12');

  var difference21 = set2.difference(set1);
  print('Різниця між 2 та 1: $difference21');

  var symmetricDifference = unionSet.difference(intersectionSet);
  print('Симетрична різниця: $symmetricDifference');
}

void task3() {
  double calculateAverage(Map<String, int> studentGrades) {
    if (studentGrades.isEmpty) return 0.0;

    return studentGrades.values.reduce((a, b) => a + b) / studentGrades.length;
  }

  Map<String, int> studentsGrade = {
    'Миколай': 80,
    'Олег': 90,
    'Марія': 85,
    'Тетяна': 95,
    'Софія': 100,
    'Дмитро': 90
  };

  studentsGrade['Максим'] = 70;
  studentsGrade.update('Тетяна', (v) => 100);
  studentsGrade.remove('Миколай');

  print('Фінальний список студентів:');
  studentsGrade.forEach((n, g) => print('$n: $g'));

  double average = calculateAverage(studentsGrade);
  print('Середня оцінка: ${average.toStringAsFixed(2)}');

  //task 4
  final groupedByGrade = groupBy(studentsGrade.entries, (n) => n.value);

  print('\nСтуденти, згруповані за оцінками:');

  groupedByGrade.forEach((grade, name) {
    final names = name.map((e) => e.key).toList();
    print('$grade: $names');
  });
}
