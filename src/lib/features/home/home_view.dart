import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:gap/gap.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        actions: [
          IconButton(
            icon: const Icon(Icons.science),
            onPressed: viewModel.toggleScientificMode,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(16),
                alignment: Alignment.bottomRight,
                child: Text(
                  viewModel.displayText,
                  style: const TextStyle(
                      fontSize: 48, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            if (viewModel.isScientificMode)
              Expanded(
                flex: 4,
                child: GridView.builder(
                  padding: const EdgeInsets.all(16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemCount: viewModel.scientificButtons.length,
                  itemBuilder: (context, index) {
                    final button = viewModel.scientificButtons[index];
                    return MaterialButton(
                      color: Colors.blue.shade100,
                      child: Text(button),
                      onPressed: () => viewModel.onButtonPressed(button),
                    );
                  },
                ),
              ),
            Expanded(
              flex: 4,
              child: GridView.builder(
                padding: const EdgeInsets.all(16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: viewModel.buttons.length,
                itemBuilder: (context, index) {
                  final button = viewModel.buttons[index];
                  return MaterialButton(
                    color: Colors.blue.shade100,
                    child: Text(button),
                    onPressed: () => viewModel.onButtonPressed(button),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
