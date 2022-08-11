import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const appTitle = 'Kitabun';
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyDashboard(title: appTitle),
    );
  }
}

class MyDashboard extends StatelessWidget {
  const MyDashboard({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('Safinatunnajah'),
            subtitle: const Text('Safinatunnajah'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BabView()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('Al-Jurmiyyah'),
            subtitle: const Text('Safinatunnajah'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('Al-Hikam'),
            subtitle: const Text('Safinatunnajah'),
            onTap: () {},
          ),
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class BabView extends StatelessWidget {
  const BabView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Safinatunnajah'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Mukaddimah'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Pasal 1 : Rukun Islam'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const KitabView()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class KitabView extends StatelessWidget {
  const KitabView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muqaddimah'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text(
                  'الحمد لله رب العالمين ، وبه نستعين على أمور الدنيا والدين ،وصلى الله وسلم على سيدنا محمد خاتم النبيين ،واله وصحبه أجمعين ، ولاحول ولا قوة إلا بالله العلي العظيم \n',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 20),
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        text:
                            'Dangan menyebut nama Allah Yang Maha Pengasih lagi Maha Penyayang Segala puji hanya kepada Allah Tuhan semesta alam, dan kepadaNya jualah kita memohon pertolongan atas segala perkara dunia dan akhirat. Dan shalawat serta salamNya semoga selalu tercurah kepada baginda Nabi Besar Muhammad SAW Penutup para nabi, juga terhadap keluarga, sahabat sekalian. Dan tiada daya upaya kecuali dengan pertolongan Allah Yang Maha Tinggi lagi Maha Perkasa.',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
