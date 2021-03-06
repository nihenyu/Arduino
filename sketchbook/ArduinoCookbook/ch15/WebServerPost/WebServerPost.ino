/*
 * WebServerPost sketch
 *
 */
#include <SPI.h> 
#include <Ethernet.h>
#include <TextFinder.h>

byte mac[] = { 0x90, 0xA2, 0xDA, 0x0B, 0x00, 0x26 }; // endereço MAC
IPAddress ip(192,168,1,100); // endereço IP do EthernetShield na rede

EthernetServer server(80); // declarar o Server
EthernetClient client; // declarar Client

char buffer[8];

void setup()
{
  Serial.begin(9600);
  Ethernet.begin(mac, ip);
  server.begin();
  delay(3000);
  Serial.println("Ready");
}

void loop()
{
  EthernetClient client = server.available();
  if (client) {
    TextFinder  finder(client );
    int type = 0;
    while (client.connected()) {
      if (client.available()) {
        // GET, POST, or HEAD
        if(finder.getString("","/", buffer,sizeof(buffer))){ 
          if(strcmp(buffer,"POST ") == 0){
            finder.find("\n\r"); // skip to the body
            // find string starting with "pin", stop on first blank line
            // the POST parameters expected in the form pinDx=Y
            // where x is the pin number and Y is 0 for LOW and 1 for HIGH
            while(finder.findUntil("pinD", "\n\r")){
              int pin = finder.getValue();       // the pin number
              int val = finder.getValue();       // 0 or 1
              pinMode(pin, OUTPUT);
              digitalWrite(pin, val);
            }
          }
          sendHeader(client,"Post example");
          //create HTML button to control pin 8
          client.println("<h2>Click buttons to turn pin 8 on or off</h2>");
          client.print(
            "<form action='/' method='POST'><p><input type='hidden' name='pinD8'");
          client.println(" value='0'><input type='submit' value='Off'/></form>");

          //create HTML button to turn on pin 8
          client.print(
            "<form action='/' method='POST'><p><input type='hidden' name='pinD8'");
          client.print(" value='1'><input type='submit' value='On'/></form>");
          client.println("</body></html>");
          client.stop();
        }
        break;
      }
    }
    // give the web browser time to receive the data
    delay(1);
    client.stop();
  }
}

void sendHeader(EthernetClient client, char *title)
{
  // send a standard http response header
  client.println("HTTP/1.1 200 OK");
  client.println("Content-Type: text/html");
  client.println();
  client.print("<html><head><title>");
  client.print(title);
  client.println("</title><body>");
}
      
    
