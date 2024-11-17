
enum LanguageTypes {turkish, english}

abstract class ILanguageViewModel  {
  Future<void> init();
  void setCurrentLanguage ({required LanguageTypes newLanguage});
  void changeCurrentLanguage({required LanguageTypes newLanguage});
  LanguageTypes getCurrentLanguageFromLocalStorage();
  void setCurrentLanguageFromLocalStorage({required LanguageTypes newLanguage});
}