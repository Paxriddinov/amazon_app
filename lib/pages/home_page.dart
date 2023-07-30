import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF018197),
        foregroundColor: Colors.white,
        title: Container(
          width: 100,
          decoration: const BoxDecoration(),
          child: Image.asset('assets/images/amazon_logo.png'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.mic),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          const SizedBox(width: 20)
        ],
      ),
      drawer: const Drawer(),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          children: [
            Container(
              height: 55,
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              decoration: const BoxDecoration(
                color: Color(0xFF018197),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: const TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: Color(0xFF018197),
                      hintText: 'What are you looking for?',
                      hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon:
                          Icon(Icons.camera_alt, color: Color(0xFF018197))),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  //Location Mark
                  Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: const BoxDecoration(color: Colors.blueGrey),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Deliver to Korea, Republic of',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  //Car image with statistics
                  Container(
                    color: Colors.white,
                    height: 140,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(70),
                                bottomRight: Radius.circular(70),
                              ),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/image_1.jpeg'),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          width: 200,
                          decoration: const BoxDecoration(color: Colors.white),
                          child: const Center(
                            child: Text(
                              'We ship 45 million products',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  //Sign in part
                  Container(
                    padding: const EdgeInsets.all(15),
                    height: 150,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Sign in for the best experience',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange, elevation: 0),
                            onPressed: () {},
                            child: const Text(
                              'Sign in',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          'Create an account',
                          style: TextStyle(fontSize: 18, color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    height: MediaQuery.of(context).size.width - 30,
                    color: Colors.white,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deal of the Day',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 260,
                          width: double.infinity,
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/item_7.jpeg'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Up to 31% off APC UPS Battery Back',
                            style: TextStyle(fontSize: 16)),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '\$10.99 - \$79.9',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    height: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Best sellers in Electronics',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(
                                      child: Image.asset(
                                          'assets/images/item_1.jpeg', fit: BoxFit.cover),
                                    ),
                                    const SizedBox(height: 5,),
                                    Expanded(
                                      child: Image.asset(
                                          'assets/images/item_3.jpeg', fit: BoxFit.cover),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 5,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(
                                      child: Image.asset(
                                          'assets/images/item_4.jpeg', fit: BoxFit.cover),
                                    ),
                                    const SizedBox(height: 5,),
                                    Expanded(
                                      child: Image.asset(
                                          'assets/images/item_5.jpeg', fit: BoxFit.cover),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    height: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Top products in Camera',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(
                                      child: Image.asset(
                                          'assets/images/item_7.jpeg', fit: BoxFit.cover),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(
                                      child: Image.asset(
                                          'assets/images/item_4.jpeg', fit: BoxFit.cover),
                                    ),
                                    const SizedBox(width: 5,),
                                    Expanded(
                                      child: Image.asset(
                                          'assets/images/item_5.jpeg', fit: BoxFit.cover),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
