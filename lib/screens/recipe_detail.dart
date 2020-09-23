part of 'screens.dart';

class RecipeDetail extends StatefulWidget {
  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  bool isSummary = true;

  @override
  Widget build(BuildContext context) {
    // TODO : Recipe Details
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2 + 2 * 24,
              decoration: BoxDecoration(
                color: shared.loadingBackground,
                image: DecorationImage(
                  image: AssetImage("assets/pecel.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 2),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.all(24),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        height: 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey[300],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Pecel Ayam Wijen",
                        style: shared.blackTextFont.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      buildIconDetail(),
                      SizedBox(
                        height: 28,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              // TODO : Logic Summary or Instructions
                              setState(() {
                                isSummary = !isSummary;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  "Summary",
                                  style: shared.blackTextFont.copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                (isSummary)
                                    ? Container(
                                        height: 4,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        color: Colors.green[600],
                                      )
                                    : Container(
                                        height: 4,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                      ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // TODO : Logic Summary or Instructions
                              setState(() {
                                isSummary = !isSummary;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  "Instructions",
                                  style: shared.blackTextFont.copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                (!isSummary)
                                    ? Container(
                                        height: 4,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        color: Colors.green[600],
                                      )
                                    : Container(
                                        height: 4,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      // TODO : Logic Summary or Instructions
                      Container(
                        child: (isSummary)
                            ? Text(
                                "Chicken pecel in Indonesia is the name of a typical Javanese food consisting of chicken and pecel sauce. Usually what is meant is chicken that is fried dry in oil then served with tomato sauce and fresh vegetables. The usual vegetables consist of basil, cabbage, cucumber, and long beans. ",
                                style: shared.subGreyTextFont.copyWith(
                                  height: 1.5,
                                ),
                              )
                            : Container(
                                child: Center(
                                  child: Text("Instruction Page"),
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 32,
                height: 32,
                margin: EdgeInsets.only(left: 24, top: 48),
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                      ),
                    ]),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.grey[600],
                  size: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row buildIconDetail() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Icon(
              Icons.alarm,
              size: 28,
              color: shared.mainColor,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Ready in",
              style: shared.subGreyTextFont.copyWith(fontSize: 12),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "20 Minutes",
              style: shared.subBlackTextFont.copyWith(fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.restaurant_menu,
              size: 28,
              color: shared.mainColor,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "For",
              style: shared.subGreyTextFont.copyWith(fontSize: 12),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "4 Serving(s)",
              style: shared.subBlackTextFont.copyWith(fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.star_half,
              size: 28,
              color: shared.mainColor,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Score",
              style: shared.subGreyTextFont.copyWith(fontSize: 12),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "84/100",
              style: shared.subBlackTextFont.copyWith(fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }
}
