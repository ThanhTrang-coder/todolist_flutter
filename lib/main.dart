import 'package:flutter/material.dart';
import 'package:todos_flutter/blocs/bloc_exports.dart';
import 'package:todos_flutter/screens/home_page.dart';
import 'package:todos_flutter/services/app_router.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(MyApp(
      appRouter: AppRouter(),)
    )
  );
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TasksBloc(),
      child: MaterialApp(
        title: 'Flutter Tasks App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
          useMaterial3: true,
        ),
        home: const TasksPage(),
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}