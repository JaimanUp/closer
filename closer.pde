

PVector [] points = new PVector [50];
ArrayList <Node> nodos = new ArrayList <Node>();

int close=150;

color from = color(204, 102, 0);
color to = color(0, 102, 153);


void setup(){
	size(600,600);
	background(0,10);
	noFill();

	for (int i=0; i<points.length;i++){

		nodos.add( new Node(random(width),random(height),i));
	}


}


void draw(){
	background(0);
	for (int i=0; i<points.length;i++){
		nodos.get(i).update();
		nodos.get(i).boundary();
		//nodos.get(i).display();

		for (int j=0; j<points.length;j++){

			if(j!=i){
				nodos.get(i).checkNeightbours(nodos.get(j).getPos());
			}
		}
	}

	// if (keyPressed) {
	// 	if (key == 'q' || key == 'Q'){
	// 		while(close<50){
	// 			close+=0.1;
	// 		}
	// 	}
	// 	if (key == 'W' || key == 'w'){

	// 		while(close>20){
	// 			close-=0.1;
	// 		}
	// 	}	
	// }

}



void mouseRelessed(){

	while(close>20){
		close-=1;

	}
}