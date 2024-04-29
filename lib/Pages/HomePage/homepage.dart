import 'package:timer_app/headers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  bool _isIncrement = true;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Counter'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.buttonPage);
            },
            icon: Icon(Icons.bubble_chart_outlined),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Counter:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Increment',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: size.width * 0.02,
                ),
                Switch(
                  value: _isIncrement,
                  onChanged: (value) {
                    setState(() {
                      _counter++;
                      _isIncrement = value;
                    });
                  },
                ),
                SizedBox(
                  width: size.width * 0.02,
                ),
                const Text(
                  'Decrement',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _isIncrement ? _incrementCounter : _decrementCounter,
        child: Icon(
          _isIncrement ? Icons.add : Icons.remove,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
