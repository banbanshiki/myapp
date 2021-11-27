import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Fuji Mountain',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Shizuoka-ken, Japen',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('100'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'the highest mountain in Japan, approximately 3,776 meters (12,388 feet) is located in Shizuoka and Yamanashi prefectures. '
            'which lies west of Tokyo. The surrounding area consists of Fuji Five Lakes Fuji-Hakone-Izu National Park and Shiraito Falls'
            'On a clear day, it can be seen from Tokyo. Mountains are now organized by scientists. '
            'It is in the form of a volcanic eruption with a low probability of eruption. The last bomb exploded in 2250 (1707), the Edo period. '
            'Mount Fuji is called "Fuji-san" in Japanese, which in the old days was called "Fujiyama" because the 3rd kanji (山) can be read in two ways, "Yama" and "San". '
            ,
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Fuji Mountain',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fuji Mountain'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/fuji.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}