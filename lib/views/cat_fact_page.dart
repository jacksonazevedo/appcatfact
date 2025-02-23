import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/cat_fact_viewmodel.dart';
import '../repositories/cat_fact_repository.dart';

class CatFactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CatFactViewModel>(
      create: (_) => CatFactViewModel(repository: CatFactRepository()),
      child: Scaffold(
        appBar: AppBar(title: Text('Cat Facts')),
        body: Consumer<CatFactViewModel>(
          builder: (context, viewModel, child) {
            switch (viewModel.status) {
              case LoadingStatus.loading:
                return Center(child: CircularProgressIndicator());
              case LoadingStatus.error:
                return Center(
                  child: Text(
                    'Erro ao realizar requisição: ${viewModel.errorMessage}',
                  ),
                );
              case LoadingStatus.completed:
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      viewModel.catFact?.fact ?? 'Nenhum dado disponível',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}
