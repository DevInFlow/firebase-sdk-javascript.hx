package;

import js.html.Console;
import haxe.Json;
import storage.Storage;
import js.lib.Error;
import storage.ListResult;
import js.html.InputElement;
import js.Browser;
import haxe.ds.IntMap;
import js.lib.Uint8Array;
import haxe.Timer;

@:expose
class Main {
    private var storageRef:Storage;
	public static function main() {
		new Main();
	}

	public function new() {


        var storageRef = Firebase.storage().ref();

        var partnerLogo = storageRef.child("partner/logo/");

        partnerLogo.getDownloadURL().then(function(result){
            trace(result);
        });
        storageRef.list().then(function(result:ListResult){
            trace(result);
        },function(error:Error){});


    }

	public function upload():Void {
		var file:InputElement = cast Browser.document.getElementById("fileUpload");
		trace(file.files);
		if (file.files.length == 0)
            return;
        
        var storageRef = Firebase.storage().ref();
       
        // Create a reference to 'mountains.jpg'
		var mountainsRef = storageRef.child(file.files[0].name);

		// Create a reference to 'images/mountains.jpg'
		var mountainImagesRef = storageRef.child('uploads/${file.files[0].name}');

		// While the file names are the same, the references point to different files

		// var bytes = new Uint8Array([0x48, 0x65, 0x6c, 0x6c, 0x6f, 0x2c, 0x20, 0x77, 0x6f, 0x72, 0x6c, 0x64, 0x21]);
		// mountainImagesRef.put(bytes).then(function(snapshot) {
		// 	trace('Uploaded an array!');
		// });
		mountainImagesRef.put(file.files[0]).then(function(snapshot) {

			
			Console.log(snapshot);
		});
	}
}
