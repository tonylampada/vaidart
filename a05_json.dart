import 'dart:convert';

String s = """{
  "Comment": "CREATE/DELETE/UPSERT a record ",
  "Changes": [
    {
      "Action": "CREATE",
      "ResourceRecordSet": {
        "Name": "a.example.com",
        "Type": "A",
        "TTL": 300,
        "ResourceRecords": [
          {
            "Value": "4.4.4.4"
          }
        ]
      }
    }
  ]
}""";

void main() {
  var o = jsonDecode(s);
  print(s);
  print(o);
  print(o.runtimeType);
  s = jsonEncode(o);
  print(s);
  print(o?['Comment']);
  print(o['Changes'][0]);
  print(o?['Changes'][0]?['ResourceRecordSet']);
  print(o?['Changes'][0]?['ResourceRecordSet']['banana']?['nanica']);
}
