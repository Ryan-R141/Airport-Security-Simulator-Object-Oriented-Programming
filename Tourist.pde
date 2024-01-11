class Tourist {
  
  //Fields
  String name;
  String nationality;
  Passport p;
  Visa v; 
  Suitcase s; 
  
  //Constructors
  Tourist (String n, String na, Passport p, Visa v, Suitcase s) {
    this.name = n;
    this.nationality = na; 
    this.p = p;
    this.v = v;
    this.s = s;
   
  }
  
  //Methods
  
  //packs what they are taking on the flight
  // items from text file
  void pack(Suitcase s) {
    String[] suitcaseitems = loadStrings("suitcase items.txt");
    
    // randomly puts items in their bag
    for (int i=0; i < suitcaseitems.length; i++) {
      int a = int(random(1, 10));
      if (a > 7) {
        s.items.add(suitcaseitems[i]); 
      }
    }
    
    String itemspacked = " ";
    for (int i=0; i < s.items.size(); i++) {
     itemspacked = itemspacked + s.items.get(i) + "," + " "; 
    }
    
    println("you have packed" + itemspacked + "in your bag.");
  }
}
