//AS3///////////////////////////////////////////////////////////////////////////
// 
// Copyright 2016 
// 
////////////////////////////////////////////////////////////////////////////////

package
{

import flash.events.Event;
import flash.display.Sprite;

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
	}
	
}

}
