part of 'widgets.dart';

class RecipeCard extends StatelessWidget {
  final String image;
  final String title;
  final int readyInMinutes;

  RecipeCard({this.image, this.title, this.readyInMinutes});

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
      child: Container(
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
              width: 100,
              child: Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                    image: ((image != null)
                        ? NetworkImage(
                            image,
                          )
                        : AssetImage("assets/logo.png")),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              width: 100,
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.clip,
                style: shared.blackTextFont
                    .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              width: 100,
              child: Text(
                "$readyInMinutes Minutes",
                style: shared.subGreyTextFont.copyWith(
                  fontSize: 11,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
