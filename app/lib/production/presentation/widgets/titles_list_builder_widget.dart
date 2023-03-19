import 'package:app/production/data/models/response/results/title_results.dart';
import 'package:app/production/utilities/routes/app_router.dart';
import 'package:app/production/utilities/types/svg_types.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TitlesListBuilder extends StatelessWidget {
  const TitlesListBuilder({
    Key? key,
    required this.titles,
  }) : super(key: key);
  final List<TitleResults> titles;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        final image = titles.elementAt(index).primaryImage?.url;
        final title = titles.elementAt(index);
        final subtitle = titles.elementAt(index).primaryImage?.caption?.plainText;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: _buildLeadingOfTile(context, image),
              title: _buildTextOfTile(title),
              subtitle: _buildSubtitleOfTile(subtitle),
              onTap: () => _buildOnTabOfTile(context, title: title),
              minVerticalPadding: 12.h,
            ),
          ),
        );
      },
    );
  }

  void _buildOnTabOfTile(BuildContext context, {required TitleResults title}) {
    // push detail page with AutoRouter
    AutoRouter.of(context).push(
      DetailsRoute(title: title),
    );
  }

  Text _buildSubtitleOfTile(String? subtitle) {
    return Text(subtitle ?? 'No subtitle',
        maxLines: 3,
        style: TextStyle(
          fontSize: 12.sp,
          overflow: TextOverflow.ellipsis,
        ));
  }

  Text _buildTextOfTile(TitleResults title) {
    return Text(title.titleText?.text ?? 'No title',
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.bold,
        ));
  }

  StatefulWidget _buildLeadingOfTile(BuildContext context, String? image) {
    return Image.network(image ?? "", width: 55.w, fit: BoxFit.fitWidth,
        errorBuilder: (context, error, stackTrace) {
      return SvgPicture.asset(
        SvgImageTypes.noImage.fullPath,
        width: 55.w,
        fit: BoxFit.fitWidth,
        color: Theme.of(context).primaryColor,
      );
    });
  }
}
