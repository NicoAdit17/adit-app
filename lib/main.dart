import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              ImageSection(),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: TitleSection(),
              ),
              SizedBox(
                height: 35,
              ),
              TombolSection(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: DeskripsiSection(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 280,
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      child: Image.asset(
        'image/adit.jpeg',
        fit: BoxFit.cover,
        alignment: Alignment.bottomLeft,
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pantai Krakal',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.blue,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Text('Gunung Kidul, Jogjakarta'),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.favorite,
              size: 23,
              color: Colors.amber,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              9.9.toString(),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class TombolSection extends StatelessWidget {
  const TombolSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(
              Icons.call,
              size: 25,
              color: Colors.blue,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'CALL',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.near_me,
              size: 25,
              color: Colors.blue,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'ROUTE',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.share,
              size: 25,
              color: Colors.blue,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'SHARE',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DeskripsiSection extends StatelessWidget {
  const DeskripsiSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        'Sejarah unik dialami oleh pantai Krakal, terbentuk pantai seperti itu melalui berbagai proses alam yang panjang.Kata penduduk sekitar, pantai pulang syawal berada dibawah dasar laut.Lantaran terjadi proses alam pengangkatan kerak bumi, sehingga dasar laut dapat menuju ke permukaan hingga menjadi daratan.Daratan pantai terbentuk karena pengangkatan dasar laut, sehingga muncul pantai dengan sebutan pantai Krakal Wonosari.Pantai pulang syawal memiliki keunikan pada jumlah batu karang yang bertebaran di pantai, dimana dahulu batu karang tersebut merupakan habitat asli bagi ikan di dasar laut.');
  }
}
