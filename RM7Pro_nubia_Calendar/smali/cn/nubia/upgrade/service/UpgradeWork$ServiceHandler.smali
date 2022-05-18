.class Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;
.super Landroid/os/Handler;
.source "UpgradeWork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/service/UpgradeWork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/upgrade/service/UpgradeWork;


# direct methods
.method public constructor <init>(Lcn/nubia/upgrade/service/UpgradeWork;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 305
    iput-object p1, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    .line 306
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 307
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v4, 0x7d0

    const/16 v3, 0x65

    .line 311
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 313
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 315
    :pswitch_0
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->access$200(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/util/CommonUtils;->isNewVersionApkExist(Lcn/nubia/upgrade/http/DownloadRequest;)Z

    move-result v6

    .line 316
    .local v6, "isFileExist":Z
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeWork;->access$200(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeWork;->access$200(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/service/UpgradeWork;->access$702(Lcn/nubia/upgrade/service/UpgradeWork;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->access$200(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/http/DownloadRequest;->getIsPatch()Z

    move-result v0

    if-nez v0, :cond_4

    .line 320
    if-eqz v6, :cond_3

    .line 321
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->access$800(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(apk file to be install)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeWork;->access$700(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v0, v0, Lcn/nubia/upgrade/service/UpgradeWork;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentInstall()Z

    move-result v0

    if-nez v0, :cond_2

    .line 324
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->access$900(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeWork;->access$700(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1000(Lcn/nubia/upgrade/service/UpgradeWork;Landroid/content/Context;Ljava/lang/String;)V

    .line 332
    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1200(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 326
    :cond_2
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->access$900(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeWork;->access$700(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1100(Lcn/nubia/upgrade/service/UpgradeWork;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    .line 327
    .local v9, "res":Z
    if-nez v9, :cond_1

    .line 328
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->access$800(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "silent install fail. try normal install."

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->access$900(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeWork;->access$700(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1000(Lcn/nubia/upgrade/service/UpgradeWork;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 334
    .end local v9    # "res":Z
    :cond_3
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->access$000(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/http/HttpDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->access$900(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    .line 335
    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeWork;->access$200(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    .line 336
    invoke-static {v3}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1300(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    .line 337
    invoke-static {v4}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1400(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    .line 338
    invoke-static {v5}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1500(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v5

    .line 334
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/upgrade/http/HttpDownloadManager;->startDownload(Landroid/content/Context;Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/http/IDownLoadListener;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    :cond_4
    if-eqz v6, :cond_7

    .line 344
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v0, v0, Lcn/nubia/upgrade/service/UpgradeWork;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentInstall()Z

    move-result v0

    if-nez v0, :cond_6

    .line 345
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->access$900(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeWork;->access$700(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1000(Lcn/nubia/upgrade/service/UpgradeWork;Landroid/content/Context;Ljava/lang/String;)V

    .line 353
    :cond_5
    :goto_2
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1200(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 347
    :cond_6
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->access$900(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeWork;->access$700(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1100(Lcn/nubia/upgrade/service/UpgradeWork;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    .line 348
    .restart local v9    # "res":Z
    if-nez v9, :cond_5

    .line 349
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->access$800(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SilentInstall PACH ERROR!!!"

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->access$900(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeWork;->access$700(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1000(Lcn/nubia/upgrade/service/UpgradeWork;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 356
    .end local v9    # "res":Z
    :cond_7
    const/4 v7, 0x0

    .line 357
    .local v7, "patchDownloaded":Z
    if-nez v7, :cond_0

    .line 360
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->access$000(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/http/HttpDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->access$900(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    .line 361
    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeWork;->access$200(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    .line 362
    invoke-static {v3}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1300(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    .line 363
    invoke-static {v4}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1400(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    .line 364
    invoke-static {v5}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1500(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v5

    .line 360
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/upgrade/http/HttpDownloadManager;->startDownload(Landroid/content/Context;Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/http/IDownLoadListener;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 370
    .end local v6    # "isFileExist":Z
    .end local v7    # "patchDownloaded":Z
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-virtual {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->stopSelf()V

    goto/16 :goto_0

    .line 373
    :pswitch_2
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 374
    .local v8, "path":Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0, v8}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1600(Lcn/nubia/upgrade/service/UpgradeWork;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
