package storage;

@:native("firebase.storage.ListResult") extern class ListResult{
    public var items:Array<Reference>;
    public var nextPageToken:Null<String>;
    public var prefixes:Array<Reference>;
}