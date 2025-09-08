#include <avr/io.h>
#include <util/delay.h>

#define LED_PIN PD4


// put function declarations here:
int main(void){
  // Set PD4 as O/P
  DDRD |= (1 << LED_PIN);

  while (1){
    // Set PD4 high/LED ON
    PORTD |= (1 << LED_PIN);
    _delay_ms(500);

    // Set PD4 low/LED OFF
    PORTD &= ~(1 << LED_PIN);
    _delay_ms(500);
  }
}
