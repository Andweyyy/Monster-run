
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
	  SESprite text;
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

		 rsc.prepare_font("myfont","trebuchet ms bold color=black", 80);
        text = add_sprite_for_text(" ","myfont");
		
	}

    public void tick(TimeVal now, double delta) {
        base.tick(now,delta);
        
        mx = monster.get_x();
        my = monster.get_y();
        plx = MainScene.x;
        py = MainScene.y;
        
        monster.move(mx+(plx-mx)/200,my+(py-my)/200);
        if((mx/plx)==1 && (my/py)==1){
            text.set_text("GAME OVER!");
            text.move(0.35*w, 0.45*h);
        }
        
    }

	public void cleanup()
	{
		base.cleanup();
	}

	
}
