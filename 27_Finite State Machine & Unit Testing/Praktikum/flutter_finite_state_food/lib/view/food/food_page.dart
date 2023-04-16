import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_model/food_provider.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      var viewModel = Provider.of<MyFood>(context, listen: false).getAllFood();
      await viewModel;
    });
  }

  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<MyFood>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Food'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: body(modelView),
      ),
    );
  }

  Widget body(MyFood viewModel) {
    final isLoading = viewModel.state == FoodViewState.loading;
    final isError = viewModel.state == FoodViewState.error;

    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (isError) {
      return const Center(child: Text('Fail to Get Data!'));
    }

    return listFoodView(viewModel);
  }

  Widget listFoodView(MyFood modelView) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'List Food',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: modelView.food.length,
                      itemBuilder: (context, index) {
                        final foodData = modelView.food[index];
                        return ListTile(
                          trailing: Wrap(
                            spacing: 0.2,
                            alignment: WrapAlignment.end,
                            children: [
                              IconButton(
                                icon: const Icon(
                                  Icons.price_change,
                                  color: Color.fromARGB(255, 3, 133, 7),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          leading: const Icon(
                            Icons.rice_bowl,
                            color: Colors.orange,
                            size: 45,
                          ),
                          title: Text(
                            foodData.name,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                        );
                      },
                    )
                  ])),
        ),
      ],
    );
  }
}
