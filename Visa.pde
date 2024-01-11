class Visa {
  
  //Fields
  String name;
  String nationality;
  String passportnumber;
  String visacountry;
  String visatype; 
  String visanumber;
  String expirydate; 
  
  //Constructors
  Visa(String n, String na, String pn, String vc, String vt, String vn, String ex) {
 
    this.name = n;
    this.nationality = na;
    this.passportnumber = pn;
    this.visacountry = vc; 
    this.visatype = vt; 
    this.visanumber = vn;
    this.expirydate = ex;
  }
}
