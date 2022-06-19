import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'message': 'message from creator',
          'firstMes': 'Hi!',
          'secondMes': 'My name is Yana',
          'thirdMes': 'Welcome to my first Flutter app!',
          'fourthMes': 'I really hope it cheers you app :)',
          'find': "find your Chuck Norris",
          'creator': "Creator",
          'use': 'How to use the app?',
          'futureJoke': 'Here will be a joke',
          'dislike': 'Dislike',
          'save': 'Save joke',
          'like': 'Like',
          'start': 'Start',
          'fav': 'Favorite Jokes',
          'del': 'Do you really want to delete the joke?',
          'yes': 'yes',
          'no': 'no'
        },
        'ru_RU': {
          'message': 'сообщение от создателя',
          'firstMes': 'Привет!',
          'secondMes': 'Меня зовут Яна',
          'thirdMes': 'Добро пожаловать в мое первое приложение Flutter!',
          'fourthMes': 'Я очень надеюсь, что оно поднимет вам настроение :)',
          'find': "найти своего Чака Норриса",
          'creator': "Создатель",
          'use': 'Как пользоваться приложением?',
          'futureJoke': 'Здесь будет шутка',
          'dislike': 'Не нравится',
          'save': 'Сохранить шутку',
          'like': 'Нравится',
          'start': 'Начать',
          'fav': 'Любимые анекдоты',
          'del': 'Вы действительно хотите удалить шутку?',
          'yes': 'да',
          'no': 'нет'
        }
      };
}
