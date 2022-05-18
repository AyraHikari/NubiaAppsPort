.class Lcom/huanju/ssp/base/core/download/DownLoadManager$2;
.super Ljava/lang/Object;
.source "DownLoadManager.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/download/listener/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/download/DownLoadManager;->download(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/download/DownLoadManager;

.field final synthetic val$item:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/download/DownLoadManager;Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/download/DownLoadManager;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;->this$0:Lcom/huanju/ssp/base/core/download/DownLoadManager;

    iput-object p2, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;->val$item:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;ILjava/lang/String;)V
    .locals 2
    .param p1, "hjDownItem"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    .param p2, "errorCode"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;->this$0:Lcom/huanju/ssp/base/core/download/DownLoadManager;

    invoke-static {v0, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->access$100(Lcom/huanju/ssp/base/core/download/DownLoadManager;Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 368
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;->val$item:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getListener()Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;->val$item:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getListener()Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;->onDownloadError(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;ILjava/lang/String;)V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;->val$item:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getAdDownLoadListener()Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;->val$item:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getAdDownLoadListener()Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;->val$item:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getReqId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;->onDownLoadError(Ljava/lang/String;ILjava/lang/String;)V

    .line 375
    :cond_1
    return-void
.end method

.method public onFinish(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 4
    .param p1, "hjDownItem"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 318
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinish item.isGuangdiantong():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;->val$item:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->isGuangdiantong()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",item.getPackageName():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;->val$item:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    sget-object v1, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v3, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 320
    iget-object v2, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;->this$0:Lcom/huanju/ssp/base/core/download/DownLoadManager;

    sget-object v1, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->isAppInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;->this$0:Lcom/huanju/ssp/base/core/download/DownLoadManager;

    invoke-static {v1, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->access$300(Lcom/huanju/ssp/base/core/download/DownLoadManager;Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 323
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setCurrentState(I)V

    .line 337
    :goto_0
    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;->this$0:Lcom/huanju/ssp/base/core/download/DownLoadManager;

    invoke-static {v1, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->access$100(Lcom/huanju/ssp/base/core/download/DownLoadManager;Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 339
    sget-object v1, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->update(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 341
    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;->this$0:Lcom/huanju/ssp/base/core/download/DownLoadManager;

    const-string v2, "downloaded_tracker"

    invoke-static {v1, p1, v2}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->access$200(Lcom/huanju/ssp/base/core/download/DownLoadManager;Lcom/huanju/ssp/base/core/download/bean/DownloadItem;Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;->val$item:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getListener()Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;->val$item:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getListener()Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;->onDownloaded(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 350
    :cond_0
    :goto_1
    return-void

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;->this$0:Lcom/huanju/ssp/base/core/download/DownLoadManager;

    invoke-virtual {v1, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->installApp(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onProcessing(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 1
    .param p1, "hjDownItem"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;->this$0:Lcom/huanju/ssp/base/core/download/DownLoadManager;

    invoke-static {v0, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->access$100(Lcom/huanju/ssp/base/core/download/DownLoadManager;Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 313
    return-void
.end method

.method public onStart(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 3
    .param p1, "hjDownItem"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 290
    :try_start_0
    sget-object v1, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->update(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 292
    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;->this$0:Lcom/huanju/ssp/base/core/download/DownLoadManager;

    invoke-static {v1, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->access$100(Lcom/huanju/ssp/base/core/download/DownLoadManager;Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 295
    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;->this$0:Lcom/huanju/ssp/base/core/download/DownLoadManager;

    const-string v2, "click_tracker"

    invoke-static {v1, p1, v2}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->access$200(Lcom/huanju/ssp/base/core/download/DownLoadManager;Lcom/huanju/ssp/base/core/download/bean/DownloadItem;Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;->this$0:Lcom/huanju/ssp/base/core/download/DownLoadManager;

    const-string v2, "s_downloaded_tracker"

    invoke-static {v1, p1, v2}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->access$200(Lcom/huanju/ssp/base/core/download/DownLoadManager;Lcom/huanju/ssp/base/core/download/bean/DownloadItem;Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;->val$item:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getListener()Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;->val$item:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getListener()Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;->onDownloadStart(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStop(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 2
    .param p1, "hjDownItem"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$2;->this$0:Lcom/huanju/ssp/base/core/download/DownLoadManager;

    invoke-static {v1, p1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->access$100(Lcom/huanju/ssp/base/core/download/DownLoadManager;Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 356
    sget-object v1, Lcom/huanju/ssp/base/core/download/DownLoadManager;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huanju/ssp/base/core/download/database/DownloadDBManager;->update(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
