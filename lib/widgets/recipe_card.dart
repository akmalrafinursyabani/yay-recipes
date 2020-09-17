part of 'widgets.dart';

class RecipeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RecipeDetail(),
            ));
      },
      // TODO : ganti column
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 120,
            width: 100,
            margin: EdgeInsets.only(
              // TODO : Margin Settings
              // right: 24,
              left: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: DecorationImage(
                      image: AssetImage("assets/fried-chicken.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Fried Chicken with sauce",
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: shared.blackTextFont
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "45 Minutes",
                  style: shared.subGreyTextFont.copyWith(
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),

          // TODO: Erase
          Container(
            height: 150,
            width: 100,
            margin: EdgeInsets.only(
              // TODO : Margin Settings
              // right: 24,
              left: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: DecorationImage(
                      image: AssetImage("assets/fruit.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Healthy Salad",
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: shared.blackTextFont
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "25 Minutes",
                  style: shared.subGreyTextFont.copyWith(
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            width: 100,
            margin: EdgeInsets.only(
              // TODO : Margin Settings
              // right: 24,
              left: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: DecorationImage(
                      image: AssetImage("assets/pecel.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Pecel Ayam Wijen",
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: shared.blackTextFont
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "20 Minutes",
                  style: shared.subGreyTextFont.copyWith(
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            width: 100,
            margin: EdgeInsets.only(
              // TODO : Margin Settings
              // right: 24,
              left: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: DecorationImage(
                      image: AssetImage("assets/sate.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Sate Tempe",
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: shared.blackTextFont
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "15 Minutes",
                  style: shared.subGreyTextFont.copyWith(
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          // TODO: End Erase
        ],
      ),
    );
  }
}
