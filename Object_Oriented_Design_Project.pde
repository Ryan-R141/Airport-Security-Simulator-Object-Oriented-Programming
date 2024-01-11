//Airport Security simualtor 
Tourist tommy;
AirportSecurity yyzSecurity;
Suitcase st;
Visa vt;
Passport pt; 
String todaysdate = "03-20-2023";
int bribe = 700;
Boolean detained = false; 
Boolean forgeddocuments = false;
Boolean passportexpired = false;
Boolean visaexpired = false;
Boolean bagscheckedin = true; 
Boolean bribefrontdesk = false;
Boolean bribesecurity = false; 

void setup() {
  pt = new Passport("Tommy", "English", "1023", "05-09-2024", "01-01-2005", "London");
  vt = new Visa("Tommy", "English", "1023", "Japan", "Travel", "1433", "04-17-2023");
  st = new Suitcase();
  tommy = new Tourist("Ryan", "Canadian", pt, vt, st);
  yyzSecurity = new AirportSecurity("Pearson Airport"); 
  
  
  tommy.pack(st);
  
  AirportSecurity();
}

// Airport security 
// checks documents, their expiry dates, and their items in their bag before boarding the plane
void AirportSecurity() {
  println(yyzSecurity.airportName);
  yyzSecurity.checkdocuments(tommy); 
  if (!forgeddocuments || bribefrontdesk) {
    yyzSecurity.checkdocumentsexpiry(tommy, todaysdate);
    if (!passportexpired && !visaexpired)
    yyzSecurity.checkbags(tommy);
      if (bagscheckedin || bribesecurity)
        yyzSecurity.boardingplane();
  }
  
  
}
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
