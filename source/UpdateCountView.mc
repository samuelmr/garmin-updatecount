using Toybox.Graphics;
using Toybox.System;
using Toybox.WatchUi;

var updateCount = 0;
var mediumFont;

class UpdateCountView extends WatchUi.WatchFace
{

  function initialize() {
    WatchFace.initialize();
  }

  function onLayout(dc) {
    mediumFont = WatchUi.loadResource(Rez.Fonts.id_font_medium);
  }

  function onUpdate(dc) {
    var width = dc.getWidth();
    var height = dc.getHeight();

    var clockTime = System.getClockTime();
    var timeString = clockTime.hour.format("%02d") + ":" + clockTime.min.format("%02d") + ":" + clockTime.sec.format("%02d");

    var heading = [];
    // Array.add() yields an error in epix simulator
    heading.add("Updated");

    // counter is incremented many times each minute
    updateCount += 1;
    System.println(timeString + ": " + updateCount);

    dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_WHITE);
    dc.fillRectangle(0, 0, width, height);

    var lineHeight = Graphics.getFontHeight(mediumFont);
    dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);

    // all characters are upside down in fr920xt simulator
    dc.drawText(width/2, lineHeight/2, mediumFont, heading[0], Graphics.TEXT_JUSTIFY_CENTER);

    dc.drawText(width/2, height/2-lineHeight/2, mediumFont, updateCount, Graphics.TEXT_JUSTIFY_CENTER);

    lineHeight = Graphics.getFontHeight(Graphics.FONT_TINY);
    dc.drawText(width/2, height-lineHeight*2, Graphics.FONT_TINY, timeString, Graphics.TEXT_JUSTIFY_CENTER);

  }

}
