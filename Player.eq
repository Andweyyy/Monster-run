
/*
 * Player
 * Created by Eqela Studio 2.0b7.4
 */

public class Player: SEEntity
{

	SESprite hero;
	int w;
	int h;
	
	public void initialize(SEResourceCache rsc)
	{
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();

		rsc.prepare_image("hero","ironman",w*0.1,h*0.1);
		hero = add_sprite_for_image(SEImage.for_resource("hero"));
		hero.move(Math.random(0,5*w),Math.random(h*5,0));
		
		
	}

	public void tick(TimeVal now, double delta)
	{
		base.tick(now, delta);
		hero.move(MainScene.x,MainScene.y);	
	}

	public void cleanup()
	{
		base.cleanup();
	}
}
