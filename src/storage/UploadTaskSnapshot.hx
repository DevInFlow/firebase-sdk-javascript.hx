package storage;

import storage.FullMetadata;
import storage.Reference;
import storage.UploadTask;
import storage.Storage.TaskState;

typedef UploadTaskSnapshot = {
	bytesTransferred:Float,
	downloadURL:Null<String>,
	metadata:FullMetadata,
	ref:Reference,
	state:TaskState,
	task:UploadTask,
	totalBytes:Float
}
