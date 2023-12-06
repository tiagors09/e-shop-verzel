import 'package:flutter/material.dart';
import 'package:frontend/car.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: Column(
          children: [
            const Text(
              'E Shop Verzel',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            const Text('Mais que negócios, famos amigos'),
            ListTile(
              leading: const Icon(Icons.car_repair),
              title: const Text('Comprar carro'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.sell),
              title: const Text('Vender carro'),
              onTap: () {},
            )
          ],
        )),
        appBar: AppBar(
          title: const Text('E Shop Verzel'),
          backgroundColor: Colors.amber,
        ),
        body: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 24, top: 8, right: 24, bottom: 8),
                  child: TextField(
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                        label: Text('Busque por marca, modelo, ano, cor...'),
                        icon: Icon(Icons.search)),
                  ),
                ),
                const Text('Ordenar por:'),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OrderChip(
                      label: 'Menor valor',
                    ),
                    OrderChip(
                      label: 'Maior valor',
                    ),
                    OrderChip(
                      label: 'Marca',
                    ),
                    OrderChip(
                      label: 'Modelo',
                    ),
                  ],
                ),
                Expanded(child: CarList())
              ],
            )));
  }
}

class CarList extends StatelessWidget {
  final List<Car> cars = [
    Car(1, 'Gol', 'Wolks', 'Sport', 'assets/gol.png', 2.600),
    Car(1, 'Gol', 'Wolks', 'Sport', 'assets/gol.png', 2.600),
    Car(1, 'Gol', 'Wolks', 'Sport', 'assets/gol.png', 2.600),
    Car(1, 'Gol', 'Wolks', 'Sport', 'assets/gol.png', 2.600),
    Car(1, 'Gol', 'Wolks', 'Sport', 'assets/gol.png', 2.600),
    Car(1, 'Gol', 'Wolks', 'Sport', 'assets/gol.png', 2.600),
    Car(1, 'Gol', 'Wolks', 'Sport', 'assets/gol.png', 2.600),
    Car(1, 'Gol', 'Wolks', 'Sport', 'assets/gol.png', 2.600),
    Car(1, 'Gol', 'Wolks', 'Sport', 'assets/gol.png', 2.600),
    Car(1, 'Gol', 'Wolks', 'Sport', 'assets/gol.png', 2.600),
    Car(1, 'Gol', 'Wolks', 'Sport', 'assets/gol.png', 2.600),
    Car(1, 'Gol', 'Wolks', 'Sport', 'assets/gol.png', 2.600),
    Car(1, 'Gol', 'Wolks', 'Sport', 'assets/gol.png', 2.600),
    Car(1, 'Gol', 'Wolks', 'Sport', 'assets/gol.png', 2.600),
    Car(1, 'Gol', 'Wolks', 'Sport', 'assets/gol.png', 2.600),
    Car(1, 'Gol', 'Wolks', 'Sport', 'assets/gol.png', 2.600),
    Car(1, 'Gol', 'Wolks', 'Sport', 'assets/gol.png', 2.600),
  ];

  CarList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cars.length,
        itemBuilder: (_, index) {
          return SizedBox(width: 10.0, child: CarCard(carro: cars[index]));
        });
  }
}

class CarCard extends StatelessWidget {
  final Car carro;

  const CarCard({super.key, required this.carro});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
          child: Column(children: [
        SizedBox(
            width: 200,
            height: 100,
            child: Image.asset(
              carro.foto,
              fit: BoxFit.cover,
            )),
        Text('${carro.nome} - ${carro.marca} - ${carro.modelo}'),
        Text(
          'R\$ ${carro.preco.toStringAsFixed(3)}',
          style: const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        )
      ])),
      onTap: () => print('tap'),
    );
  }
}

class OrderChip extends StatelessWidget {
  final String label;

  const OrderChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('ordenando por $label'),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(label),
      ),
    );
  }
}
