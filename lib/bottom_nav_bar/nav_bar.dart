import 'expo.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  static List<Widget> screens = [];

  @override
  void initState() {
    screens = <Widget>[
      const HomePage(),
      const BasketPage(),
      const SearchPage(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: context.watch<TabCubit>().state,
        children: screens,
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        child: BottomNavigationBar(
          currentIndex: context.watch<TabCubit>().state,
          onTap: context.read<TabCubit>().changeTabIndex,
          selectedLabelStyle: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w700,
            color: Colors.purple,
            height: 12 / 10,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: Colors.purple,
            height: 12 / 10,
          ),
          type: BottomNavigationBarType.shifting,
          elevation: 10,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.pink,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket_outlined), label: 'basket'),
          ],
        ),
      ),
    );
  }
}
