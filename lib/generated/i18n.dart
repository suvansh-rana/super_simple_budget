import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types

//This file is automatically generated. DO NOT EDIT, all your changes would be lost.
class S extends WidgetsLocalizations {
  Locale _locale;
  String _lang;

  S(this._locale) {
    _lang = getLang(_locale);
    print('Current locale: $_lang');
  }

  static final GeneratedLocalizationsDelegate delegate =
      new GeneratedLocalizationsDelegate();

  static S of(BuildContext context) {
    var s = Localizations.of<S>(context, WidgetsLocalizations);
    s._lang = getLang(s._locale);
    return s;
  }

  @override
  TextDirection get textDirection => TextDirection.ltr;

  String get add => "Add";
  String get cancel => "Cancel";
  String get leftToSpend => "Left to spend";
  String get sumOfExpenses => "Sum of expenses";
  String get startingBudget => "Starting budget";
  String get changeCurrency => "Change currency";
  String get currencyEUR => "EUR (€)";
  String get history => "History";
  String get appTitle => "Super Simple Budget";
  String get confirm => "Confirm";
  String get currencyGBP => "GBP (£)";
  String get currencyPLN => "PLN (zł)";
  String get beginNewCycle => "Begin new cycle";
  String get chooseCurrency => "Choose currency";
  String get newExpense => "New expense";
  String get budget => "Budget";

  String currencyUSD(String) => "USD (\$)";
}

class en extends S {
  en(Locale locale) : super(locale);
}

class pl extends S {
  pl(Locale locale) : super(locale);

  @override
  TextDirection get textDirection => TextDirection.ltr;

  @override
  String get add => "Dodaj";
  @override
  String get cancel => "Anuluj";
  @override
  String get leftToSpend => "Zostało do wydania";
  @override
  String get sumOfExpenses => "Wuma wydatków";
  @override
  String get startingBudget => "Budżet startowy";
  @override
  String get changeCurrency => "Zmień walutę";
  @override
  String get currencyEUR => "EUR (€)";
  @override
  String get history => "Historia";
  @override
  String get appTitle => "Super Prosty Budżet";
  @override
  String get confirm => "Zatwierdź";
  @override
  String get currencyGBP => "GBP (£)";
  @override
  String get currencyPLN => "PLN (zł)";
  @override
  String get beginNewCycle => "Rozpocznij nowy okres";
  @override
  String get chooseCurrency => "Wybierz walutę";
  @override
  String get newExpense => "Nowy wydatek";
  @override
  String get budget => "Budżet";
  @override
  String currencyUSD(String) => "USD (\$)";
}

class GeneratedLocalizationsDelegate
    extends LocalizationsDelegate<WidgetsLocalizations> {
  const GeneratedLocalizationsDelegate();

  List<Locale> get supportedLocales {
    return [
      new Locale("en", ""),
      new Locale("pl", ""),
    ];
  }

  LocaleResolutionCallback resolution({Locale fallback}) {
    return (Locale locale, Iterable<Locale> supported) {
      var languageLocale = new Locale(locale.languageCode, "");
      if (supported.contains(locale))
        return locale;
      else if (supported.contains(languageLocale))
        return languageLocale;
      else {
        var fallbackLocale = fallback ?? supported.first;
        return fallbackLocale;
      }
    };
  }

  Future<WidgetsLocalizations> load(Locale locale) {
    String lang = getLang(locale);
    switch (lang) {
      case "en":
        return new SynchronousFuture<WidgetsLocalizations>(new en(locale));
      case "pl":
        return new SynchronousFuture<WidgetsLocalizations>(new pl(locale));
      default:
        return new SynchronousFuture<WidgetsLocalizations>(new S(locale));
    }
  }

  bool isSupported(Locale locale) => supportedLocales.contains(locale);

  bool shouldReload(GeneratedLocalizationsDelegate old) => false;
}

String getLang(Locale l) => l.countryCode != null && l.countryCode.isEmpty
    ? l.languageCode
    : l.toString();