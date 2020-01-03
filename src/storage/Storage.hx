package storage;

enum abstract StringFormat(String) to String{
    var BASE64 ="BASE64";
    var BASE64URL ="BASE64URL";
    var DATA_URL ="DATA_URL";
    var RAW ="RAW";
}


enum abstract TaskState(String) to String{
    var CANCELED ="CANCELED";
    var ERROR ="ERROR";
    var PAUSED ="PAUSED";
    var RUNNING ="RUNNING";
    var SUCCESS ="SUCCESS";
}

@:native("firebase.storage") extern class Storage{
    public  var app:Storage;
    public  var maxOperationRetryTime:Float;
    public  var maxUploadRetryTime:Float;

    public  function ref(?path:String):Reference;
    public  function refFromURL(?path:String):Reference;
    public  function setMaxOperationRetryTime(time:Float):Dynamic;
    public  function setMaxUploadRetryTime(time:Float):Dynamic;
}