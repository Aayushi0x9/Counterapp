import 'package:provider/provider.dart';
import 'package:timer_app/Controller/theme_controller.dart';
import 'package:timer_app/headers.dart';

import '../../Controller/countercontroller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          IconButton(
            onPressed: () {
              Provider.of<ThemeController>(
                context,
                listen: false,
              ).ChangeTheme();
            },
            icon: Icon(Provider.of<ThemeController>(context).isDark
                ? Icons.light_mode_outlined
                : Icons.dark_mode_outlined),
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
              '${Provider.of<CounterController>(context, listen: false).Counter}',
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
                    value: Provider.of<CounterController>(context).isIncrement,
                    onChanged: (value) {
                      Provider.of<CounterController>(context, listen: false)
                          .Increament();
                      Provider.of<CounterController>(context, listen: false)
                          .isIncrement = value;
                    }),
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
        onPressed: () {
          Provider.of<CounterController>(context, listen: false).isIncrement
              ? Provider.of<CounterController>(context, listen: false)
                  .Increament()
              : Provider.of<CounterController>(context, listen: false)
                  .Decreament();
        },
        child: Icon(
          Provider.of<CounterController>(context, listen: false).isIncrement
              ? Icons.add
              : Icons.remove,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
