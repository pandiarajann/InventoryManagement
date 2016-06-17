library invoice;

class Invoice {

  final String itemCode;
  final String date;
  final String productName;
  final String description;
  int quantity;
  double unitPrice;

  Invoice(this.itemCode, this.date, this.productName, this.description, this.quantity, this.unitPrice);

  Map<String, dynamic> toJson() => <String, dynamic> {
    "itemCode":itemCode,
    "date":date,
    "productName":productName,
    "description":description,
    "quantity":quantity,
    "unitPrice":unitPrice
  };

  Invoice.fromJson(Map<String, dynamic> json) : this(json['itemCode'], json['date'], json['productName'],
      json['description'], json['quantity'], json['unitPrice']);
}