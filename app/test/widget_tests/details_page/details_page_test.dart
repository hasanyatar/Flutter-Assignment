import 'package:app/production/data/models/response/caption/caption.dart';
import 'package:app/production/data/models/response/primary_image/primary_image.dart';
import 'package:app/production/data/models/response/title_text/title_text.dart';
import 'package:app/production/presentation/views/home/details_page/details_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app/production/data/models/response/results/title_results.dart';

void main() {
  testWidgets('DetailsPage should display Image when check image url (For correct url)',
      (WidgetTester tester) async {
    // Create a test title with some sample data
    TitleResults testTitle = TitleResults(
      primaryImage: PrimaryImage(
        url:
            'https://m.media-amazon.com/images/M/MV5BZDI4MmJiMmMtMzQ3Mi00N2Y0LTlkYmUtYmQ0ZTQ1NzVlZmVjXkEyXkFqcGdeQXVyMDUyOTUyNQ@@._V1_.jpg',
        caption: Caption(
            plainText: 'Darwin Karr and Gertrude McCoy in That Winsome Winnie Smile (1911)'),
      ),
      titleText: TitleText(text: 'That Winsome Winnie Smile'),
    );

    // Build the DetailsPage widget with the test title
    await tester.pumpWidget(ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            home: DetailsPage(title: testTitle),
          );
        }));

    expect(find.byType(DetailsPage), findsOneWidget);
    //* If testTitle url is correct, then the image should be displayed
    expect(find.byType(Image), findsOneWidget);
    //* url is not correct, then the svg image should be displayed
    expect(find.byType(SvgPicture), findsNothing);
    //* There is no icon in the appbar
    expect(find.byType(Icon), findsNothing);
    //* Verify that the title text and subtitle text are displayed. And finally appbar title is displayed
    expect(find.byType(Text), findsWidgets);
  });
}
