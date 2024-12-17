import 'package:advance_flutter_app/screen/home/provider/covidprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({super.key});

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
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
          "COVID DETAIL",
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
            Container(
              width: double.infinity,
              height: 450,
              child: Column(
                children: [
                  Text(providerW.covidDetailData.length.toString(),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}