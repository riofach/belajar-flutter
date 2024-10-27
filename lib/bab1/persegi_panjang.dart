import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalkulator Persegi Panjang',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const RectangleCalculator(),
    );
  }
}

class RectangleCalculator extends StatefulWidget {
  const RectangleCalculator({super.key});

  @override
  _RectangleCalculatorState createState() => _RectangleCalculatorState();
}

class _RectangleCalculatorState extends State<RectangleCalculator> {
  final _formKey = GlobalKey<FormState>();
  final _lengthController = TextEditingController();
  final _widthController = TextEditingController();
  double _luas = 0;
  double _keliling = 0;

  // Fungsi menghitung luas dan keliling
  void _calculateRectangle() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        double length = double.parse(_lengthController.text);
        double width = double.parse(_widthController.text);
        _luas = length * width;
        _keliling = 2 * (length + width);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menghitung Persegi Panjang'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Input field untuk panjang
              TextFormField(
                controller: _lengthController,
                decoration: const InputDecoration(
                  labelText: 'Panjang',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon masukkan panjang';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Mohon masukkan angka yang valid';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              // Input field untuk lebar
              TextFormField(
                controller: _widthController,
                decoration: const InputDecoration(
                  labelText: 'Lebar',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon masukkan lebar';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Mohon masukkan angka yang valid';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _calculateRectangle,
                child: const Text('Hitung'),
              ),
              const SizedBox(height: 16),
              Text(
                'Luas: ${_luas.toStringAsFixed(2)}',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                'Keliling: ${_keliling.toStringAsFixed(2)}',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _lengthController.dispose();
    _widthController.dispose();
    super.dispose();
  }
}
