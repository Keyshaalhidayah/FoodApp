import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../widgets/app_barrr_widget.dart';

class ProductTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarrrWidget(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 28),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade400,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'Add Data',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Text('Foto',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold))),
                    Expanded(
                        flex: 3,
                        child: Text('Nama Produk',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold))),
                    Expanded(
                        flex: 2,
                        child: Text('Harga',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold))),
                    Expanded(
                        flex: 1,
                        child: Text('Aksi',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold))),
                  ],
                ),
              ),
              Divider(color: Colors.black),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset(
                          '../assets/burger.jpeg',
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 3,
                      child: Text(
                        'Burger King Medium',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Rp. 50.000,00',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: 20,
                        ),
                        onPressed: () {
                          // Handle delete action
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.black),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset(
                          '../assets/teh.jpeg',
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 3,
                      child: Text(
                        'Teh Botol',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Rp. 50.000,00',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: 20,
                        ),
                        onPressed: () {
                          // Handle delete action
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.grey.shade600),
            ],
          ),
        ),
      ),
    );
  }
}