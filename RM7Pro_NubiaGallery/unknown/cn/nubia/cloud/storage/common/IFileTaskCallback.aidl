package cn.nubia.cloud.storage.common;
import cn.nubia.cloud.storage.common.bean.FileTransferTask;

/**
 * BaiduPCSFileTaskListenerBase接口定义了任务回调方法
 * 
 */
interface IFileTaskCallback {
    /**
     * 设置更新进度的间隔时间。 默认间隔为2000ms, 允许的最小时间间隔是100ms。
     * 
     * @return
     */
     long progressInterval();

    /**
     * 回调文件任务的状态更新消息（开始、进度、结束）
     * 
     * @param task
     *            文件任务
     * @param errorCode
     *            Code
     * @param msg
     *            消息
     */
    void onFileTaskStatus(int state, long arg1, long arg2, in FileTransferTask fileTask);
	
    /**
     * When Exception happens, this method will be called.
     * 
     * @param errorCode Error code
     * @param errorMsg Error message.
     */
    void onException(int errorCode, String errorMsg);
}
