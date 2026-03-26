#include <stdio.h>
#include <stdlib.h>
#include "../util.h"

#define TMP_BUF_SIZE 4

const char *screen_bright_perc(const char *unused) {
  char tmp_buf[4];
  unsigned short i = 0;

  FILE *fp = fopen("/sys/class/backlight/amdgpu_bl0/brightness", "r");
  char ch;
  while ((ch = fgetc(fp)) != EOF && i < TMP_BUF_SIZE) {
    tmp_buf[i++] = ch;
  }
  tmp_buf[i] = '\0';
  fclose(fp);

  char *end;
  float val = strtof(tmp_buf, &end);
  float r = (val * 100.0) / 255.0;
  return bprintf("%.0f", r);
}
