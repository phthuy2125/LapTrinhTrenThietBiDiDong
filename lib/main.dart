import 'package:flutter/material.dart';

import 'profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 180, 241, 250),
        ),
      ),
      //home: const MyHomePage(title: 'Thu2'),
      //home: TestSample(text: "Chao flutter"),
      //home: ScaffoldExample(),
      //home: IconExample(),
      //home: ContainerExample(),
      //home: ContainerExample2(),
      //home: NoticeExample(),
      //home: Example(),
      //home: ImageDemov4(),
      //home: ImageAvt(),
      home: ProfileExample(),
    );
  }
}

class ImageAvt extends StatelessWidget {
  const ImageAvt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color.fromARGB(255, 58, 224, 254),
              width: 3.0,
            ),
          ),
          child: ClipOval(
            child: Image.asset("images/vidu.jpg", fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

class ImageDemov4 extends StatelessWidget {
  const ImageDemov4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 58, 224, 254),
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.asset("images/vidu.jpg", fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.red[100],
                      padding: const EdgeInsets.symmetric(vertical: 24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.star, size: 24, color: Colors.red),
                          Text('Cột 1'),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.green[100],
                      padding: const EdgeInsets.symmetric(vertical: 24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.favorite, size: 24, color: Colors.green),
                          Text('Cột 2'),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.blue[100],
                      padding: const EdgeInsets.symmetric(vertical: 24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.thumb_up, size: 24, color: Colors.blue),
                          Text('Cột 3'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Body
            Expanded(
              child: Container(
                color: Colors.yellow[100],
                width: double.infinity,
                child: const Center(
                  child: Icon(Icons.star, size: 80, color: Colors.orange),
                ),
              ),
            ),
            // Footer
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 32.0,
                horizontal: 16.0,
              ),
              child: Row(
                children: const [
                  Expanded(
                    child: Center(
                      child: Text(
                        'Cột 1: Xin Chào',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Cột 2: Flutter',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NoticeExample extends StatelessWidget {
  const NoticeExample({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // Chuông thông báo
            Icon(Icons.notifications, size: 80, color: const Color(0xFF6C63FF)),
            // Badge số lượng thông báo
            Positioned(
              top: 8,
              right: 6,
              child: Container(
                width: 26,
                height: 26,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: const Center(
                  child: Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerExample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.blue[200],
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(width: 150, height: 150, color: Colors.red),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(width: 150, height: 150, color: Colors.yellow),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 180, 241, 250),
      child: const Center(child: Text("Hello")),
    );
  }
}

class IconExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Dòng 1: góc trái trên cùng
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Icon(Icons.star, size: 48, color: Colors.amber)],
          ),

          // Dòng 2: giữa màn hình
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.favorite, size: 48, color: Colors.redAccent),
              SizedBox(width: 24),
              Icon(Icons.favorite, size: 48, color: Colors.redAccent),
            ],
          ),

          // Dòng 3: góc trái dưới cùng
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Icon(Icons.star, size: 48, color: Colors.amber)],
          ),
        ],
      ),
    );
  }
}

class ScaffoldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "App Bar",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 203, 183, 238),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.5,
                color: const Color.fromARGB(255, 184, 157, 232),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 184, 157, 232),
                  size: 32,
                ),
                SizedBox(width: 16),
                Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 184, 157, 232),
                  size: 32,
                ),
                SizedBox(width: 16),
                Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 184, 157, 232),
                  size: 32,
                ),
                SizedBox(width: 16),
                Icon(
                  Icons.settings,
                  color: Color.fromARGB(255, 184, 157, 232),
                  size: 32,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}

class TestSample extends StatelessWidget {
  const TestSample({super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello",
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w900,
        color: Colors.lightBlue,
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
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
