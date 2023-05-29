part of 'app_bloc.dart';

abstract class AppState extends Equatable {
  final String? languageCode;
  final String? countryCode;

  const AppState(this.languageCode, this.countryCode);

  @override
  List<Object?> get props => [languageCode, countryCode];
}

class AppInitial extends AppState {
  const AppInitial() : super(null, null);
}
class LanguageChanged extends AppState {
  const LanguageChanged(String? languageCode, String? countryCode)
      : super( languageCode,countryCode);
}

