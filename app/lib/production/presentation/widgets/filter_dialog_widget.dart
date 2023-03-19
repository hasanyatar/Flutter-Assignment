import 'package:app/injection/injection.dart';
import 'package:app/production/data/models/request/titles/titles_request.dart';
import 'package:app/production/presentation/blocs/titles_bloc/titles_bloc.dart';
import 'package:app/production/utilities/components/text_fields/underline_text_fields.dart';
import 'package:app/production/utilities/themes/constants.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterDialogWidget extends StatelessWidget {
  FilterDialogWidget({super.key});

  final genreTextController = TextEditingController();

  final pagesCountTextController = TextEditingController();

  final startYearTextController = TextEditingController();

  final endYearTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final color = isDarkMode(context) ? Theme.of(context).scaffoldBackgroundColor : Colors.white;
    return Dialog(
      backgroundColor: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0.r),
      ),
      child: Container(
        height: 425.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Title of the dialog
            _buildTitleDialog(context),
            SizedBox(height: 5.h),

            _buildTextField(
                hintText: "Genre",
                keyboardType: TextInputType.text,
                controller: genreTextController),
            _buildTextField(
                hintText: "Page number",
                keyboardType: TextInputType.number,
                controller: pagesCountTextController),
            _buildTextField(
                hintText: "Start year",
                keyboardType: TextInputType.number,
                controller: startYearTextController),
            _buildTextField(
                hintText: "End year",
                keyboardType: TextInputType.number,
                controller: endYearTextController),
            // filter button to filter the movies
            _buildFilterButton(context),
          ],
        ),
      ),
    );
  }

  // Filter button to filter the movies
  Widget _buildFilterButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // backgroundColor:
          //     isDarkMode(context) ? const Color(0xffCB560D) : Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0.r),
          ),
        ),
        onPressed: () => _buildOnTapFilter(context),
        child: Text(
          'Filter',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  void _buildOnTapFilter(BuildContext context) {
    final genre = genreTextController.text;
    final pagesCount = pagesCountTextController.text;
    final startYear = startYearTextController.text;
    final endYear = endYearTextController.text;
    injector<TitlesBloc>().add(
      GetTitles(
        filters: TitlesRequest(
          genre: genre.isNotEmpty ? genre : null,
          page: pagesCount.isNotEmpty ? int.parse(pagesCount) : null,
          startYear: startYear.isNotEmpty ? int.parse(startYear) : null,
          endYear: endYear.isNotEmpty ? int.parse(endYear) : null,
          //* ... other filters
        ),
      ),
    );
    AutoRouter.of(context).pop();
  }

  Padding _buildTextField(
      {String? hintText, TextInputType? keyboardType, required TextEditingController controller}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
      child: SizedBox(
        height: 50.h,
        child: PrimaryUnderlineTextField(
          controller: controller,
          hintText: hintText,
          keyboardType: keyboardType,
          textInputAction: TextInputAction.next,
        ),
      ),
    );
  }

  Widget _buildTitleDialog(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: 1.sw,
        height: 60.h,
        decoration: BoxDecoration(
          color: isDarkMode(context) ? const Color(0xff542000) : Theme.of(context).primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0.r),
            topRight: Radius.circular(20.0.r),
          ),
        ),
        child: Center(
          child: Text(
            'Filter Movies',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
