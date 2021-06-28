import 'package:flutter/material.dart';

class DetailProduk extends StatefulWidget {
  final List list;
  final int index;
  DetailProduk({this.index, this.list});

  @override
  _DetailProdukState createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DETAIL PRODUK")),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Card(
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "${widget.list[widget.index]['nama']}",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                  ),
                  Text(
                    "Harga : Rp. ${widget.list[widget.index]['harga']}",
                    style: TextStyle(fontSize: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                  ),
                  Text(
                    "Stok    :${widget.list[widget.index]['qty']}",
                    style: TextStyle(fontSize: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                  ),
                  Text(
                    "Deskripsi: \n${widget.list[widget.index]['catatanPenjual']}",
                    style: TextStyle(fontSize: 15),
                  ),
                 
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
