class User {
  static const String species = 'Homo sapiens';

  final String id;
  final DateTime createdAt;

  String _email;
  String _name;

  User({
    required this.id,
    required String name,
    required String email,
  })  : _name = name,
        _email = email,
        createdAt = DateTime.now();

  String get name => _name;

  set name(String newName) {
    if (newName.trim().isEmpty) {
      throw ArgumentError('Имя не может быть пустым');
    }
    _name = newName.trim();
  }

  String get email => _email;

  void updateEmail(String newEmail) {
    if (!newEmail.contains('@')) {
      throw ArgumentError('Некорректный емайл');
    }
    _email = newEmail;
  }

  String getInfo() {
    return 'User(id=$id, name=$name, email=$email, createdAt=$createdAt';
  }

  static void printSpecies(){
    print('Все пользователи $species');
  }

}