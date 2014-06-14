#include "hw_profile.h"
#include "baudrate.h"
#include "uart1_p.h"

void uart_put(unsigned char ch)
{
  /* wait for empty buffer */
  while (U1STAbits.UTXBF == 1);
  U1TXREG = ch;
}

unsigned char uart_put_get(unsigned char ch)
{
  unsigned char ret;
  /* wait for empty buffer */
  while (U1STAbits.UTXBF == 1);
  U1TXREG = ch;

  while (U1STAbits.URXDA == 0);
  ret = U1RXREG;


  return ret;
}

void uart_init_115200(void)
{
  U1STA = 0;
  U1MODE = 0;
  U1BRG =  FCY / 4 / 115200UL - 1;;
  U1MODEbits.BRGH = 1;
  U1MODEbits.UARTEN = 1;
  U1STAbits.UTXEN = 1;

}

void uart_init(void)
{
  /* Disable UART1 Tx/Rx interrupts */
  _U1RXIE = 0;
  _U1TXIE = 0;

  /* Initialize UART1 */
  U1BRG = BAUDRATEREG;

  U1MODE = 0;
  U1MODEbits.UARTEN = 1;
  U1MODEbits.BRGH = BRGH_CONST;

  U1STA = 0;
  U1STAbits.UTXEN = 1;
}

void uart_init_9600(void)
{
  U1STA = 0;
  U1MODE = 0;
  /* Initialize UART1 */
  U1BRG = FCY / 16 / 9600UL - 1;
  U1MODEbits.BRGH = 0;
  U1MODEbits.UARTEN = 1;
  U1STAbits.UTXEN = 1;

}

