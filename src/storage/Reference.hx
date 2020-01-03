package storage;
import js.lib.Promise;
@:native("firebase.storage.Reference") extern class Reference{
    public var bucket:String;
    public var fullPath:String;
    public var name:String;
    public var parent:String;
    public var root:Reference;
    public var storage:Storage;

    public function child(path:String):Reference;
    public function delete():Promise<Dynamic>;
}