import 'package:bloc_teaching_intern/src/color/data/logic/logic.dart';
import 'package:bloc_teaching_intern/src/color/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorListPage extends StatelessWidget {
  const ColorListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color List'),
      ),
      body: Column(
        children: [
          const ColorPreviewerView(),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                final color = Colors.amber[index * 100];

                return ListTile(
                  title: Text('Color $index'),
                  leading: Container(
                    width: 50,
                    height: 50,
                    color: color,
                  ),
                  onTap: () {
                    if (color != null) {
                      context.read<ColorCubit>().changeColor(color);
                    }
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
