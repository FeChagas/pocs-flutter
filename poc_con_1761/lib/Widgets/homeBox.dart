import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../Widgets/box_informations.dart';

class HomeBox extends StatelessWidget {
  HomeBox({required this.onPress, required this.title, this.imageUrl = ""});

  Function onPress;
  var title;
  String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      width: double.infinity,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Container(
                child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(10.0),
              ),
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                filterQuality: FilterQuality.low,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 180.0,
                placeholder: (context, url) => Container(
                    alignment: Alignment.center,
                    width: 180.0,
                    height: 180.0,
                    child: const CircularProgressIndicator()),
                errorWidget: (context, error, stackTrace) {
                  return Container(
                    padding: const EdgeInsets.all(0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(10.0),
                      ),
                      child: Image.asset('assets/images/not_found.webp',
                          fit: BoxFit.cover),
                    ),
                  );
                },
              ),
            ))
            // imageUrl.isNotEmpty
            //     ? Container(
            //         child: Text("ENTROU AQUI SOB A IMAGEM"),
            //         width: double.infinity,
            //         height: 180,
            //         decoration: BoxDecoration(
            //           image: DecorationImage(
            //               fit: BoxFit.cover, image: NetworkImage(imageUrl)),
            //           borderRadius: BorderRadius.circular(15),
            //         ))
            //     : Text("Sem Imagem"),
            ,
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    BoxInformations(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class IconText extends StatelessWidget {
  IconText({required this.icon, required this.text});

  Icon icon;
  Text text;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
        padding: const EdgeInsets.only(right: 8),
        child: icon,
      ),
      text,
    ]);
  }
}
