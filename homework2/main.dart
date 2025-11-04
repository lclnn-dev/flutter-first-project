import 'dart:io';
import 'dart:math';

void main() {
  calculate();
}

void convertGrade() {
  while (true) {
    stdout.write('Введіть ваш бал (або "exit" для виходу): ');
    String? input = stdin.readLineSync();

    if (input == null || input.toLowerCase() == 'exit') {
      break;
    }

    int? score = int.tryParse(input);

    if (score == null || score < 0 || score > 100) {
      print('Помилка даних. Введіть невід\'ємне ціле число від 0 до 100.');
      continue;
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

  print('Програма завершена.');
}

void guessNumber() {
  int randomInt = Random().nextInt(100) + 1;

  int? userNumber;

  print('Гра "Вгадай число від 1 до 100":');

  while (randomInt != userNumber) {
    stdout.write('Введіть число (або "exit" для виходу): ');
    String? input = stdin.readLineSync();

    if (input == null || input.toLowerCase() == 'exit') {
      break;
    }

    int? userNumber = int.tryParse(input);
    if (userNumber == null || userNumber < 1) {
      print('Помилка даних. Введіть невід\'ємне ціле число від 1 до 100.');
      continue;
    }

    if (randomInt == userNumber) {
      print('Ви вгадали.');
      break;
    }

    String word = (randomInt > userNumber) ? 'більше' : 'меньше';
    print('Ви не вгадали. Підказка: загадане число $word.');
  }

  print('Програма завершена.');
}

void getFactorial() {
  while (true) {
    stdout.write(
        'Введіть число для розрахунку його факторіалу (або "exit" для виходу): ');
    String? input = stdin.readLineSync();

    if (input == null || input.toLowerCase() == 'exit') {
      break;
    }

    int? number = int.tryParse(input);

    if (number == null || number < 0) {
      print('Помилка даних. Введіть невід\'ємне ціле число.');
      continue;
    }

    int i = 1;
    int factorial = 1;
    while (i <= number) {
      factorial = factorial * i;
      i++;
    }

    print('Результат: $number! = $factorial');
  }

  print('Програма завершена.');
}

void convertTemperature() {
  double celsiusToFahrenheit(double temperature) {
    return temperature * 1.8 + 32;
  }

  double fahrenheitToCelsius(double temperature) {
    return (temperature - 32) / 1.8;
  }

  while (true) {
    stdout.write('Введіть температуру (або "exit" для виходу): ');
    String? input = stdin.readLineSync();

    if (input == null || input.toLowerCase() == 'exit') {
      break;
    }

    double? temperature = double.tryParse(input);

    if (temperature == null) {
      print('Помилка даних. Введіть число.');
      continue;
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
        continue;
    }
  }

  print('Програма завершена.');
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

  while (true) {
    stdout.write('Введіть перше число (або "exit" для виходу): ');
    String? input1 = stdin.readLineSync();

    if (input1 == null || input1.toLowerCase() == 'exit') {
      break;
    }

    stdout.write('Введіть друге число: ');
    String? input2 = stdin.readLineSync();

    if (input2 == null) break;

    double? num1 = double.tryParse(input1);
    double? num2 = double.tryParse(input2);

    if (num1 == null || num2 == null) {
      print('Помилка даних. Введіть коректні числа.');
      continue;
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
        continue;
    }

    if (result != null) {
      print('Результат: $num1 $operation $num2 = $result');
    }
  }

  print('Програма завершена.');
}
