import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:advance_flutter_app/screen/home/provider/covidprovider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late CovidProvider providerR;
  late CovidProvider providerW;

  @override
  Widget build(BuildContext context) {
    providerR = context.read<CovidProvider>();
    providerW = context.watch<CovidProvider>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: const Text(
          "COVID INFO",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        elevation: 10,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: providerW.covidData.length,
                itemBuilder: (context, index) {
                  final covidDataItem = providerW.covidData[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('detail');
                    },
                    child: Card(
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      margin: const EdgeInsets.only(bottom: 12),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Text(
                                  'Country : ${covidDataItem.name}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.public,
                              color: Colors.blueAccent,
                              size: 32,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
