import 'package:flutter/material.dart';
import 'halaman_detail.dart';
import 'disease_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kuis',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Plant Diseases"),
        backgroundColor: Colors.green,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: listDisease.length,
          itemBuilder: (context, index){
            final Diseases place  = listDisease[index];
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HalamanDetail(tempat : place);
                }));
              },
              child: Card(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width / 3,
                      child: Image.network(place.imgUrls),
                    ),
                    SizedBox(width: 30,),
                    Text(place.name)
                  ],
                ),
              ),
            );
          }
      ),

    );
  }
}
