package storage;

@:native("firebase.storage") extern class Storage{
    public  var app:Storage;
    public  var maxOperationRetryTime:Float;
    public  var maxUploadRetryTime:Float;

    public  function ref(?path:String):Dynamic; /**create reference object instead of dynamic**/
    public  function refFromURL(?path:String):Dynamic; /**create reference object instead of dynamic**/
    public  function setMaxOperationRetryTime(time:Float):Dynamic;
    public  function setMaxUploadRetryTime(time:Float):Dynamic;
}