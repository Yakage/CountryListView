class CountriesModel {
  String countryName;
  String language;
  String continent;
  String flagIcon;

  CountriesModel({
    required this.countryName,
    required this.language,
    required this.continent,
    required this.flagIcon,
  });

  static List<CountriesModel> getCountries() {
    List<CountriesModel> countries = [];

    countries.add(CountriesModel(
        countryName: "United States",
        language: "English",
        continent: "North America",
        flagIcon: "assets/flags/usa.png"));

    countries.add(CountriesModel(
        countryName: "Germany",
        language: "German",
        continent: "Europe",
        flagIcon: "assets/flags/germany.png"));

    countries.add(CountriesModel(
        countryName: "Japan",
        language: "Japanese",
        continent: "Asia",
        flagIcon: "assets/flags/japan.png"));

    countries.add(CountriesModel(
        countryName: "Brazil",
        language: "Portuguese",
        continent: "South America",
        flagIcon: "assets/flags/brazil.png"));

    countries.add(CountriesModel(
        countryName: "India",
        language: "Hindi",
        continent: "Asia",
        flagIcon: "assets/flags/india.png"));

    countries.add(CountriesModel(
        countryName: "Australia",
        language: "English",
        continent: "Australia",
        flagIcon: "assets/flags/australia.png"));

    countries.add(CountriesModel(
        countryName: "Canada",
        language: "English, Frence",
        continent: "North America",
        flagIcon: "assets/flags/canada.png"));

    countries.add(CountriesModel(
        countryName: "China",
        language: "Mandarin",
        continent: "Asia",
        flagIcon: "assets/flags/china.png"));

    countries.add(CountriesModel(
        countryName: "France",
        language: "Frence",
        continent: "Europe",
        flagIcon: "assets/flags/france.png"));

    countries.add(CountriesModel(
        countryName: "Philippines",
        language: "Tagalog",
        continent: "Asia",
        flagIcon: "assets/flags/philippines.png"));

    return countries;
  }
}
