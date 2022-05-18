.class Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;
.super Landroid/os/Handler;
.source "UpgradeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/service/UpgradeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/upgrade/service/UpgradeService;


# direct methods
.method private constructor <init>(Lcn/nubia/upgrade/service/UpgradeService;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/upgrade/service/UpgradeService;Lcn/nubia/upgrade/service/UpgradeService$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/upgrade/service/UpgradeService;
    .param p2, "x1"    # Lcn/nubia/upgrade/service/UpgradeService$1;

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;-><init>(Lcn/nubia/upgrade/service/UpgradeService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v4, 0x7d0

    const/16 v3, 0x65

    .line 374
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 376
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 379
    :pswitch_0
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeService;->access$300(Lcn/nubia/upgrade/service/UpgradeService;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/util/CommonUtils;->isNewVersionApkExist(Lcn/nubia/upgrade/http/DownloadRequest;)Z

    move-result v6

    .line 382
    .local v6, "isFileExist":Z
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeService;->access$300(Lcn/nubia/upgrade/service/UpgradeService;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeService;->access$300(Lcn/nubia/upgrade/service/UpgradeService;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/service/UpgradeService;->access$902(Lcn/nubia/upgrade/service/UpgradeService;Ljava/lang/String;)Ljava/lang/String;

    .line 385
    const-string v0, "UpgradeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_CHECK_INSTALL->mDstApkFilePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeService;->access$900(Lcn/nubia/upgrade/service/UpgradeService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeService;->access$300(Lcn/nubia/upgrade/service/UpgradeService;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/http/DownloadRequest;->getIspatch()Z

    move-result v0

    if-nez v0, :cond_4

    .line 389
    if-eqz v6, :cond_3

    .line 391
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeService;->access$100(Lcn/nubia/upgrade/service/UpgradeService;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSlientInstaller()Z

    move-result v0

    if-nez v0, :cond_2

    .line 392
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeService;->access$1000(Lcn/nubia/upgrade/service/UpgradeService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeService;->access$900(Lcn/nubia/upgrade/service/UpgradeService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/upgrade/service/UpgradeService;->access$1100(Lcn/nubia/upgrade/service/UpgradeService;Landroid/content/Context;Ljava/lang/String;)V

    .line 402
    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeService;->access$1300(Lcn/nubia/upgrade/service/UpgradeService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 394
    :cond_2
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeService;->access$900(Lcn/nubia/upgrade/service/UpgradeService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/service/UpgradeService;->access$1200(Lcn/nubia/upgrade/service/UpgradeService;Ljava/lang/String;)Z

    move-result v9

    .line 395
    .local v9, "res":Z
    if-nez v9, :cond_1

    .line 396
    const-string v0, "UpgradeService"

    const-string v1, "SlientInstall PACH ERROR!!!"

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeService;->access$1000(Lcn/nubia/upgrade/service/UpgradeService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeService;->access$900(Lcn/nubia/upgrade/service/UpgradeService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/upgrade/service/UpgradeService;->access$1100(Lcn/nubia/upgrade/service/UpgradeService;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 406
    .end local v9    # "res":Z
    :cond_3
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeService;->access$000(Lcn/nubia/upgrade/service/UpgradeService;)Lcn/nubia/upgrade/http/HttpDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeService;->access$300(Lcn/nubia/upgrade/service/UpgradeService;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v3}, Lcn/nubia/upgrade/service/UpgradeService;->access$1400(Lcn/nubia/upgrade/service/UpgradeService;)Lcn/nubia/upgrade/service/UpgradeService$DownloadCallback;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v4}, Lcn/nubia/upgrade/service/UpgradeService;->access$1500(Lcn/nubia/upgrade/service/UpgradeService;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v5}, Lcn/nubia/upgrade/service/UpgradeService;->access$1600(Lcn/nubia/upgrade/service/UpgradeService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/upgrade/http/HttpDownloadManager;->startDownload(Landroid/content/Context;Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/http/IDownLoadListener;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 411
    :cond_4
    if-eqz v6, :cond_7

    .line 413
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeService;->access$100(Lcn/nubia/upgrade/service/UpgradeService;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSlientInstaller()Z

    move-result v0

    if-nez v0, :cond_6

    .line 414
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeService;->access$1000(Lcn/nubia/upgrade/service/UpgradeService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeService;->access$900(Lcn/nubia/upgrade/service/UpgradeService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/upgrade/service/UpgradeService;->access$1100(Lcn/nubia/upgrade/service/UpgradeService;Landroid/content/Context;Ljava/lang/String;)V

    .line 424
    :cond_5
    :goto_2
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeService;->access$1300(Lcn/nubia/upgrade/service/UpgradeService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 416
    :cond_6
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeService;->access$900(Lcn/nubia/upgrade/service/UpgradeService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/service/UpgradeService;->access$1200(Lcn/nubia/upgrade/service/UpgradeService;Ljava/lang/String;)Z

    move-result v9

    .line 417
    .restart local v9    # "res":Z
    if-nez v9, :cond_5

    .line 418
    const-string v0, "UpgradeService"

    const-string v1, "SlientInstall PACH ERROR!!!"

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeService;->access$1000(Lcn/nubia/upgrade/service/UpgradeService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeService;->access$900(Lcn/nubia/upgrade/service/UpgradeService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/upgrade/service/UpgradeService;->access$1100(Lcn/nubia/upgrade/service/UpgradeService;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 429
    .end local v9    # "res":Z
    :cond_7
    const/4 v7, 0x0

    .line 430
    .local v7, "patchDownloaded":Z
    if-nez v7, :cond_0

    .line 433
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeService;->access$000(Lcn/nubia/upgrade/service/UpgradeService;)Lcn/nubia/upgrade/http/HttpDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeService;->access$300(Lcn/nubia/upgrade/service/UpgradeService;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v3}, Lcn/nubia/upgrade/service/UpgradeService;->access$1400(Lcn/nubia/upgrade/service/UpgradeService;)Lcn/nubia/upgrade/service/UpgradeService$DownloadCallback;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v4}, Lcn/nubia/upgrade/service/UpgradeService;->access$1500(Lcn/nubia/upgrade/service/UpgradeService;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v5}, Lcn/nubia/upgrade/service/UpgradeService;->access$1600(Lcn/nubia/upgrade/service/UpgradeService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/upgrade/http/HttpDownloadManager;->startDownload(Landroid/content/Context;Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/http/IDownLoadListener;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 442
    .end local v6    # "isFileExist":Z
    .end local v7    # "patchDownloaded":Z
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-virtual {v0}, Lcn/nubia/upgrade/service/UpgradeService;->stopSelf()V

    goto/16 :goto_0

    .line 446
    :pswitch_2
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 447
    .local v8, "path":Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v0, v8}, Lcn/nubia/upgrade/service/UpgradeService;->access$1700(Lcn/nubia/upgrade/service/UpgradeService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 376
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
