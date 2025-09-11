#include "C:\Users\HP\Desktop\Workspace\Training\Basic\Embedded_C\Day8\LED_HAL_project\LED_HAL_Project\HAL\hal_gpio.c"
#include "C:\Users\HP\Desktop\Workspace\Training\Basic\Embedded_C\Day8\LED_HAL_project\LED_HAL_Project\HAL\hal_gpio.h"


// put function declarations here:
int main(void){
  // Set PD4 as O/P
  DDRD |= (1 << LED_PIN);
  // Set PD2 as I/P
  DDRD &= ~(1 << BUT_PIN);

  PORTD |= (1 << BUT_PIN); // Enable pull-up on PD2
  PORTD &= ~(1 << LED_PIN); // Ensure LED is off initially


  while (1){
    // Check if button is pressed
    if (!(PIND & (1 << BUT_PIN))) {
      // Set PD4 high/LED ON
      PORTD |= (1 << LED_PIN);
      _delay_ms(500);

      // Set PD4 low/LED OFF
      PORTD &= ~(1 << LED_PIN);
      _delay_ms(500);

    } else {
      // Button is not pressed, turn off LED
      PORTD &= ~(1 << LED_PIN);
    } _delay_ms(100);
  }
}
