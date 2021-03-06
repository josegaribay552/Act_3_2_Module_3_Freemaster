/*
 * Copyright 2020 NXP
 * All rights reserved.
 *
 * NXP Confidential. This software is owned or controlled by NXP and may only be
 * used strictly in accordance with the applicable license terms. By expressly
 * accepting such terms or by downloading, installing, activating and/or otherwise
 * using the software, you are agreeing that you have read, and that you agree to
 * comply with and are bound by, such license terms. If you do not agree to be
 * bound by the applicable license terms, then you may not retain, install,
 * activate or otherwise use the software. The production use license in
 * Section 2.3 is expressly granted for this software.
 */

/*
 * Copyright 2020 NXP
 * All rights reserved.
 *
 *
 *This example uses polling method to read SW2 and SW3 pin status
 *While both buttons are not pressed Systems status will be open circuit and current equals to 0
 *While SW2 button is pressed then System status is short circuit and current equals to MAX
 *While SW3 button is pressed then System status is load increasing until reach max value of current
 */

#include "freemaster.h"
#include "sdk_project_config.h"
#include "stdbool.h"
#include "pins_driver.h"

#define EVB
#ifdef EVB
#define PCC_CLOCK	PCC_PORTD_CLOCK
#define LED0_PORT PTD
#define LED0_PIN  15
#define LED1_PORT PTD
#define LED1_PIN  16
#define SW2_PORT PTC
#define SW2_PIN  12
#define SW3_PORT PTC
#define SW3_PIN  13


#else
#define PCC_CLOCK	PCC_PORTC_CLOCK
#define LED0_PORT PTC
#define LED0_PIN  0
#define LED1_PORT PTC
#define LED1_PIN  1


#endif


/* Buttons global variable definition and initialization*/
volatile bool BtnSW2_Status =false ;   /*boolean type data to store btn status*/
volatile bool BtnSW3_Status =false ;   /*boolean type data to store btn status*/


pins_channel_type_t result1;         /*custom type to receive SW2_PIN value*/
pins_channel_type_t result2;         /*custom type to receive SW3_PIN value*/

typedef enum
{
	unknown = 0,
	open_circuit = 5,
	short_circuit = 10,
	load_increasing = 15
}Estado_t;

/* Macros for MAX or MIN current*/
#define MIN 0
#define MAX 50

/* System global variables */
unsigned char load;
Estado_t System_Status;


int valor=0;
void delay(volatile int cycles)
{
	/* Delay function - do nothing for a number of cycles */
	while(cycles--);
}

int main(void)
{
	status_t error;
	/* Configure clocks for PORT */

	error = CLOCK_DRV_Init(&clockMan1_InitConfig0);
	DEV_ASSERT(error == STATUS_SUCCESS);
	/* Set pins as GPIO */
	error = PINS_DRV_Init(NUM_OF_CONFIGURED_PINS0, g_pin_mux_InitConfigArr0);
	DEV_ASSERT(error == STATUS_SUCCESS);

	/* Set Output value LED0 & LED1 In this case both turn off*/
	PINS_DRV_SetPins(LED0_PORT, 1 << LED0_PIN);
	PINS_DRV_SetPins(LED1_PORT, 1 << LED1_PIN);


	/* LPUART1 initialization*/
	LPUART_DRV_Init(INST_LPUART_1, &lpUartState1, &lpuart_1_InitConfig0);

	INT_SYS_InstallHandler(LPUART1_RxTx_IRQn, FMSTR_Isr, NULL);

	/*Freemaster Init*/

	FMSTR_Init();


	for (;;)
	{

		//Btn_Polling operations

		/*To get a specific bit position status we make a bit mask operation with & simbol*/
		result1 = (PINS_DRV_ReadPins(SW2_PORT) & (1 << SW2_PIN));
		BtnSW2_Status = (bool)(result1);           /*cast to variable result*/

		result2 = (PINS_DRV_ReadPins(SW3_PORT) & (1 << SW3_PIN));
		BtnSW3_Status = (bool)(result2);           /*cast to variable result*/


		FMSTR_Poll();

		//FMSTR_Recorder();

		if(BtnSW2_Status)
		{
			load = MAX;
			System_Status = short_circuit;

		}
		else if(BtnSW3_Status)
		{


			if(load==MAX)
			{
				load=MAX;
				System_Status = short_circuit;
			}

			else{
				delay(150000);

				load++;
				System_Status = load_increasing;

			}
		}

		else{

			load = MIN;

			System_Status = open_circuit;

		}



	}
}
