import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'name': 'Adil',
          'details': 'Flutter Developer',
        },
        'ur_PK': {
          'name': 'نام',
          'details': 'تفصیلات',
        },
      };
}
