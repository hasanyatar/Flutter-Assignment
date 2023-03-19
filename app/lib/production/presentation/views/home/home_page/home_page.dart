import 'package:app/config/env.dart';
import 'package:app/production/utilities/routes/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
