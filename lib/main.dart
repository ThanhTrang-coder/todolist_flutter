import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos_flutter/blocs/bloc/tasks_event.dart';
import 'package:todos_flutter/blocs/bloc_exports.dart';
import 'package:todos_flutter/demo_realm/form_screen.dart';
import 'package:todos_flutter/models/task_model.dart';
import 'package:todos_flutter/screens/home_page.dart';
import 'package:todos_flutter/screens/statistics_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Todos Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget> [
    HomePage(),
    const StatisticPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: HomePage(),
        ),
        // drawer: Drawer(
        //   child: ListView(
        //     padding: EdgeInsets.zero,
        //     children: [
        //       DrawerHeader(
        //         decoration: const BoxDecoration(color: Colors.blueAccent),
        //         child: Column(
        //           children: [
        //             Image.asset('assets/logo.png', height: 60,),
        //             const SizedBox(height: 15,),
        //             const Text('Todos List', style: TextStyle(color: Colors.white),),
        //           ],
        //         ),
        //       ),
        //       ListTile(
        //         leading: const Icon(Icons.home_rounded),
        //         title: const Text('Home'),
        //         selected: _selectedIndex == 0,
        //         onTap: () {
        //           _onItemTapped(0);
        //           Navigator.pop(context);
        //         },
        //       ),
        //       ListTile(
        //         leading: const Icon(Icons.bar_chart_outlined),
        //         title: const Text('Statistic'),
        //         selected: _selectedIndex == 1,
        //         onTap: () {
        //           _onItemTapped(1);
        //           Navigator.pop(context);
        //         },
        //       ),
        //     ],
        //   ),
        // ),
    );
  }
}