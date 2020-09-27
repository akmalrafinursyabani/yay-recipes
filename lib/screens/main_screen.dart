part of 'screens.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  int currentIndex = 0;

  // List of Bottom Navbar Item

  List<BottomNavigationBarItem> bottomNavbarItem() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text("Home"),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        title: Text("Favorite"),
      ),
    ];
  }

  // Build Methode Bottom Navbar Item

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (value) {
        setState(() {
          currentIndex = value;
          pageController.animateToPage(currentIndex,
              duration: Duration(milliseconds: 500), curve: Curves.ease);
        });
        print(currentIndex);
      },
      items: bottomNavbarItem(),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Image.asset(
                "assets/logo_drawer.png",
                fit: BoxFit.contain,
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Settings',
                style: shared.blackTextFont,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text(
                'Rate App',
                style: shared.blackTextFont,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: shared.dangerColor,
              ),
              title: Text(
                'Logout',
                style: shared.blackTextFont.copyWith(
                  color: shared.dangerColor,
                ),
              ),
              onTap: () {
                AuthServices.signOut();
                context.bloc<PageBloc>().add(GoToSplashScreen());
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.grey[500])),
      body: Container(
        child: PageView(
          controller: pageController,
          onPageChanged: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          children: [
            HomeScreen(),
            FavouriteScreen(),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }
}
