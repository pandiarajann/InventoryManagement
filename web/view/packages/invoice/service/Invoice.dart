library invoice;

class Invoice {

  String itemCode;
  String date;
  String productName;
  String description;
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