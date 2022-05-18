package cn.nubia.cloud.storage.common;

import java.util.List;
import cn.nubia.cloud.storage.common.bean.CloudDownloadQueryProgressRes;
import cn.nubia.cloud.storage.common.bean.CloudDownloadQueryStatusRes;
import cn.nubia.cloud.storage.common.bean.CloudDownloadRes;
import cn.nubia.cloud.storage.common.bean.CloudDownloadListRes;
import cn.nubia.cloud.storage.common.bean.DiffRes;
import cn.nubia.cloud.storage.common.bean.FromToRes;
import cn.nubia.cloud.storage.common.bean.FileInfoRes;
import cn.nubia.cloud.storage.common.bean.ListInfoRes;
import cn.nubia.cloud.storage.common.bean.LoginUrlRes;
import cn.nubia.cloud.storage.common.bean.MetaRes;
import cn.nubia.cloud.storage.common.bean.QuotaRes;
import cn.nubia.cloud.storage.common.bean.SimpleRes;
import cn.nubia.cloud.storage.common.bean.ThumbnailRes;
import cn.nubia.cloud.storage.common.bean.FileTransferTask;
import cn.nubia.cloud.storage.common.account.PCSAccountInfo;

interface IStorageEngineCallback {
    /**
     * 登陆信息回调
     */
    void onLogin(in PCSAccountInfo info);

    /**
     * 得到当前用户的的空间配额信息，包括共空间和已用空字，由字节表示。
     * 
     * @return QuotaRes，由服务器返回得到。
     */
    void onGetQuota(in QuotaRes ret);

    /**
     * 删除中的多个文件
     * 
     * @return SimpleRes，服务器返回得到。
     */
    void onDeleteFiles(in SimpleRes ret);

    /**
     * 在指定的路径上创建一个文件夹
     * 
     * @return FileInfoRes， 服务器返回得到。
     */
    void onMakeDir(in FileInfoRes ret);

    /**
     * 得到指定文件的元信息
     * 
     * @return MetaRes，服务器返回得到。 可以转化为 AudioMetaRes, VideoMetaRes,
     *         ImageMetaRes, 取决于MetaRes.type。
     * 
     *         MetaRes info ;
     * 
     *         switch(in  ret.type){
     * 
     *         case Media_Audio: AudioMetaRes audioInfo = (in 
     *         AudioMetaRes)info; break;
     * 
     *         case Media_Video: VideoMetaRes videoInfo = (in 
     *         VideoMetaRes)info; break;
     * 
     *         case Media_Image: ImageMetaRes imageInfo = (in 
     *         ImageMetaRes)info; break; }
     * 
     */
    void onGetFileMeta(in MetaRes ret);

    /**
     * 得到指定目录下的文件列表。
     * 
     * @return ListInfoRes, 服务器返回得到。
     */
    void onGetFileList(in ListInfoRes ret);

    /**
     * 移动多个文件到另一个目录中
     * @return FromToRes， 服务器返回得到。
     */
    void onMoveFiles(in FromToRes ret);

    /**
     * 更改一个文件的文件名
     * @return FromToRes，服务器返回得到。
     */
    void onRenameFiles(in FromToRes ret);

    /**
     * 复制多个文件到另一个目录下
     * @return FromToRes， 服务器返回得到。
     */
    void onCopyFiles(in FromToRes ret);

    /**
     * 按指定的关键字搜索文件
     * @return ListInfoRes，服务器返回得到。
     */
    void onSearch(in ListInfoRes ret);

    /**
     * 生成一个图像的缩略图
     * @return ThumbnailRes，服务器返回得到。
     */
    void onThumbnail(in ThumbnailRes ret);

    /**
     * 文件增量更新操作查询接口
     * 
     * @return DiffRes， 服务器返回得到。
     */
    void onDiffWithCursor(in DiffRes ret);

    
    void onStreamWithMediaType(in ListInfoRes ret);
    

    /**
     * 离线下线一个文件到
     * 
     * @return CloudDownloadRes，服务器返回得到。
     */
    void onAddCloudDownloadTask(in CloudDownloadRes ret);

    /**
     * 查询离线下载任务的列表
     * 
     * @return CloudDownloadListRes，服务器返回得到。
     */
    void onGetCloudDownloadTaskList(in CloudDownloadListRes ret);

    /**
     * 精确查询某些（一个或是多个）离线下载任务的详细信息
     * 
     * @return CloudDownloadQueryStatusRes,服务器返回得到 。
     */
    void onQueryCloudDownloadTaskStatus(in CloudDownloadQueryStatusRes ret);

    /**
     * 精确查询某些（一个或是多个）离线下载任务的下载进度
     * 
     * @return CloudDownloadQueryProgressRes，服务器返回得到 。
     */
    void onQueryCloudDownloadTaskProgress(in CloudDownloadQueryProgressRes ret);

    /**
     * 取消某个离线下载任务
     * @return CloudDownloadRes, 服务器返回得到。
     */
    void onCancelCloudDownloadTask(in CloudDownloadRes ret);

     /**
      *getFileTaskList(获取本地数据库中当前账号的已有文件任务列表)的异步回调接口 
      * 
      * @return
      */
     void onGetFileTaskListFinished(in List<FileTransferTask> ret);

    /**
     * 比较要上传的本地文件在上是否已经存在，如果存在则直接将上该文件复制到目标路径下，否则则返回文件不存在的相关信息。 文件要大于等于256KB
     * @return FileInfoRes，由服务器返回得到。
     */
    void onCloudMatch(in FileInfoRes ret);

    /**
     * 出现异常
     */
    void onException(int errorCode, String errorMsg);
    
    void onCheckCloudFilesExit(in ListInfoRes ret);
}
