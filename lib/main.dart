import 'package:camo/components/HomeSearchBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/ContactsQuickAccess.dart';
import 'components/HomeActionCards.dart';
import 'components/PaymentTypes.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: primaryBlack,
        fontFamily: 'DM-Sans',
        textTheme: const TextTheme(
          headline4: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      home: const MyHomePage(title: 'Payments',),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List <Widget> camoScreens = [
    const HomeScreen(),
    const NavigationPage(),
    const ServicesScreen(),
    const ChatsScreen(),
    const OthersScreen(),
  ];
  int _currentIndex = 1;

  void _onItemTapped(index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(fontSize: 25),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              splashRadius: 20,
              icon: SvgPicture.asset("assets/icons/menu.svg"))
        ],
      ),
      body: camoScreens.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        selectedIconTheme: const IconThemeData(
          color: Colors.white
        ),
        unselectedItemColor: const Color(0x33ffffff),
        unselectedIconTheme: const IconThemeData(
          color: Color(0x33ffffff)
        ),
        elevation: 0,

        items: [
          BottomNavigationBarItem(
              activeIcon: SvgPicture.asset("assets/icons/home.svg", color: Colors.white,),
              icon: SvgPicture.asset("assets/icons/home.svg"),
              label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/payment.svg"),
            label: "Payment",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/services.svg"),
            label: "Services",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/chats.svg"),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/menu.svg"),
            label: "More",
          )
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}


class NavigationPage extends StatelessWidget {
  const NavigationPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SearchBar(),
          ContactsQuickAccess(),
          HomeActionCards(),
          PaymentTypes()
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class OthersScreen extends StatelessWidget {
  const OthersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
