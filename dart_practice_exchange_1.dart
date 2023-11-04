import 'dart:io';
import 'dart:math';

void main() {
  Map<String, double> exchange = {
    "USD": 88.70,
    "EUR": 98.20,
    "RUB": 0.95,
    "KZT": 0.3,
    "TRY": 2,
    "DIR": 14,
  };

  print('Курс валют: USD 88.70, EUR 98.20, RUB 0.95, KZT 0.3, TRY 2, DIR 14');
  stdin.readLineSync()!;

  stdout.write("Выберите операцию (покупка or продажа): ");
  String operation = stdin.readLineSync()!;

  stdout.write("Введите валюту: ");
  String value = stdin.readLineSync()!;

  stdout.write("Введите сумму: ");
  double amount = double.parse(stdin.readLineSync()!);

  double result;

  if (operation == "покупка") {
    if (exchange.containsKey(value)) {
      result = amount * exchange[value]!;
      print("Ваша сумма $result для KGS");
    } else {
      print("Валюта не доступна.");
    }
  } else if (operation == "продажа") {
    if (exchange.containsKey(value)) {
      result = amount * exchange[value]!;
      var currency;
      print("Для $amount $currency, ваша сумма $result KGS.");
    } else {
      print("Валюта не доступна.");
    }
  } else {
    print(
        "Не действительная операция. Пожалуйста, введите 'покупка' или 'продажа'.");
  }
}
