﻿package com.simon.utils{		import flash.text.TextField;	import flash.display.MovieClip;	import flash.utils.getTimer;	import flash.events.Event;	import flash.text.TextFormat;	import flash.text.TextFormatAlign;	public class FPS extends MovieClip {		private var o:Number;		private var t:Number;		private var frameRate:Number;		private var displayRate:Number;		private var fps:TextField;		private var fpsArray:Array;		public var _averageFPS:Number=0;		public function FPS() {			super();			fpsArray=new Array();			//++++++++++++++++++++++			o = 0;			displayRate = getTimer()+500;			addEventListener(Event.ENTER_FRAME,fpsEnterFrame);			fps=new TextField();						var myFont = new Arial();			var myFormat:TextFormat = new TextFormat();			myFormat.size = 14;			myFormat.align = TextFormatAlign.CENTER;			myFormat.font = myFont.fontName;						fps.defaultTextFormat = myFormat;			fps.background = true;			fps.textColor = 0x000000; 			fps.height=20; 			fps.width=60; 			addChild(fps);		}		public function fpsEnterFrame(e:Event):void {			t = getTimer();			frameRate = Math.round(1000/(t-o));									o = t;			if (getTimer()>displayRate) {				//trace("frameRate "+frameRate);					fpsArray.push(frameRate)				if (fpsArray.length>100){					fpsArray.splice(0,1)				}				var total:Number=0;				for each (var i:Number in fpsArray){					total+=i									}				_averageFPS=Math.floor(total/fpsArray.length);				fps.text = "fps : "+_averageFPS;				displayRate = getTimer()+1000;			}		}	}}