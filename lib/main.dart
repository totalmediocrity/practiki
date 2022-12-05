import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practiki/cubit/click_cubit.dart';
import 'package:practiki/cubit/list_cubit.dart';
import 'package:practiki/cubit/theme_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 @override
   Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => ThemeCubit()),
          BlocProvider(create: (context) => ClickCubit()),
          BlocProvider(create: (context) => ListCubit()),
        ],
        child: BlocBuilder<ThemeCubit, ThemeChangeState>(
            builder: (context, state) {
          if (state is OnThemeClick) {
            return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                brightness: context.read<ThemeCubit>().currTheme,
              ),
              home: const MyHomePage(),
              debugShowCheckedModeBanner: false,
            );
          }
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const MyHomePage(),
            debugShowCheckedModeBanner: false,
          );
        }));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocBuilder<ClickCubit, ClickState>(
                      builder: (context, state) {
                    if (state is OnClick) {
                      return Text(
                        context.read<ClickCubit>().count.toString(),
                        style: Theme.of(context).textTheme.headline4,
                      );
                    }
                    return Text(
                      "Нажмите на кнопку",
                      style: Theme.of(context).textTheme.headline4,
                    );
                  }
                  )
                ],
              ),

              const Padding(padding: EdgeInsets.only(bottom: 25)),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocBuilder<ListCubit, ListState>(
                    builder: (context, state) {
                      if(state is OnClickAdd || state is OnClickDel){
                        return SizedBox(
                          height: 400,
                          width: 600,
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: context.read<ListCubit>().totalizer,
                            itemBuilder: (context, index) {
                              return Padding(padding: const EdgeInsets.only(bottom: 10),
                              child: Container(
                                child: Center(child: Text('${(context.read<ListCubit>().elements)[index]}')),
                              ));
                            } 
                          ),
                        );
                      }

                  
                    return Text(
                        " ",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline6,
                      );
                    },
                  )
                ],
              )
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            BlocBuilder<ThemeCubit, ThemeChangeState>(
              builder: (context, state) {
                if (context.read<ThemeCubit>().currTheme ==
                    Brightness.light) {
                  return FloatingActionButton(
                    onPressed: () {
                      context.read<ClickCubit>().ClickLight();
                      context.read<ListCubit>().ClickAdd(context.read<ClickCubit>().count, context.read<ThemeCubit>().currTheme);
                    },
                    backgroundColor: Color.fromRGBO(38, 32, 68, 1),
                    child: const Icon(Icons.add),
                  );
                } else {
                  return FloatingActionButton(
                    onPressed: () {
                      context.read<ClickCubit>().ClickDark();
                      context.read<ListCubit>().ClickAdd(context.read<ClickCubit>().count, context.read<ThemeCubit>().currTheme);
                    },
                    backgroundColor: Colors.blueGrey,
                    child: const Icon(Icons.add),
                  );
                }
              },
            ),
            const Padding(padding: EdgeInsets.only(left: 5)),
            BlocBuilder<ThemeCubit, ThemeChangeState>(
              builder: (context, state) {
                if (context.read<ThemeCubit>().currTheme ==
                    Brightness.light) {
                  return FloatingActionButton(
                    onPressed: () {
                      context.read<ClickCubit>().ClickLightMinus();
                      context.read<ListCubit>().ClickAdd(context.read<ClickCubit>().count, context.read<ThemeCubit>().currTheme);
                    },
                    backgroundColor: Color.fromRGBO(38, 32, 68, 1),
                    child: const Icon(Icons.remove),
                  );
                } else {
                  return FloatingActionButton(
                    onPressed: () {
                      context.read<ClickCubit>().ClickDarkMinus();
                      context.read<ListCubit>().ClickAdd(context.read<ClickCubit>().count, context.read<ThemeCubit>().currTheme);
                    },
                    backgroundColor: Colors.blueGrey,
                    child: const Icon(Icons.remove),
                  );
                }
              },
            ),


            const Padding(padding: EdgeInsets.only(left: 100)),
            FloatingActionButton(
              onPressed: () {
                context.read<ThemeCubit>().ThemeClick();
              },
              backgroundColor: Color.fromRGBO(255, 91, 91, 1),
              child: const Icon(Icons.auto_awesome),
            ),
          ],
        ));
  }
}
