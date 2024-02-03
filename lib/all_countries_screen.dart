import 'package:flutter/material.dart';
import 'package:graph_ql_sample/schema/country.query.graphql.dart';

class AllCountriesScreen extends StatelessWidget {
  const AllCountriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Query$getAllCountries$Widget(
        builder: (result, {fetchMore, refetch}) {
      if (result.parsedData?.countries == null) {
        return const Center(child: CircularProgressIndicator());
      }
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: result.parsedData?.countries?.length ?? 0,
            itemBuilder: (ctx, index) => ListTile(
                  title: Text(
                    result.parsedData?.countries?[index]?.name ?? "",
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle:
                      Text(result.parsedData?.countries?[index]?.capital ?? ""),
                )),
      );
    });
  }
}
