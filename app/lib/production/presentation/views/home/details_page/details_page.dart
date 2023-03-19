import 'package:app/production/data/models/response/results/title_results.dart';
import 'package:app/production/utilities/types/svg_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.title});
  final TitleResults title;
  @override
  Widget build(BuildContext context) {
    final imageUrl = title.primaryImage?.url;
    final titleText = title.titleText?.text;
    final subtitleText = title.primaryImage?.caption?.plainText;

    return Scaffold(
        appBar: AppBar(
          title: Text(title.titleText?.text ?? ""),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderImage(imageUrl: imageUrl),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: Text(
                  titleText ?? "",
                  style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w900),
                  textAlign: TextAlign.start,
                )),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: Text(
                  subtitleText ?? "",
                  style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                  //textAlign: TextAlign.center,
                )),
          ],
        ));
  }
}

class HeaderImage extends StatelessWidget {
  const HeaderImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      color: Colors.black,
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: 50.h),
          child: Image.network(
            imageUrl ?? "",
            height: 0.3.sh,
            fit: BoxFit.fitHeight,
            errorBuilder: (context, exception, stackTrace) {
              return SvgPicture.asset(
                SvgImageTypes.noImage.fullPath,
                color: Theme.of(context).primaryColor,
                height: 0.3.sh,
                fit: BoxFit.fitHeight,
              );
            },
          )),
    );
  }
}
