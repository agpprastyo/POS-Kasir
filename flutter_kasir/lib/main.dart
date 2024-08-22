import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kasir/bloc/theme/theme_mode_cubit.dart';
import 'package:flutter_kasir/core/styles/theme.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import 'bloc/auth/auth_bloc.dart';
import 'bloc/bloc_observer.dart';
import 'core/routes/router.dart';
import 'core/styles/text_styles.dart';
import 'data/models/auth_box/auth_box.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Hive
  final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  Hive.initFlutter(appDocumentDir.path);

  // Register Hive Adapter
  Hive.registerAdapter(AuthBoxAdapter());
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Poppins", "Poppins");

    MaterialTheme theme = MaterialTheme(textTheme);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeModeCubit(),
        ),
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
      ],
      child: BlocBuilder<ThemeModeCubit, bool>(
        builder: (context, state) {
          return ResponsiveSizer(builder: (context, orientation, screenType) {
            return MaterialApp.router(
              title: 'Flutter Demo',
              theme: state ? theme.dark() : theme.light(),
              routeInformationParser: AppRouter.router.routeInformationParser,
              routeInformationProvider:
                  AppRouter.router.routeInformationProvider,
              routerDelegate: AppRouter.router.routerDelegate,
            );
          });
        },
      ),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const ThemeSwitch()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeModeCubit, bool>(
      builder: (context, state) {
        return Switch(
            value: state,
            onChanged: (value) {
              context.read<ThemeModeCubit>().toggleTheme();
            });
      },
    );
  }
}
