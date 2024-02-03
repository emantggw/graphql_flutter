import 'package:flutter/material.dart';
import 'package:graph_ql_sample/schema/country.query.graphql.dart';

class FilteredCountriesScreen extends StatefulWidget {
  const FilteredCountriesScreen({super.key});

  @override
  State<FilteredCountriesScreen> createState() =>
      _FilteredCountriesScreenState();
}

class _FilteredCountriesScreenState extends State<FilteredCountriesScreen> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: Center(
              child: SingleChildScrollView(
                  controller: scrollController,
                  scrollDirection: Axis.horizontal,
                  child: RawScrollbar(
                    controller: scrollController,
                    thumbColor: const Color.fromARGB(255, 210, 205, 205),
                    child: Row(children: [getCountryByTN(), getCountryByUz()]),
                  )))),
    );
  }

  Query$getTNCountry$Widget getCountryByTN() {
    return Query$getTNCountry$Widget(builder: (result, {fetchMore, refetch}) {
      return countryCard(result.parsedData?.country?.name ?? "Undefined",
          isProgressing: result.parsedData == null);
    });
  }

  Query$getUZCountry$Widget getCountryByUz() {
    return Query$getUZCountry$Widget(builder: (result, {fetchMore, refetch}) {
      return countryCard(result.parsedData?.country?.name ?? "Undefined",
          isProgressing: result.isLoading);
    });
  }

  Widget countryCard(String countryName, {bool isProgressing = false}) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 35),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 222, 217, 217),
            borderRadius: BorderRadius.circular(8)),
        child: Visibility(
          replacement: const CircularProgressIndicator(),
          visible: !isProgressing,
          child: Text(
            countryName,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ));
  }
}
