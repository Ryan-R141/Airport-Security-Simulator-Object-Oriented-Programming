class Passport {
  
  //Fields
  String name;
  String nationality;
  String dateofbirth;
  String placeofbirth;
  String passportnumber;
  String expirydate;

  
  //Constructors
  Passport (String n, String na, String pn, String ex, String db, String pb) {
    this.name = n;
    this.nationality = na; 
    this.dateofbirth = db;
    this.placeofbirth = pb;
    this.passportnumber = pn;
    this.expirydate = ex;
  }

}
