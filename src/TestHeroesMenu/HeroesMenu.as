package TestHeroesMenu
{

import flash.display.Sprite;
import TestHeroesMenu.ScrollingMenu;

public class HeroesMenu extends Sprite
{
	var heroesMenu: ScrollingMenu
	var scrollBar: ScrollBarSprite
	public function HeroesMenu()
	{
		super();
	}
	
	public function init(names:Array):void{
		heroesMenu=new ScrollingMenu()
		heroesMenu.init(names)
		addChild(heroesMenu)
		trace(heroesMenu.getLastVisible())
		scrollBar=new ScrollBarSprite()
		scrollBar.y=83
		scrollBar.x=870
		scrollBar.init(names, heroesMenu)
		addChild(scrollBar)
	}
}

}