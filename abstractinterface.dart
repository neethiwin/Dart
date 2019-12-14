
import 'package:Dart/current.dart';
import 'package:Dart/saving.dart';
import 'package:Dart/iaccount.dart';

void main(){
 IAccount current = Current('Nitesh', 'Suresh');
 IAccount savings = Saving('Nitesh', 'Suresh');
 print(current.open());
 print(current.close());
 print(savings.open());
 print(savings.close());

}



abstract class Account{
  bool open() {
    print('open general account');
    return true;
  }
  bool close() {
    print('close general account');
    return true;
  }
}

import 'package:Dart/account.dart';
import 'package:Dart/iaccount.dart';

class Current extends Account implements IAccount{
  @override
  String firstname;
  @override
  bool isActive = true;
  @override
  String lastname;
  Current(this.firstname,this.lastname);

}

class IAccount {
  String firstname;
  String lastname;
  bool isActive; 
  bool open() => false;
  bool close() => false;
}

import 'package:Dart/iaccount.dart';

class Saving implements IAccount{
  @override
  String firstname;
  @override
  bool isActive = true;
  @override
  String lastname;
  Saving(this.firstname, this.lastname);

  @override
  bool close() {
    print('closing savings account');
    return true;
  }

  @override
  bool open() {
    print('opening savings account');
    return true;
  }

}
