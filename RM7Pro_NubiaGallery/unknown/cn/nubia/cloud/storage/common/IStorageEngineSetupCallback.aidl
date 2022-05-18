package cn.nubia.cloud.storage.common;
import cn.nubia.cloud.storage.common.bean.FileTransferTask;

/**
 * ICloudStorage 的初始化回调接口
 * 
 */
interface IStorageEngineSetupCallback {

    /**
    *  设置FileDescriptor，解决跨进程文件访问权限问题
    *@param fileTasks  需要设置FileDescriptor的文件任务列表
    *@return void 
    */
     void setupFileDescriptor(inout List<FileTransferTask> fileTasks);

    /**
     * 出现异常
     */
    void onException(int errorCode, String errorMsg);
}
