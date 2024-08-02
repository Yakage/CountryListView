import 'package:flutter/material.dart';
import 'Models/countries_model.dart';

class CountryListView extends StatefulWidget {
  const CountryListView({super.key});

  @override
  State createState() => _CountryListViewState();
}

class _CountryListViewState extends State<CountryListView> {
  List<CountriesModel> countries = [];

  void _getCountries() {
    countries = CountriesModel.getCountries();
  }

  @override
  Widget build(BuildContext context) {
    _getCountries();
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: const Text(
          "Countries",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.lightBlue,
        elevation: 0.0,
      ),
      body: Center(
          child: Container(
            margin: const EdgeInsets.all(30),
            child: ListView.separated(
            itemCount: countries.length,
            separatorBuilder: (context, index) => const SizedBox(
              height: 25,
            ),
            itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 30, 20),
                      child: Image.asset(
                        countries[index].flagIcon,
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Country Name: ${countries[index].countryName}"),
                      Text("Language: ${countries[index].language}"),
                      Text("Continent: ${countries[index].continent}"),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      )),
    );
  }
}
