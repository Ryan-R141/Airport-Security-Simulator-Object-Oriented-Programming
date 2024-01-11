class AirportSecurity {
  
  //Fields
  String airportName;
  
  //Constructors
  AirportSecurity(String an) {
    this.airportName = an;
    
  }
  //Methods
  
  // checks items in bag 
  void checkbags( Tourist t) {
    println("Please place your bags to be searched.");
    println("Searching...");
    
    // list of contraband items from textfile
    String[] contrabanditems =  loadStrings("contraband items.txt");
    ArrayList<String> illegalitems = new ArrayList<String>(); 

    // checks if the user has contraband items
    // adds their contraband items to illegal items 
    for (int i=0; i < contrabanditems.length; i++) {
      for (int a=0; a < t.s.items.size(); a++) { 
        if (contrabanditems[i].equals(t.s.items.get(a))) {
          illegalitems.add(contrabanditems[i]);
        }
      }
    }
    
    // if they have contraband items
    if (illegalitems.size() > 0) {
      bagscheckedin = false; 
      println("You have contraband items. You can't board the plane.");
       
      // if they have drugs
      for (int i=0; i < illegalitems.size(); i++) {
        int a = int(random(1, 10));
        if (illegalitems.get(i).equals("drugs")) {
          detained = true; 
          println("The drug sniffing dog has found " + a + " grams of cocaine.");
          println("You have been arrested.");
          
          // if they are detained, bribe the security guards
          if (detained) 
            if (bribe > 500) {
              bribesecurity = true; 
              println("You have bribed the security guard with " + bribe + " dollars.");
              println("The Security looks the other way and the security dog gets a dog treat for being a good boy.");
            }
            else
              println("Did you really think you could bribe the airport security?");
          }
       }
     }
     
     // their items are good and they don't have contraband
     else {
        println("The search is finished, you are good to go.");
     }
  }
  
  // checks documents to see if their passport matches their visa
  void checkdocuments(Tourist t) {
    
    // if their name or nationality on their passport and visa don't match
    if (t.p.name != t.v.name || t.p.passportnumber != t.v.passportnumber) {
      forgeddocuments = true;
      detained = true;
      
      if (forgeddocuments) 
        println("Your passport does not match your visa.");
        println("You have been detained.");
        
        // if detained, bribe the front desk
        if (bribe > 500) {
          bribefrontdesk = true; 
            println("You have bribed the front desk worker with " + bribe + " dollars.");
            println("The front desk worker looks the other way.");
        }
        else {
            println("Did you really think you could bribe the airport security?");
    }
  }
  }
  
  // checks if their passport or visa is expired 
  void checkdocumentsexpiry(Tourist t, String td) {
    
    // splits into years, months and days
    String[] passport = split(t.p.expirydate, "-"); 
    String[] visa = split(t.v.expirydate, "-");
    String[] todaydate = split(td, "-");
    
    // checks passport
    // checks year, month and day
    if (int(passport[2]) < int(todaydate[2])) {
      passportexpired = true;
    }
    
    else {
      if (int(passport[0]) < int(todaydate[0]) && int(passport[2]) == int(todaydate[2])) {
        passportexpired = true;
      }
    
      else {
        if (int(passport[1]) < int(todaydate[1]) && int(passport[0]) == int(todaydate[0])) {
          passportexpired = true;
        }
      }
    }
  
    // checks visa
    // checks year, month and days
    if (int(visa[2]) < int(todaydate[2])) {
      visaexpired = true;
    }
    
    else {
      if (int(visa[0]) < int(todaydate[0]) && int(visa[2]) == int(todaydate[2])) {
        visaexpired = true;
      }
      
      else {
        if (int(visa[1]) < int(todaydate[1]) && int(visa[0]) == int(todaydate[0])) {
          visaexpired = true;
        }
      }
    }
   
   // if passport or visa is expired or valid
   if (passportexpired) {
     if (visaexpired) {
       println("Your passport and visa has expired.");
     }
     else {
       println("Your passport has expired.");
     }
   }
   
   else 
     if (visaexpired) {
       println("Your visa has expired.");
     }
     else {
       println("Your passport and visa are valid.");
     }
}

// board the plane 
// generates random airline 
  void boardingplane() {
    String[] airline =  loadStrings("airlines.txt");
    int a = int(random(0, airline.length));
    String airway = airline[a];
    println("Welcome aboard " + airway + " Flight 330.");
  }
  
  }
