import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipe.dart';

class RecipeDetails extends StatefulWidget {
  final String lable;
  final String imageUrl;
  final Recipe recipe;
  const RecipeDetails(
      {Key? key,
      required this.lable,
      required this.imageUrl,
      required this.recipe})
      : super(key: key);

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  @override
  int _sliderVal = 1;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.lable),
      ),
      body: SafeArea(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(
                  widget.imageUrl,
                  height: 500,
                  width: 500,
                ),
                const SizedBox(
                  height: 3,
                  width: 5,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: widget.recipe.ingredient.length,
                    itemBuilder: (ctx, i) {
                      final ingradient = widget.recipe.ingredient[i];
                      return Text(
                        '${ingradient.quantity * _sliderVal} ${ingradient.meausure} ${ingradient.name}',
                        style: const TextStyle(fontSize: 30),
                      );
                    },
                  ),
                ),
                Slider(
                  min: 1,
                  max: 10,
                  divisions: 10,
                  activeColor: Colors.blue,
                  inactiveColor: Colors.pink,
                  value: _sliderVal.toDouble(),
                  onChanged: (val) {
                    setState(() {
                      _sliderVal = val.toInt();
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
