import 'package:app/injection/injection.dart';
import 'package:app/production/data/models/response/primary_image/primary_image.dart';
import 'package:app/production/data/models/response/results/results.dart';
import 'package:app/production/data/models/response/results/title_results.dart';
import 'package:app/production/data/remote/titles/service/titles_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app/production/data/models/request/titles/titles_request.dart';
import 'package:app/production/data/models/response/titles/titles.dart';

void main() {
  group('TitlesService tests', () {
    late TitlesService service;

    setUpAll(() async {
      await dotenv.load(fileName: ".env");
      initializeDependencies();
      service = injector<TitlesService>();
    });

    test('getList should return Titles model if successful', () async {
      const request = TitlesRequest(page: 1);

      final response = await service.getList(request);

      expect(response, isA<Titles>());
      expect(response?.page, "1");
      expect(response?.results, isA<List<TitleResults>>());
    });
    test('getById should return Results model if successful', () async {
      final response = await service.getById("tt0001539");

      expect(response, isA<Results>());
      expect(response?.titleResults?.titleText?.text, "Caïn et Abel");
      expect(response?.titleResults?.primaryImage, isA<PrimaryImage>());
      expect(response?.titleResults?.primaryImage?.id, "rm1311052544");
    });
  });
}
