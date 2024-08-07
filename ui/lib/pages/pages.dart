import 'package:flutter/material.dart';
import 'package:ui/config/app_constant.dart';

class QueeriPage extends StatelessWidget {
  const QueeriPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 40,
            left: 20,
            child: Icon(
              Icons.scatter_plot,
              size: 90,
              color: Colors.white,
            ),
          ),
          Positioned(
            bottom: 100,
            right: 20,
            child: Icon(
              Icons.scatter_plot,
              size: 90,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: -90,
            right: -90,
            child: CircleAvatar(
              radius: 120,
              backgroundColor: Colors.white,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppConstant.appName,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(height: 100),
              TextFormField(
                validator: (value) => value == '' ? "Fill it first" : null,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(120),
                    ),
                    isDense: true,
                    hintText: "Student Grading's here"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Count'),
              ),
              const SizedBox(height: 20),
              TextFormField(
                validator: (value) => value == '' ? "Fill it first" : null,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(120),
                    ),
                    isDense: true,
                    hintText: "Birthday Cake's here"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Count'),
              ),
              const SizedBox(height: 20),
              TextFormField(
                validator: (value) => value == '' ? "Fill it first" : null,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(120),
                    ),
                    isDense: true,
                    hintText: "Candies' here"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Count'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
