#include <graphics.h>

int main() {
    initgraph(640, 480);
    setfillcolor(RGB(0, 255, 255));
    fillellipse(200, 200, 50, 50);
    setfillcolor(RGB(0, 0, 0));
    setcolor(RGB(0, 0, 0));
    fillellipse(220, 220, 50, 50);
    getch();
}