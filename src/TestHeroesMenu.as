//AS3///////////////////////////////////////////////////////////////////////////
// 
// Copyright 2016 
// 
////////////////////////////////////////////////////////////////////////////////

package
{

import flash.events.Event;
import flash.display.Sprite;
import TestHeroesMenu.ScrollingMenu;
import TestHeroesMenu.HeroesMenu;

/**
 * Application entry point for TestHeroesMenu.
 * 
 * @langversion ActionScript 3.0
 * @playerversion Flash 9.0
 * 
 * @author Simon Lucas
 * @since 09.08.2016
 */
public class TestHeroesMenu extends Sprite
{
	var names:Array=["Aga Khan", "Baird George", "Bentinck George Lord", "Bunbury Charles", "Chaplin Henry", "Duchess of Westminster", "Duke of Westminster", "Edward VII", "Furlong Noel", "Guest Raymond", "Hamdan Al Maktoum", "Ismay Charles", "Joel Jim", "Khalid Abdullah", "King George V", "King George VI", "Le Mare Noel", "L H De Walden", "Lord Derby", "Mellon Paul", "Paget Dorothy", "Rothschild Leopold De", "Sangster Robert", "Sassoon Victor", "Sheikh Mohammed", "The Queen"]
	var hMenu: HeroesMenuSprite
	/**
	 * @constructor
	 */
	public function TestHeroesMenu()
	{
		super();
		stage.addEventListener( Event.ENTER_FRAME, initialize );
	}

	/**
	 * Initialize stub.
	 */
	private function initialize(event:Event):void
	{
		stage.removeEventListener( Event.ENTER_FRAME, initialize );
		trace( "TestHeroesMenu::initialize()" );
		hMenu = new HeroesMenuSprite()
		addChild(hMenu)
		hMenu.init(names)
		
	}
	
}

}