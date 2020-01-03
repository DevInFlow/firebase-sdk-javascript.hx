package app;

import storage.Storage;

@:native("firebase.app.App") extern class App {
	public var name:String;
	@:isVar public var options(never, default):Dynamic;
	public function storage(?url:String):Storage;
}
