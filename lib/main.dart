import 'package:flutter_application_2/test.dart';

void main(){
  try {
    print('===== Создание пользователей =====');

    final user1 = User(
      id: '001',
      name: 'Alex',
      email: 'alex.ru',
    );

    user1.updateEmail('alex@.ru');
    print('ID user: ${user1.id}');
    print('Name user: ${user1.name}');
    print('Email user: ${user1.email}');

    user1.name = 'Bob';
    print(user1.getInfo());

    print('==== Обработка ошибок =====');

    final user2 = User(
      id: '002',
      name: 'Maria',
      email: 'maria@mail.com',
    );

    try {
      user2.name = '';
    } catch (e) {
      print('Ошибка при установке имени: $e');
    }

    try {
      user2.updateEmail('invalid-email');
    } catch (e) {
      print('Ошибка при обновлении email: $e');
    }
    print(user2.getInfo());

    print('==== Статический метод ====');
    User.printSpecies();
  } catch (e) {
    print('Общая ошибка $e');
  }

  print('commit first');
}