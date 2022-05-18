package cn.nubia.cloud.storage.common;

import java.util.List;
import cn.nubia.cloud.storage.common.bean.FromToInfo;
import cn.nubia.cloud.storage.common.bean.FileTransferTask;
import cn.nubia.cloud.storage.common.IStorageEngineCallback;
import cn.nubia.cloud.storage.common.IFileTaskCallback;
import cn.nubia.cloud.storage.common.IStorageEngineSetupCallback;
import cn.nubia.cloud.storage.common.account.AuthReq;

interface IStorageEngine {
    /**
     * 登录云盘
     * @param info
     * @param listener
     */
    void loginPCS(in AuthReq req, 
            in IStorageEngineCallback listener);

    /**
     * 初始化相关参数。
     * 
     * 
     * @param bundleConfig 相关设置参数的Bundle，具体参照Demo
     * @param callback  将在callback 接口中异步回调setupFileDescriptor方法
     * @return
     */
    void setupWithConfig( in Bundle bundleConfig,
            in IStorageEngineSetupCallback callback);

    // ////////////////////////////////////////////////////////////////////////////////
    // /////////文件目录信息相关//////////////////////////////////////////////////////////
    // ////////////////////////////////////////////////////////////////////////////////
    /**
     * 得到当前用户的空间配额信息，包括共空间和已用空字，由字节表示。
     * 
     * 
     * @param callback  返回的QuotaRes 将在callback 接口中异步回调onGetQuota返回
     * @return void 
     */
    void getQuota(in IStorageEngineCallback callback);

    /**
     * 删除CloudStorage的多个文件
     * 
     * @param files
     *            多个文件的列表
     * 
     * @param callback  将在callback 接口中异步回调
	 *		onDeleteFiles(in SimpleRes simplefiedResponse)返回SimplefiedResponse 
     * @return void 
     */
    void deleteFiles( in List<String> files, in IStorageEngineCallback callback);

    /**
     * 在指定的CloudStorage路径上创建一个文件夹
     * 
     * @param path
     *            要被创建的文件夹的路径
     * 
     * @param callback  将在callback 接口中异步回调
	 *		onMakeDir(in FileInfoRes FileInfoRes)返回FileInfoRes 
     * @return void 
     */
    void makeDir( in  String path, in IStorageEngineCallback callback);

    /**
     * 得到指定文件的元信息
     * 
     * @param file
     *            要得到元信息的文件路径    
     * @param showDirSize  showDirSize
     * 
     * @param callback  将在callback 接口中异步回调
	 *		onGetFileMeta(in MetaRes MetaRes)返回MetaRes 
     * @return void 
     */
    void getFileMeta( in String file, boolean showDirSize,
			in IStorageEngineCallback callback);

    /**
     * 得到指定目录下的文件列表。由本地同步后的数据库中返回
     * 
     * @param path
     *            指定的目录。
     * @param by
     *            指定返回列表的排序方式，参数值有：time, name 或 size.
     * @param order
     *            指定返回列表的排序方式，参数值有：asc 或 desc.
     * 
     * @param callback   将在callback 接口中异步回调
	 *		onGetFileList(in ListInfoRes ListInfoRes)返回ListInfoRes
     * @return void 
     */
    void getFileList( in String path, in String by, in String order,
			in IStorageEngineCallback callback);
    
    
    /**
     * 通过网络查询指定目录下的文件列表。
     * 
     * @param path
     *            指定的目录。
     * 
     * @param callback   将在callback 接口中异步回调
	 *		onGetFileList(in ListInfoRes ListInfoRes)返回ListInfoRes
     * @return void 
     */
    void queryRemoteFileList( in String path, in String by, in String order, in IStorageEngineCallback callback);

    /**
     * 以视频、音频、图片及文档四种类型的视图获取所创建应用程序下的文件列表。
     * 
     * @param type 文件类型: video=>0, audio=>1, image=>2, doc=>3
     * @param start 缺省为0
     * @param limit 缺省为1000,可配置.
     * 
     * @param callback   将在callback 接口中异步回调
	 *		onGetFileList(in ListInfoRes ListInfoRes)返回ListInfoRes
     * @return void 
     */
    void getMediaStreamList( int type, int start, int limit, in IStorageEngineCallback callback);

    /**
     * 移动多个文件
     * 
     * @param info
     *            将要移动的文件列表。
     * 
     * @param callback   将在callback 接口中异步回调
	 *			onMoveFiles(in FromToInfoRes FromToInfoRes)返回FromToInfoRes
     * @return void 
     */
    void moveFiles( in List<FromToInfo> infos, in IStorageEngineCallback callback);

    /**
     * 更改多个文件的文件名
     * 
     * @param info
     *            将要更改文件名的文件列表。
     * 
     * @param callback  将在callback 接口中异步回调
	 *		onRenameFiles(in FromToInfoRes FromToInfoRes)返回FromToInfoRes 
     * @return void 
     */
    void renameFiles(in List<FromToInfo> infoss,
			in IStorageEngineCallback callback);

    /**
     * 复制多个文件
     * 
     * @param info
     *            要复制的文件列表
     * 
     * @param callback  将在callback 接口中异步回调
	 *		onCopyFiles(in FromToInfoRes FromToInfoRes)返回FromToInfoRes 
     * @return void 
     */
    void copyFiles(in List<FromToInfo> infos,
			in IStorageEngineCallback callback);

    /**
     * 按指定的关键字搜索文件
     * 
     * @param path
     *            要搜索的路径
     * @param key
     *            关键字
     * @param recursive
     *            是否递归搜索
     * 
     * @param callback  将在callback接口中异步回调返回
	 *		onSearch(in ListInfoRes ListInfoRes)ListInfoRes 
     * @return void 
     */
    void search( in String path, in String key,
			boolean recursive, boolean hasDir,
            in IStorageEngineCallback callback);

    /**
     * 生成一个图像的缩略图
     * 
     * @param path
     *            原图像的路径
     * @param quality
     *            缩略图的质量，(0,100]。
     * @param width
     *            缩略图的宽，最大值为850。
     * @param height
     *            缩略图的高，最大值为580。
     * 
     * @param callback  将在callback接口中异步回调
	 *		onThumbnail(in ThumbnailRes ThumbnailRes)返回ThumbnailRes 
     * @return void 
     */
    void thumbnail( in String path, int quality, int width, int height,
            in IStorageEngineCallback callback);

    /**
     * 文件增量更新操作查询接口
     * 
     * @param cursor
     *            用于标记更新断点。首次调用cursor=null；
	 *			  非首次调用，使用最后一次调用diff接口的返回结果中的cursor
     * 
     * @param callback  将在callback 接口中异步回调
	 *		onDiffWithCursor(in DiffRes DiffRes)返回DiffRes 
     * @return void 
     */
    void diffWithCursor( in String cursor, in IStorageEngineCallback callback);

    //////////////////////////////////////////////////////////////////////////////////
    ///////////离线下载相关////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////
    /**
     * 离线下载一个文件到CloudStorage
     * 
     * @param sourceUrl
     *            源地址url
     * @param severPath
     *            要下载到的目标路径，需要带下载后文件名
     * @param rateLimit
     *            最大下载速度 ,0 为不设置
     * @param timeOut
     *            超时时间 ,0 为不设置
     * @param callbackUrl
     *            下载完成后要跳转到的url，格式为http://XXXXXXX，null 为不设置
     * 
     * @param callback  返回的CloudDownloadRes, 将在callback 接口中异步回调
	 * 		onAddCloudDownloadTask()时返回
     * @return void 
     */
    void addCloudDownloadTask( in String sourceUrl, in String severPath,
            long rateLimit, long timeOut, String callbackUrl,
            in IStorageEngineCallback callback);

    /**
     * 查询离线下载的文件列表
     * 
     * @param start
     *            从第几条开始查询
     * @param limit
     *            返回条数的限制，设置为0时，取用默认值（10条）。
     * @param asc
     *            返回结果的排序方式，0为降序，1为升序
     * @param needTaskInfo
     *            布尔型，是否需要返回下载任务的详细信息，false为不需要，true为需要
     * 
     * @param callback  返回的CloudDownloadTaskListRes
	 * 		将在callback 接口中异步回调onGetCloudDownloadTaskList方法时返回
     * @return void 
     */
    void getCloudDownloadTaskList( int start, int limit,
			int asc, boolean needTaskInfo,
            in IStorageEngineCallback callback);

    /**
     * 精确查询某些（一个或是多个）离线下载任务的详细信息
     * 
     * @param taskIdList
     *            离线下载任务的id List 
     * 
     * @param callback  返回的CloudDownloadQueryTaskStatusRes 
	 * 		将在callback 接口中异步回调onQueryCloudDownloadTaskStatus方法时返回
     * @return void 
     */
    void queryCloudDownloadTaskStatus( in List<String> taskIdList,
            in IStorageEngineCallback callback);

    /**
     * 精确查询某些（一个或是多个）离线下载任务的下载进度
     * 
     * @param taskIdList
     *            离线下载任务的id List 
     * 
     * @param callback  返回的CloudDownloadQueryTaskProgressRes
     * 		将在callback 接口中异步回调onQueryCloudDownloadTaskProgress方法时返回
     * @return void 
     */
    void queryCloudDownloadTaskProgress( in List<String> taskIdList,
            in IStorageEngineCallback callback);

    /**
     * 取消某个离线下载任务
     * 
     * @param taskId 要取消离线下载的任务taskId
     * 
     * @param callback  返回的CloudDownloadRes 将在callback
	 * 		接口中异步回调onCancelCloudDownloadTask方法时返回
     * @return void 
     */
    void cancelCloudDownloadTask( in String taskId,
			in IStorageEngineCallback callback);


    // ////////////////////////////////////////////////////////////////////////////////
    // /////////文件下载上传相关////////////////////////////////////////////////////////
    // ////////////////////////////////////////////////////////////////////////////////

    /**
     * 比较要上传的本地文件在CloudStorage上是否已经存在，
	 * 如果存在则直接将CloudStorage上该文件复制到目标路径下，
     * 否则则返回文件不存在的相关信息。 文件要大于等于256KB
     * 
     * @param fileTask  要进行妙传的文件
     * 
     * @param uploadPolicy  服务端同名文件时，是报错、重命名还是覆盖。
	 * 		"overwrite" 表示覆盖原有文件;
     * 		"newcopy"对文件进行重命名，命名规则是"文件名_日期.后缀";
	 * 		"other" 服务端会报错，提示文件已存在 .
     * @param callback  返回的CloudDownloadRes 将在callback 接口中异步回调返回
     * @return void 
     */
    void cloudMatch( in FileTransferTask fileTask, in int uploadPolicy,
             in IStorageEngineCallback callback);

    /**
     * 获取本地数据库中当前账号的已有文件任务列表     
     * 
     * @param fileTaskCallback  将在fileTaskCallback 返回文件任务列表
     */
    void getFileTaskList(in IStorageEngineCallback callback,
			in IFileTaskCallback fileTaskcallback);

    /**
     * 上传一个本地文到到CloudStorage的指定的目录中，
	 * 参数中没有listener监听上传进度,由参数sameNameType控制当
     * 存在服务端同名文件时，是报错、重命名还是覆盖
     * 
     * @param fileTasks  要下载的文件列表
     * 
     * @param fileTaskCallback  将在fileTaskCallback 返回进度信息及任务状态信息
     * 
     * @return void 
     */

    void uploadFile( in List<FileTransferTask> fileTasks,
		in IFileTaskCallback callback);

    /**
     * 从CloudStorage下载一个指定文件到本地指定目录中，
	 * 下载过程有listener监听下载进度。
     * 
     * @param fileTasks  要下载的文件列表
     * 
     * @param fileTaskCallback  将在fileTaskCallback 返回进度信息及任务状态信息
     * @return void 
     */
    void downloadFile( in List<FileTransferTask> fileTasks,
			in IFileTaskCallback callback);

    /**
     * 暂停、继续、删除单个文件上传/下载任务
     * @param fileTask  文件任务fileTask
     */
	void pauseTask(in FileTransferTask fileTask,
			in IFileTaskCallback callback); 

	/**
     * 继续单个文件上传/下载任务
     * @param fileTask  文件任务fileTask
     */
	void restartTask(in FileTransferTask fileTask,
			in IFileTaskCallback callback);

	/**
     * 删除单个文件上传/下载任务
     * @param fileTask  文件任务fileTask
     */
	void removeTask(in FileTransferTask fileTask,
			in IFileTaskCallback callback); 

    /**
     * 暂停所有上传（download）、下载（download）或所有（all）任务
     * 
     * @param type 要处理的文件任务类型,参数有：all=>0, download=>1, upload=>2
     */
	void pauseAllTask(int type, in IFileTaskCallback callback);

	/**
     * 继续所有上传（upload）、下载（download）或所有（all）任务
     * 
     * @param type 要处理的文件任务类型,参数有：all=>0, download=>1, upload=>2
     */
	void restartAllTask(int type, in IFileTaskCallback callback);

	/**
     * 删除所有上传（download）、下载（download）或所有（all）任务
     * 
     * @param type 要处理的文件任务类型,参数有：all=>0, download=>1, upload=>2
     */
	void removeAllTask(int type, in IFileTaskCallback callback);
	
	/**
	  获取版本号
	  10000,后续每加一个接口加10
	**/
	int getStorageEngineVersion();
	
	 void checkCloudFilesExit( in List<String> pathList,in IStorageEngineCallback callback);
	
}