import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/Rate.dart';

class LatestRate extends StatefulWidget {
  const LatestRate({super.key});

  @override
  State<LatestRate> createState() => _LatestRateState();
}

class _LatestRateState extends State<LatestRate> {
  @override
  initState() {
    super.initState();
    print("Init State");
    getRate();
  }

  Future<Rate> getRate() async {
    var params = {"base": "THB"};
    var uri = Uri.https(
        "currency-converter-pro1.p.rapidapi.com", "/latest-rates", params);

    var result = await http.get(uri, headers: {
      "X-RapidAPI-Host": "currency-converter-pro1.p.rapidapi.com",
      "x-rapidapi-key": "C05GBKbyg0mshuD0FmkuTgEJe7mQp1QktrHjsndVBQ98Lef6WS"
    });

    Rate rate = rateFromJson(result.body);
    print(rate.toString());
    return rate;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getRate(),
        builder: (BuildContext context, AsyncSnapshot<Rate> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(
                child: Text("Error: ${snapshot.error}"),
              );
            } else {
              return ListView.builder(
                  itemCount: snapshot.data!.result!.length,
                  itemBuilder: (BuildContext context, int index) {
                    String? key = snapshot.data?.result!.keys.elementAt(index);
                    double? value = snapshot.data?.result![key];
                    String? show = value!.toString();
                    return ListTile(
                      title: Text(key!),
                      subtitle: Text(show),
                    );
                  });
            }
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
