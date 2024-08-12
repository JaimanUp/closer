class Node{
	float x,y,ang;
	float vel;
	float index;

	Node(float px, float py,float i){
		 x= px;
		 y= py;
		 ang= random(TWO_PI);
		 vel= 1;
		 index=i;
		
	}

	PVector getPos(){
		PVector pos= new PVector (x,y);
		return(pos);
	}
	
	void boundary(){
		if(x<0){x+=width;}
		if(x>width){x-=width;}
		if(y<0){x+=height;}
		if(y>height){x-=height;}

	}

	void update(){
		index+=0.005;
		x+=vel*cos(ang);
		y+=vel*sin(ang);
		ang=map(noise(index),0,1,0,2*TWO_PI);
		
	}

	void display(){

		fill(200);
		ellipse(x,y,5,5);

	}

	void checkNeightbours(PVector checkPos){

		

		float dist= getPos().dist(checkPos);
		if (dist<close){
			println(dist);
			int tr= int(map(dist,0,close,255,10));
			float c= map(dist,0,close*1,0,1);
			color inter = lerpColor(from, to, c);
			strokeWeight(3);
			stroke(inter,tr);
			line(checkPos.x, checkPos.y, x, y);

		}
	}

}	