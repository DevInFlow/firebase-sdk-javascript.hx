package storage;

@:native("firebase.storage.FullMetadata") extern class FullMetadata{
    public var bucket:String;
    public var cacheControl:Null<String>;
    public var contentDisposition:Null<String>;
    public var contentEncoding:Null<String>;
    public var contentLanguage:Null<String>;
    public var contentType:Null<String>;
    public var customMetadata:Null<String>;
    public var fullPath:String;
    public var generation:String;
    public var md5Hash:Null<String>;
    public var metageneration:String;
    public var name:String;
    public var size:Float;
    public var timeCreated:String;
    public var updated:String;
}