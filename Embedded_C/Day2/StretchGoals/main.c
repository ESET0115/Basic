#include <stdio.h> // Standard input/output library (for printf)

// Assuming a microcontroller environment where GPIO is configured for LED
// For a real embedded system, these would be register accesses
#define LED_PIN 5 	// Example LED pin number

// Function to simulate a delay (blocking delay)
void delay_ms(int ms) {
    volatile long i, j; 	// Use volatile to prevent optimization
    for (i = 0; i < ms; i++) {
        for (j = 0; j < 1000; j++) {
            // Adjust this value for desired delay
            // Do nothing, just waste time
            int x=0;
            x++;
        }
    }
}


int main() {
    int counter = 1; 	// Initialize counter variable
    int button_pressed; 	// Button press state
    printf("Enter button pressed state (1 or 0): ");
    scanf("%d", &button_pressed);

    int max_blinks = 1000; 	// Maximum number of blinks

    // Loop to blink the LED
    // The for loop iterates a known number of times (max_blinks)
    for (counter = 1; counter < max_blinks; counter++) {
        
        // Conditional statement (if-else)
        // Checks if the current counter value is less than the button pressed state
        if (button_pressed == 1) {
            
            // Simulate turning LED ON (e.g., set pin high)
            printf("LED ON (Counter: %d)\n", counter); 	// For simulation
            delay_ms(200); 	// Delay for 200 milliseconds

            // Simulate turning LED OFF (e.g., set pin low)
            printf("LED OFF (Counter: %d)\n", counter); 	// For simulation
            delay_ms(200); 	// Delay for 200 milliseconds
        }
        //else 
        else {
            // If the counter is at or above the threshold
            printf("Counter reached threshold or above: %d\n", counter);
            delay_ms(500); 	// Longer delay
        }

        // Increment operator (++) used in the for loop condition
        // counter++ is equivalent to counter = counter + 1;
    }
    

    // Another conditional statement demonstrating logical operator
    // if (counter >= button_pressed && counter <= max_blinks) {
    //     // Logical AND operator (&&)
    //     printf("Blinking sequence completed.\n");
    
    // }
    // Example of a while loop
    // int countdown = 3;
    //while loop for countdown
    // while (countdown > 0)
    // {
    //     printf("Countdown: %d\n", countdown);
    //     countdown--; 	// Decrement operator (--)
    //     delay_ms(1000); 	// Delay timer
    // }
    
        
    
    // printf("Liftoff!\n");

    return 0; 	// Indicate successful execution
} 