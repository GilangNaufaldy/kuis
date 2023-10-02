import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/disease_data.dart';
import 'package:url_launcher/url_launcher.dart';

class HalamanDetail extends StatelessWidget {
  const HalamanDetail({super.key, required this.tempat});
  final Diseases tempat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plant Diseases"),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            child: Image.network(tempat.imgUrls),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [
                  Text(
                    tempat.name,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Text(
                    "Disease Name",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Text(tempat.name),
                  Text(
                    "Plant Name",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Text(tempat.plantName),
                  SizedBox(
                    height: 10,
                  ),
                  Text(tempat.nutshell[0]),
                  Text(
                    "Cir-Ciri",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Disease ID",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Text(tempat.id),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Symton",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Text(tempat.symptom),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          IconButton(
              onPressed: () {
                _launcher(tempat.imgUrls);
              },
              icon: Icon(
                Icons.image,
              ))
        ],
      ),
    );
  }
}

Future<void> _launcher(String url) async {
  final Uri _url = Uri.parse(url);
  if (!await launchUrl(_url)) {
    throw Exception("gagal membuka url : $_url");
  }
}
