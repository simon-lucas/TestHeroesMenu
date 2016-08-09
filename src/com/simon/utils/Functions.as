﻿function drawRectangle(target_mc:MovieClip, boxWidth:Number, boxHeight:Number, fillColor:Number, fillAlpha:Number):Void {	with (target_mc) {		beginFill(fillColor, fillAlpha);		moveTo(0, 0);		lineTo(boxWidth, 0);		lineTo(boxWidth, boxHeight);		lineTo(0, boxHeight);		lineTo(0, 0);		endFill();	}}function drawFrame(target_mc:MovieClip, boxWidth:Number, boxHeight:Number, fillColor:Number, fillAlpha:Number):Void {	with (target_mc) {		var space=5;		moveTo(-space, -space);		lineStyle(2, 0x666666, 50, true, "normal", "square", "miter", 1.4);		lineTo(boxWidth+space, -space);		lineTo(boxWidth+space, boxHeight+space);		lineTo(-space, boxHeight+space);		lineTo(-space, -space);		var space=10;		moveTo(-space, -space);		lineStyle(2, 0x666666, 50, true, "normal", "square", "miter", 1.4);		lineTo(boxWidth+space, -space);		lineTo(boxWidth+space, boxHeight+space);		lineTo(-space, boxHeight+space);		lineTo(-space, -space);	}}function drawRectangle2(target_mc:MovieClip, xloc:Number, yloc:Number, boxWidth:Number, boxHeight:Number, fillColor:Number, fillAlpha:Number) {	//trace("target_mc "+target_mc);	with (target_mc) {		beginFill(fillColor, fillAlpha);		moveTo(xloc, yloc);		lineTo(xloc+boxWidth, yloc);		lineTo(xloc+boxWidth, yloc+boxHeight);		lineTo(xloc, yloc+boxHeight);		lineTo(xloc, yloc);		endFill();	}}