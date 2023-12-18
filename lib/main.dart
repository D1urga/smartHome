import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color.fromARGB(255, 13, 25, 45),
          systemNavigationBarColor: Color.fromARGB(255, 13, 25, 45),
        )),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 14, 26),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const CircleAvatar(
              radius: 26,
              backgroundColor: Color.fromARGB(255, 18, 33, 60),
              child: Center(
                child: Icon(
                  Icons.grid_view,
                  color: Color.fromARGB(255, 188, 188, 188),
                ),
              ),
            ),
            GradientText(
              'ProHome',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              colors: const [
                Color.fromARGB(255, 55, 160, 246),
                Color.fromARGB(255, 156, 250, 32),
              ],
            ),
            const CircleAvatar(
              radius: 26,
              backgroundColor: Color.fromARGB(255, 18, 33, 60),
              child: Center(
                child: Icon(
                  Icons.person_rounded,
                  color: Color.fromARGB(255, 188, 188, 188),
                ),
              ),
            )
          ],
        ),
      ),
      body: Stack(children: [
        Center(
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                height: 180,
                width: 330,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 13, 25, 45),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 112, 111, 111),
                          offset: Offset(0, 0),
                          blurRadius: 0.2,
                          spreadRadius: 0)
                    ]),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Heavy Rain',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 188, 188, 188),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Tonight',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 188, 188, 188),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '27',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 188, 188, 188),
                                      fontSize: 60,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 20, left: 6),
                                  child: CircleAvatar(
                                    radius: 12,
                                    child: CircleAvatar(
                                      radius: 8,
                                      backgroundColor:
                                          Color.fromARGB(255, 13, 25, 45),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              'Feels like 32',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 188, 188, 188),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.light_mode,
                                  size: 40,
                                  color: Color.fromARGB(255, 179, 162, 12),
                                ),
                                Icon(
                                  Icons.waves,
                                  size: 50,
                                  color: Color.fromARGB(255, 188, 188, 188),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(8),
                height: 100,
                width: 330,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 8, 87, 151),
                        Color.fromARGB(255, 29, 90, 61)
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 112, 111, 111),
                          offset: Offset(0, 0),
                          blurRadius: 0.2,
                          spreadRadius: 0)
                    ]),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Energry',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '16.4 kwh',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 27,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '3 Devices turn on',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 112, 111, 111),
                                    offset: Offset(0, 0),
                                    blurRadius: 0.2,
                                    spreadRadius: 0)
                              ]),
                          child: const Center(
                            child: Icon(
                              Icons.flash_on_rounded,
                              size: 40,
                              color: Color.fromARGB(255, 126, 25, 69),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      'Devices ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 188, 188, 188),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Text(
                      '(25)',
                      style: TextStyle(
                          color: Color.fromARGB(255, 188, 188, 188),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 170,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        height: 130,
                        width: 100,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 13, 25, 45),
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 112, 111, 111),
                                  offset: Offset(0, 0),
                                  blurRadius: 0.2,
                                  spreadRadius: 0)
                            ]),
                        child: const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.light,
                                size: 40,
                                color: Color.fromARGB(255, 188, 188, 188),
                              ),
                              Text(
                                'Light',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 188, 188, 188),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '3 Devices',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 188, 188, 188),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        height: 130,
                        width: 100,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 13, 25, 45),
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 112, 111, 111),
                                  offset: Offset(0, 0),
                                  blurRadius: 0.2,
                                  spreadRadius: 0)
                            ]),
                        child: const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.ac_unit,
                                size: 38,
                                color: Color.fromARGB(255, 188, 188, 188),
                              ),
                              Text(
                                'AC',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 188, 188, 188),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '2 Devices',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 188, 188, 188),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        height: 130,
                        width: 100,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 13, 25, 45),
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 112, 111, 111),
                                  offset: Offset(0, 0),
                                  blurRadius: 0.2,
                                  spreadRadius: 0)
                            ]),
                        child: const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.device_thermostat_rounded,
                                size: 40,
                                color: Color.fromARGB(255, 188, 188, 188),
                              ),
                              Text(
                                'Climate',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 188, 188, 188),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '2 Devices',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 188, 188, 188),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const Positioned(
          top: 105,
          left: 70,
          child: Icon(
            Icons.flash_on,
            size: 60,
            color: Color.fromARGB(255, 240, 207, 16),
          ),
        ),
        const Positioned(
          top: 10,
          left: 105,
          child: Icon(
            Icons.dark_mode,
            size: 75,
            color: Color.fromARGB(255, 76, 74, 117),
          ),
        ),
        const Positioned(
          top: 20,
          left: 40,
          child: Icon(
            Icons.cloud,
            size: 130,
            color: Color.fromARGB(255, 207, 207, 207),
          ),
        ),
        const Positioned(
          top: 29,
          left: 47,
          child: Icon(
            Icons.bubble_chart,
            size: 30,
            color: Color.fromARGB(255, 213, 213, 213),
          ),
        ),
      ]),
      extendBody: true,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(top: 25),
        height: 55,
        width: 55,
        child: FittedBox(
          child: FloatingActionButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            backgroundColor: Color.fromARGB(255, 156, 66, 59),
            onPressed: () {},
            child: const Icon(
              Icons.add,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shadowColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0,
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        height: 65,
        color: const Color.fromARGB(255, 13, 25, 45),
        shape: const CircularNotchedRectangle(),
        notchMargin: 18,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.home_outlined,
                size: 29,
                color: Color.fromARGB(255, 188, 188, 188),
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.swap_vert_circle_outlined,
                size: 29,
                color: Color.fromARGB(255, 188, 188, 188),
              ),
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: IconButton(
                icon: const Icon(
                  Icons.calendar_month,
                  size: 29,
                  color: Color.fromARGB(255, 188, 188, 188),
                ),
                onPressed: () {},
              ),
            ),
            IconButton(
              icon: const Icon(
                Icons.settings,
                size: 29,
                color: Color.fromARGB(255, 188, 188, 188),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
