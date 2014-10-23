
/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class MonsterEntity: SEEntity

{

	int w;
	int h;
	int mx;
	int my;
	int plx;
	int py;
	SESprite monster;
	public void initialize(SEResourceCache rsc)
	{
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();

		
		rsc.prepare_image("monster","pacmonster",w*0.1);
		monster = add_sprite_for_image(SEImage.for_resource("monster"));
		mx = monster.get_x();
		my = monster.get_y();
		monster.move(Math.random(0,w),Math.random(0,h));
		
		
	}

	public void tick(TimeVal now, double delta)
	{
		base.tick(now, delta);
	
		 plx = MainScene.x;
		 py = MainScene.y;
		 mx = monster.get_x();
		 my = monster.get_y();
		
		monster.move(mx+(plx-mx)/Math.random(100,1000),my+(py-my)/Math.random(100,1000));
	}

	public void cleanup()
	{
		base.cleanup();
	}
}
