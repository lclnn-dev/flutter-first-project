import 'dart:io';
import 'dart:math';

void main() {
  calculate();
}

void convertGrade() {
  stdout.write('Введіть ваш бал: ');
  String? input = stdin.readLineSync();

  int? score = int.tryParse(input ?? '');

  if (score == null || score < 0 || score > 100) {
    print('Помилка даних. Введіть невід\'ємне ціле число від 0 до 100.');
    return;
  }

  if (score >= 90) {
    print('Ваша оцінка: A');
  } else if (score < 90 && score >= 80) {
    print('Ваша оцінка: B');
  } else if (score < 80 && score >= 70) {
    print('Ваша оцінка: C');
  } else if (score < 70 && score >= 60) {
    print('Ваша оцінка: D');
  } else {
    print('Ваша оцінка: F');
  }
}

void guessNumber() {
  int randomInt = Random().nextInt(100) + 1;
  int? userNumber;

  print('Гра "Вгадай число від 1 до 100":');

  while (randomInt != userNumber) {
    stdout.write('Введіть число: ');
    String? input = stdin.readLineSync();

    int? userNumber = int.tryParse(input ?? '');
    if (userNumber == null || userNumber < 1) {
      print('Помилка даних. Введіть невід\'ємне ціле число від 1 до 100.');
      return;
    }

    if (randomInt == userNumber) {
      print('Ви вгадали.');
      return;
    }

    String word = (randomInt > userNumber) ? 'більше' : 'меньше';
    print('Ви не вгадали. Підказка: загадане число $word.');
  }
}

void getFactorial() {
  stdout.write('Введіть число для розрахунку його факторіалу: ');
  String? input = stdin.readLineSync();

  int? number = int.tryParse(input ?? '');

  if (number == null || number < 0) {
    print('Помилка даних. Введіть невід\'ємне ціле число.');
    return;
  }

  int i = 1;
  int factorial = 1;
  while (i <= number) {
    factorial = factorial * i;
    i++;
  }

  print('Результат: $number! = $factorial');
}

void convertTemperature() {
  double celsiusToFahrenheit(double temperature) {
    return temperature * 1.8 + 32;
  }

  double fahrenheitToCelsius(double temperature) {
    return (temperature - 32) / 1.8;
  }

  stdout.write('Введіть температуру: ');
  String? input = stdin.readLineSync();

  double? temperature = double.tryParse(input ?? '');

  if (temperature == null) {
    print('Помилка даних. Введіть число.');
    return;
  }

  print('Оберіть систему конвертації:');
  print('1 - з Цельсія у Фаренгейти');
  print('2 - з Фаренгейтів у Цельсії');
  String? choice = stdin.readLineSync();

  switch (choice) {
    case '1':
      double result = celsiusToFahrenheit(temperature);
      print('$temperature°C = ${result.toStringAsFixed(2)}°F');
    case '2':
      double result = fahrenheitToCelsius(temperature);
      print('$temperature°F = ${result.toStringAsFixed(2)}°C');
    default:
      print('Невірний вибір, спробуйте ще раз.');
      return;
  }
}

void calculate() {
  double add(double num1, double num2) => num1 + num2;

  double subtract(double num1, double num2) => num1 - num2;

  double multiply(double num1, double num2) => num1 * num2;

  double? divide(double num1, double num2) {
    if (num2 == 0) {
      print('Помилка. Ділення на 0.');
      return null;
    }

    return num1 / num2;
  }

  stdout.write('Введіть перше число: ');
  String? input1 = stdin.readLineSync();

  double? num1 = double.tryParse(input1 ?? '');

  if (num1 == null) {
    print('Помилка даних. Введіть число.');
    return;
  }

  stdout.write('Введіть друге число: ');
  String? input2 = stdin.readLineSync();

  double? num2 = double.tryParse(input2 ?? '');

  if (num2 == null) {
    print('Помилка даних. Введіть число.');
    return;
  }

  stdout.write('Оберіть операцію (+, -, *, /): ');
  String? operation = stdin.readLineSync();

  double? result;

  switch (operation) {
    case '+':
      result = add(num1, num2);
    case '-':
      result = subtract(num1, num2);
    case '*':
      result = multiply(num1, num2);
    case '/':
      result = divide(num1, num2);
    default:
      print('Невідома операція, спробуйте ще раз.');
      return;
  }

  if (result != null) {
    print('Результат: $num1 $operation $num2 = $result');
  }
}
