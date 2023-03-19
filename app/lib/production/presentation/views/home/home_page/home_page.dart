import 'package:app/production/utilities/components/loading/loading_widget.dart';
import 'package:app/production/presentation/blocs/titles_bloc/titles_bloc.dart';
import 'package:app/production/data/models/request/titles/titles_request.dart';
import 'package:app/production/utilities/components/dialogs/dialogs.dart';
import 'package:app/production/presentation/widgets/home_widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/injection/injection.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TitlesBloc>(
      create: (context) =>
          injector<TitlesBloc>()..add(GetTitles(filters: const TitlesRequest(page: 1))),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Movies List'),
        ),
        body: Column(
          children: [
            const SearchBarWidget(hasSuffixIcon: true),
            Expanded(
              child: Center(
                child: BlocBuilder<TitlesBloc, TitlesState>(builder: (context, state) {
                  return _pageRouting(context, state);
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _pageRouting(BuildContext context, TitlesState state) {
    if (state is TitlesLoading) {
      return const LoadingWidget();
    } else if (state is TitlesEmpty) {
      return const NoDataWidget();
    } else if (state is TitlesLoaded) {
      return TitlesListBuilder(titles: state.titles);
    } else if (state is NoInternetConnection) {
      return NoInternetDialog(onPressed: () {
        context.read<TitlesBloc>().add(GetTitles());
      });
    } else if (state is TitlesError) {
      return ErrorDialog(
          title: state.error?.response?.statusMessage ?? "",
          message: state.error?.message ?? "",
          onOkayPressed: () {
            context.read<TitlesBloc>().add(GetTitles());
          });
    } else {
      return TitlesListBuilder(titles: state.titles);
    }
  }
}
