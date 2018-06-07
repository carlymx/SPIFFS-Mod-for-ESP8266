/* Flash Split for 512K chips */
/* sketch 423KB -	433152 Bytes -	0x69c00 */
/* spiffs  64KB -	 65536 Bytes - 	0x10000 */
/* eeprom  20KB -	 20480 Bytes -	 0x5000 */
/* otros    5KB -	  5120 Bytes -	 0x1400 */

/* spiffs  32KB -	 32768 Bytes - 	 0x8000 */

/*-------------------------------------------------------------------*/

/*  32KB :		0x71ff0		466928 Bytes 		455.98438KB	*/
/*  64KB :		0x69ff0		434160 Bytes	 	423.98438KB */
/* 128KB :		0x59ff0		‭368624 Bytes		359.98438KB‬ */

/*  32KB :		0x40273000	1076310016 Bytes	1051084KB */
/*  64KB :		0x4026B000	1076277248 Bytes 	1051052KB */
/* 128KB :		0x4025B000	‭1076211712‬ Bytes	1050988KB */

MEMORY
{
  dport0_0_seg :                        org = 0x3FF00000, len = 0x10
  dram0_0_seg :                         org = 0x3FFE8000, len = 0x14000
  iram1_0_seg :                         org = 0x40100000, len = 0x8000
  irom0_0_seg :                         org = 0x40201010, len = 0x71ff0
}

PROVIDE ( _SPIFFS_start = 0x40273000 );
PROVIDE ( _SPIFFS_end = 0x4027B000 );
PROVIDE ( _SPIFFS_page = 0x100 );
PROVIDE ( _SPIFFS_block = 0x1000 );

INCLUDE "../ld/eagle.app.v6.common.ld"
