// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'HDB 应用程序';

  @override
  String get login => '登录';

  @override
  String get email => '电子邮箱';

  @override
  String get password => '密码';

  @override
  String get hdbBlockNumber => 'HDB 组屋楼号';

  @override
  String get register => '注册';

  @override
  String get invalidLoginCredentials => '登录凭证无效';

  @override
  String get selectLanguage => '选择语言';

  @override
  String get english => '英语';

  @override
  String get chinese => '中文';
}
