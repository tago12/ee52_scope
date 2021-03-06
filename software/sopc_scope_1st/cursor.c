/****************************************************************************/
/*                                                                          */
/*                                 CURSOR.C                                 */
/*                        Cursor Management Procedures                      */
/*                       Digital Oscilloscope Project                       */
/*                                 EE/CS 52                                 */
/*                             Santiago Navonne                             */
/*                                                                          */
/****************************************************************************/

/*
   Cursor management routines for the EE/CS 52 Digital Oscilloscope project.
   Function definitions are included in this file, and are laid out as follows:
    - draw_cursor: TODO;
    - clear_cursor: TODO;
    - set_cursor: TODO.


   Revision History:
      6/3/14  Santiago Navonne  Initial revision.
*/

#include  "interfac.h"
#include  "scopedef.h"
#include  "cursor.h"
#include  "tracutil.h"
#include  "lcdout.h"
#include  <stdio.h>

/* shared variables */
int cursor_enabled = FALSE;     /* TRUE if cursor is enabled, FALSE otherwise */
int cursor_x;           /* current x location of cursor in pixels */
int cursor_y;           /* current y location of cursor in mV */
char *cursor_str[CURSOR_STR_SIZE]; /* temporary string array for printing */

void draw_cursor()
{
    /* save trace under cursor text area before drawing */
    set_save_area(CURSOR_STR_X, CURSOR_STR_Y, CURSOR_STR_W, CURSOR_STR_H);

    cursor_y = plot_cursor(cursor_x, cursor_enabled);
    if (cursor_enabled && cursor_y != NO_TRACE)
    {
        cursor_y = (cursor_y - SIZE_Y/2) * MAX_LEVEL / SIZE_Y/2;
        sprintf(cursor_str, "Cursor: %d mV", cursor_y);
    }
    else
    {
        sprintf(cursor_str, "Cursor: N/A");
    }
    plot_string(CURSOR_STR_X, CURSOR_STR_Y, cursor_str, HIGHLIGHTED);
}

void clear_cursor()
{
    cursor_enabled = FALSE;
}

void set_cursor(int x)
{
    cursor_enabled = TRUE;
    cursor_x = x;
    restore_trace();
    draw_cursor();
}
