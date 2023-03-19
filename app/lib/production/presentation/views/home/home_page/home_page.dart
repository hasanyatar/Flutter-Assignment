import 'package:app/injection/injection.dart';
import 'package:app/production/data/models/request/titles/titles_request.dart';
import 'package:app/production/presentation/blocs/titles_bloc/titles_bloc.dart';
import 'package:app/production/presentation/widgets/nodata_widget.dart';
import 'package:app/production/presentation/widgets/searchbar_widgets.dart';
import 'package:app/production/presentation/widgets/titles_list_builder_widget.dart';
import 'package:app/production/utilities/components/dialogs/error_dialogs.dart';
import 'package:app/production/utilities/components/dialogs/no_internet_dialog.dart';
import 'package:app/production/utilities/types/lottie_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //Text('${Env.baseUrl}'),
    return BlocProvider<TitlesBloc>(
      create: (context) =>
          injector<TitlesBloc>()..add(GetTitles(filters: const TitlesRequest(page: 1))),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Movies List'),
          // ignore: prefer_const_literals_to_create_immutables
        ),
        body: Column(
          children: [
            const SearchBarWidget(hasSuffixIcon: true),
            Expanded(
              child: Center(
                child: BlocBuilder<TitlesBloc, TitlesState>(
                  builder: (context, state) {
                    if (state is TitlesLoading) {
                      return Lottie.asset(
                        LottieTypes.loading.fullPath,
                        repeat: true,
                        width: 0.4.sw,
                        fit: BoxFit.fitWidth,
                      );
                    } else if (state is TitlesLoaded) {
                      return TitlesListBuilder(titles: state.titles);
                    } else if (state is UpdatedTitles) {
                      return TitlesListBuilder(titles: state.titles);
                    } else if (state is TitlesEmpty) {
                      return const NoDataWidget();
                    } else if (state is NoInternetConnection) {
                      return NoInternetDialog(onPressed: () {
                        context.read<TitlesBloc>().add(GetTitles());
                      });
                    } else if (state is TitlesError) {
                      return ErrorDialog(
                          title: state.error?.response?.statusMessage ?? "",
                          message: state.error?.message ?? "",
                          onOkayPressed: () {
                            // call again service to get data
                            context.read<TitlesBloc>().add(GetTitles());
                          });
                    } else {
                      return TitlesListBuilder(titles: state.titles);
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
