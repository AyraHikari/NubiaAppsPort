.class Lcn/nubia/upgrade/service/UpgradeWork$a;
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
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/upgrade/service/UpgradeWork;",
            ">;"
        }
    .end annotation
.end field

.field private b:J


# direct methods
.method public constructor <init>(Lcn/nubia/upgrade/service/UpgradeWork;)V
    .locals 2

    .prologue
    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->b:J

    .line 554
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    .line 555
    return-void
.end method


# virtual methods
.method public onDownloadComplete(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 627
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 628
    const/16 v0, 0x66

    iput v0, v1, Landroid/os/Message;->what:I

    .line 629
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 630
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->k(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 632
    :cond_0
    return-void
.end method

.method public onDownloadError(I)V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 589
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->p(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 591
    :try_start_0
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->p(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onDownloadError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :cond_0
    :goto_0
    const/16 v0, 0x3ed

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3ec

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3ef

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d4

    if-ne p1, v0, :cond_2

    .line 604
    :cond_1
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-virtual {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->b()V

    .line 607
    :cond_2
    return-void

    .line 592
    :catch_0
    move-exception v0

    .line 593
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 594
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/upgrade/service/UpgradeWork;->a(Lcn/nubia/upgrade/service/UpgradeWork;Lcn/nubia/upgrade/service/DownloadBinderProxy;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    goto :goto_0
.end method

.method public onDownloadPause()V
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 612
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->p(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 614
    :try_start_0
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->p(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onDownloadPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-virtual {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->b()V

    .line 622
    :cond_1
    return-void

    .line 615
    :catch_0
    move-exception v0

    .line 616
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 617
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/upgrade/service/UpgradeWork;->a(Lcn/nubia/upgrade/service/UpgradeWork;Lcn/nubia/upgrade/service/DownloadBinderProxy;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    goto :goto_0
.end method

.method public onDownloadProgress(I)V
    .locals 6

    .prologue
    .line 636
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 637
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 638
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v0, v0, Lcn/nubia/upgrade/service/UpgradeWork;->a:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    .line 639
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v0, v0, Lcn/nubia/upgrade/service/UpgradeWork;->a:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isShowNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    .line 640
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v0, v0, Lcn/nubia/upgrade/service/UpgradeWork;->a:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentDownload()Z

    move-result v0

    if-nez v0, :cond_1

    .line 641
    iget-wide v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->b:J

    sub-long v4, v2, v0

    .line 642
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v0, v0, Lcn/nubia/upgrade/service/UpgradeWork;->a:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getNotificationUpdateOffset()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-gez v0, :cond_0

    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    .line 644
    :cond_0
    iput-wide v2, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->b:J

    .line 645
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->o(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/UpgradeWork$c;

    move-result-object v0

    const/16 v1, 0x67

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/upgrade/service/UpgradeWork$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 646
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->o(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/UpgradeWork$c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/service/UpgradeWork$c;->sendMessage(Landroid/os/Message;)Z

    .line 649
    :cond_1
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->p(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 651
    :try_start_0
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->p(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onDownloadProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :cond_2
    :goto_0
    return-void

    .line 652
    :catch_0
    move-exception v0

    .line 653
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 654
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/upgrade/service/UpgradeWork;->a(Lcn/nubia/upgrade/service/UpgradeWork;Lcn/nubia/upgrade/service/DownloadBinderProxy;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    goto :goto_0
.end method

.method public onResumeDownload()V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->p(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 577
    :try_start_0
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->p(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onResumeDownload()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 578
    :catch_0
    move-exception v0

    .line 579
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 580
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/upgrade/service/UpgradeWork;->a(Lcn/nubia/upgrade/service/UpgradeWork;Lcn/nubia/upgrade/service/DownloadBinderProxy;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    goto :goto_0
.end method

.method public onStartDownload()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->o(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/UpgradeWork$c;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/service/UpgradeWork$c;->sendEmptyMessage(I)Z

    .line 561
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->p(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    :try_start_0
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->p(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onStartDownload()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 564
    :catch_0
    move-exception v0

    .line 565
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 566
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/upgrade/service/UpgradeWork;->a(Lcn/nubia/upgrade/service/UpgradeWork;Lcn/nubia/upgrade/service/DownloadBinderProxy;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    goto :goto_0
.end method
