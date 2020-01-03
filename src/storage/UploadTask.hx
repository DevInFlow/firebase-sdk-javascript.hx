package storage;

import js.lib.Error;

@:native("firebase.storage.UploadTask") extern class UploadTask {
	public var snapshot:UploadTaskSnapshot;
	public function cancel():Bool;
	@:native("catch")
	public function catchError(a:Error->Dynamic):js.lib.Promise<Dynamic>;

    @:overload(function(event:TaskEvent, ?error:Error->Void, ?complete:Dynamic):Void {})
	@:overload(function(event:TaskEvent, ?nextOrObserver:UploadTaskSnapshot->Void, ?complete:Dynamic):Void {})
	public function on(event:TaskEvent, ?nextOrObserver:Dynamic, ?error:Error->Void, ?complete:Dynamic):Dynamic;

    public function pause():Bool;
	public function resume():Bool;
	public function then(?onFulfilled:Dynamic->Void, ?onRejected:Dynamic->Void):js.lib.Promise<Dynamic>;
}
