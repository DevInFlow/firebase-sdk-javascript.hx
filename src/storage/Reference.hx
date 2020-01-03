package storage;
import storage.Storage.StringFormat;
import js.lib.ArrayBuffer;
import js.lib.Uint8Array;
import js.html.Blob;
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
    public function getDownloadURL():Promise<Dynamic>;
    public function getMetadata():Promise<Dynamic>;
    public function list(?options:ListOptions):Promise<ListResult>;
    public function listAll():Promise<ListResult>;
    
    @:overload(function(data:Uint8Array,?metadata:UploadMetadata):UploadTask {})
    @:overload(function(data:ArrayBuffer,?metadata:UploadMetadata):UploadTask {})
    public function put(data:Blob,?metadata:UploadMetadata):UploadTask;
    
    public function putString(data:String,?format:StringFormat,?metadata:UploadMetadata):UploadTask;
    public function toString():String;
    public function updateMetadata(metadata:SettableMetadata):Promise<Dynamic>;
}