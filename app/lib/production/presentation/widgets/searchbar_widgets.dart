import 'package:app/injection/injection.dart';
import 'package:app/production/presentation/blocs/titles_bloc/titles_bloc.dart';
import 'package:app/production/presentation/widgets/filter_dialog_widget.dart';
import 'package:app/production/utilities/themes/constants.dart';
import 'package:app/production/utilities/types/svg_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

typedef StringCallBack = void Function(String);

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key? key,
    this.hintText,
    this.prefixIcon,
    this.hasSuffixIcon,
    this.onChanged,
    this.color,
  }) : super(key: key);
  final String? hintText;
  final Widget? prefixIcon;
  final bool? hasSuffixIcon;
  final StringCallBack? onChanged;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    const hintText = 'Search Movies';
    return Container(
      color: color ?? getSearchThemeColor(context),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: TextField(
          onChanged: onChanged ?? _onchangedTextField,
          decoration: InputDecoration(
            hintText: this.hintText ?? hintText,
            prefixIcon: prefixIcon ??
                Icon(
                  Icons.search,
                  size: 25.h,
                ),
            suffixIcon: (hasSuffixIcon ?? false) ? _buildSuffixIconOfTextfield(context) : null,
          ),
        ),
      ),
    );

    // );
  }

  void _onchangedTextField(value) {
  }

  Padding _buildSuffixIconOfTextfield(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: InkWell(
        onTap: () => showFilterDialog(context),
        child: SvgPicture.asset(
          SvgImageTypes.sliders.fullPath,
          color: isDarkMode(context) ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  void showFilterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => FilterDialogWidget(),
    );
  }
}
