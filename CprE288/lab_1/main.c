/// Simple 'Hello, world' program
/**
 * This program prints "Hello, world" to the LCD screen
 * @author Chad Nelson
 * @date 06/26/2012
 *
 * updated: phjones 9/3/2019
 * Describtion: Added timer_init call, and including Timer.h
 */

#include "Timer.h"
#include "lcd.h"


int main (void) {

	timer_init(); // Initialize Timer, needed before any LCD screen fucntions can be called 
	              // and enables time functions (e.g. timer_waitMillis)

	lcd_init();   // Initialize the the LCD screen.  This also clears the screen. 

	// Clear the LCD screen and print "Hello, world" on the LCD
	//lcd_puts("Hello, world");

	char arr[] = "Microcontrollers are lots of fun!";
    rotate_banner(arr);

	// lcd_puts("Hello, world");// Replace lcd_printf with lcd_puts
                                 // step through in debug mode
                                 // and explain to TA how it
                                 // works


    
	// NOTE: It is recommended that you use only lcd_init(), lcd_printf(), lcd_putc, and lcd_puts from lcd.h.
    // NOTE: For time fuctions see Timer.h

	return 0;
}
// void rotate(char data[]){
//    char spaces[400] = "                   ";
//    strcat(spaces,data);
//    char temp[400] = "";
//            int i;
//            while(1){
//                timer_waitMillis(300);
//            for(i = 0; i<strlen(spaces);i++){
//               strncpy(temp, spaces+i, 20);
//               timer_waitMillis(300);
//               lcd_printf(temp);
//
//            }
//            }
//}



