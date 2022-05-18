.class Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;
.super Ljava/lang/Object;
.source "UpgradeWork.java"

# interfaces
.implements Lcn/nubia/upgrade/http/IDownLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/service/UpgradeWork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadCallback"
.end annotation


# instance fields
.field private mRealTime:J

.field private mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/upgrade/service/UpgradeWork;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/upgrade/service/UpgradeWork;)V
    .locals 2
    .param p1, "ref"    # Lcn/nubia/upgrade/service/UpgradeWork;

    .prologue
    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mRealTime:J

    .line 555
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    .line 556
    return-void
.end method


# virtual methods
.method public onDownloadComplete(Ljava/lang/String;)V
    .locals 2
    .param p1, "downLoadPath"    # Ljava/lang/String;

    .prologue
    .line 627
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 628
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 629
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    .line 630
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 631
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1200(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 633
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onDownloadError(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 589
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 590
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1800(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 592
    :try_start_0
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1800(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onDownloadError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :cond_0
    :goto_0
    const/16 v1, 0x3ed

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3ec

    if-eq p1, v1, :cond_1

    const/16 v1, 0x7d5

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3ef

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3f0

    if-eq p1, v1, :cond_1

    const/16 v1, 0x7d4

    if-ne p1, v1, :cond_2

    .line 605
    :cond_1
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-virtual {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->stopSelf()V

    .line 608
    :cond_2
    return-void

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 595
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/service/UpgradeWork;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1802(Lcn/nubia/upgrade/service/UpgradeWork;Lcn/nubia/upgrade/service/DownloadBinderProxy;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    goto :goto_0
.end method

.method public onDownloadPause()V
    .locals 3

    .prologue
    .line 612
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 613
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1800(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 615
    :try_start_0
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1800(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onDownloadPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :cond_0
    :goto_0
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-virtual {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->stopSelf()V

    .line 623
    :cond_1
    return-void

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 618
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/service/UpgradeWork;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1802(Lcn/nubia/upgrade/service/UpgradeWork;Lcn/nubia/upgrade/service/DownloadBinderProxy;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    goto :goto_0
.end method

.method public onDownloadProgress(I)V
    .locals 9
    .param p1, "progress"    # I

    .prologue
    .line 637
    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 638
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 639
    .local v2, "secondTime":J
    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v6, v6, Lcn/nubia/upgrade/service/UpgradeWork;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    .line 640
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v6, v6, Lcn/nubia/upgrade/service/UpgradeWork;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v6}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isShowNotification()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    .line 641
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v6, v6, Lcn/nubia/upgrade/service/UpgradeWork;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v6}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentDownload()Z

    move-result v6

    if-nez v6, :cond_1

    .line 642
    iget-wide v6, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mRealTime:J

    sub-long v4, v2, v6

    .line 643
    .local v4, "timeOffset":J
    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v6, v6, Lcn/nubia/upgrade/service/UpgradeWork;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v6}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getNotificationUpdateOffset()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    const/16 v6, 0x64

    if-lt p1, v6, :cond_1

    .line 645
    :cond_0
    iput-wide v2, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mRealTime:J

    .line 646
    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v6}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1700(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/UpgradeWork$UIHandler;

    move-result-object v6

    const/16 v7, 0x67

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcn/nubia/upgrade/service/UpgradeWork$UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 647
    .local v1, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v6}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1700(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/UpgradeWork$UIHandler;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcn/nubia/upgrade/service/UpgradeWork$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 650
    .end local v1    # "msg":Landroid/os/Message;
    .end local v4    # "timeOffset":J
    :cond_1
    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v6}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1800(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 652
    :try_start_0
    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v6}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1800(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v6

    invoke-interface {v6, p1}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onDownloadProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    .end local v2    # "secondTime":J
    :cond_2
    :goto_0
    return-void

    .line 653
    .restart local v2    # "secondTime":J
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 655
    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/upgrade/service/UpgradeWork;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1802(Lcn/nubia/upgrade/service/UpgradeWork;Lcn/nubia/upgrade/service/DownloadBinderProxy;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    goto :goto_0
.end method

.method public onResumeDownload()V
    .locals 3

    .prologue
    .line 575
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 576
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1800(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 578
    :try_start_0
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1800(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onResumeDownload()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 581
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/service/UpgradeWork;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1802(Lcn/nubia/upgrade/service/UpgradeWork;Lcn/nubia/upgrade/service/DownloadBinderProxy;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    goto :goto_0
.end method

.method public onStartDownload()V
    .locals 3

    .prologue
    .line 560
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 561
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1700(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/UpgradeWork$UIHandler;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/service/UpgradeWork$UIHandler;->sendEmptyMessage(I)Z

    .line 562
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1800(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 564
    :try_start_0
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1800(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onStartDownload()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 567
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/service/UpgradeWork;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/upgrade/service/UpgradeWork;->access$1802(Lcn/nubia/upgrade/service/UpgradeWork;Lcn/nubia/upgrade/service/DownloadBinderProxy;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    goto :goto_0
.end method
