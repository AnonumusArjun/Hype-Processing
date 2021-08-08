void setup() {
	size(640,640);
	H.init(this).background(#202020);
	smooth();

	HDrawablePool pool = new HDrawablePool(300);
	pool.autoAddToStage()
		.add (
			new HRect(10)
			.rounding(3)
			.noStroke()
			.fill( #ff4400 )
			.anchorAt(H.CENTER)
		)

		.layout (
			new HPolarLayout(1, 0.2)
			.offset(width/2, height/2)
		)

		.requestAll()
	;

	H.drawStage();
	noLoop();
}

void draw() {}
