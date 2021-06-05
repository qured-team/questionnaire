

import 'package:intl/intl.dart' as intl;
import 'fdash_localizations.g.dart';

/// The translations for German (`de`).
class FDashLocalizationsDe extends FDashLocalizations {
  FDashLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get validatorRequiredItem => 'Füllen sie dieses Pflichtfeld aus.';

  @override
  String validatorMinLength(int minLength) {
    return intl.Intl.pluralLogic(
      minLength,
      locale: localeName,
      other: 'Mind. $minLength Zeichen eingeben.',
    );
  }

  @override
  String validatorMaxLength(int maxLength) {
    return intl.Intl.pluralLogic(
      maxLength,
      locale: localeName,
      other: 'Bis zu $maxLength Zeichen eingeben.',
    );
  }

  @override
  String get validatorUrl => 'URL im Format https://... eingeben.';

  @override
  String get validatorRegExp => 'Gültigen Wert eingeben.';

  @override
  String validatorEntryFormat(String entryFormat) {
    return 'Im Format $entryFormat eingeben.';
  }

  @override
  String get validatorNan => 'Gültige Zahl eingeben.';

  @override
  String validatorMinValue(String minValue) {
    return 'Eine Zahl ab $minValue eingeben.';
  }

  @override
  String validatorMaxValue(String maxValue) {
    return 'Eine Zahl bis $maxValue eingeben.';
  }

  @override
  String get dataAbsentReasonAskedDeclined => 'I choose not to answer.';

  @override
  String get narrativePageTitle => 'Narrative';

  @override
  String get questionnaireGenericTitle => 'Survey';

  @override
  String get questionnaireUnknownTitle => 'Untitled';

  @override
  String get questionnaireUnknownPublisher => 'Unknown publisher';
}
