part of 'widgets.dart';

class FoodCard extends StatelessWidget {
  final String assets;
  final String name;

  FoodCard({this.assets, this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(0, 0),
            blurRadius: 1,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: DecorationImage(
                      image: AssetImage(assets),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: shared.blackTextFont.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Ready in 15 Minutes",
                      style: shared.subGreyTextFont.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //TODO : Erase
          //TODO : End Erase
        ],
      ),
    );
  }
}
