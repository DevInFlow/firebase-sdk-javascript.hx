package;
import app.App;
import storage.Storage;
@:native("firebase") extern class Firebase{
    public static function storage(?app:App):Storage;
}