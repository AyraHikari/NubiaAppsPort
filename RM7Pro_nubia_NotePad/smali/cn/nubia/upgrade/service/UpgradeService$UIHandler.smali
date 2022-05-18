.class Lcn/nubia/upgrade/service/UpgradeService$UIHandler;
.super Landroid/os/Handler;
.source "UpgradeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/service/UpgradeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/upgrade/service/UpgradeService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/upgrade/service/UpgradeService;)V
    .locals 1
    .param p1, "ref"    # Lcn/nubia/upgrade/service/UpgradeService;

    .prologue
    .line 294
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 296
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 297
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 302
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 304
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 306
    :sswitch_0
    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeService$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeService$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 307
    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeService$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v6}, Lcn/nubia/upgrade/service/UpgradeService;->access$100(Lcn/nubia/upgrade/service/UpgradeService;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isShowNotification()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeService$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v6}, Lcn/nubia/upgrade/service/UpgradeService;->access$200(Lcn/nubia/upgrade/service/UpgradeService;)Landroid/app/Notification$Builder;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 311
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 312
    .local v3, "progress":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .local v1, "content":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeService$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v6}, Lcn/nubia/upgrade/service/UpgradeService;->access$300(Lcn/nubia/upgrade/service/UpgradeService;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/upgrade/http/DownloadRequest;->getFileSize()J

    move-result-wide v4

    .line 314
    .local v4, "fileSize":J
    int-to-long v6, v3

    mul-long/2addr v6, v4

    long-to-float v6, v6

    const/high16 v7, 0x4cc80000    # 1.048576E8f

    div-float v2, v6, v7

    .line 315
    .local v2, "currentSize":F
    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeService$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v6}, Lcn/nubia/upgrade/service/UpgradeService;->access$400(Lcn/nubia/upgrade/service/UpgradeService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "0.00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "0.00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float v8, v4

    const/high16 v9, 0x49800000    # 1048576.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "M"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeService$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v6}, Lcn/nubia/upgrade/service/UpgradeService;->access$200(Lcn/nubia/upgrade/service/UpgradeService;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 321
    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeService$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v6}, Lcn/nubia/upgrade/service/UpgradeService;->access$200(Lcn/nubia/upgrade/service/UpgradeService;)Landroid/app/Notification$Builder;

    move-result-object v6

    const/16 v7, 0x64

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v3, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 323
    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeService$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v6}, Lcn/nubia/upgrade/service/UpgradeService;->access$200(Lcn/nubia/upgrade/service/UpgradeService;)Landroid/app/Notification$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 325
    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeService$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v6}, Lcn/nubia/upgrade/service/UpgradeService;->access$200(Lcn/nubia/upgrade/service/UpgradeService;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 327
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 328
    .local v0, "code":I
    const/16 v6, 0x10

    if-lt v0, v6, :cond_1

    .line 329
    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeService$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/upgrade/service/UpgradeService;

    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v7}, Lcn/nubia/upgrade/service/UpgradeService;->access$200(Lcn/nubia/upgrade/service/UpgradeService;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/upgrade/service/UpgradeService;->access$502(Lcn/nubia/upgrade/service/UpgradeService;Landroid/app/Notification;)Landroid/app/Notification;

    .line 336
    :goto_1
    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeService$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v6}, Lcn/nubia/upgrade/service/UpgradeService;->access$600(Lcn/nubia/upgrade/service/UpgradeService;)Landroid/app/NotificationManager;

    move-result-object v7

    const/4 v8, 0x3

    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeService$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v6}, Lcn/nubia/upgrade/service/UpgradeService;->access$500(Lcn/nubia/upgrade/service/UpgradeService;)Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 332
    :cond_1
    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeService$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/upgrade/service/UpgradeService;

    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v7}, Lcn/nubia/upgrade/service/UpgradeService;->access$200(Lcn/nubia/upgrade/service/UpgradeService;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/upgrade/service/UpgradeService;->access$502(Lcn/nubia/upgrade/service/UpgradeService;Landroid/app/Notification;)Landroid/app/Notification;

    goto :goto_1

    .line 345
    .end local v0    # "code":I
    .end local v1    # "content":Ljava/lang/StringBuilder;
    .end local v2    # "currentSize":F
    .end local v3    # "progress":I
    .end local v4    # "fileSize":J
    :sswitch_1
    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeService$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v6}, Lcn/nubia/upgrade/service/UpgradeService;->access$100(Lcn/nubia/upgrade/service/UpgradeService;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isShowNotification()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeService$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v6}, Lcn/nubia/upgrade/service/UpgradeService;->access$100(Lcn/nubia/upgrade/service/UpgradeService;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSlientDownload()Z

    move-result v6

    if-nez v6, :cond_0

    .line 348
    iget-object v6, p0, Lcn/nubia/upgrade/service/UpgradeService$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v6}, Lcn/nubia/upgrade/service/UpgradeService;->access$700(Lcn/nubia/upgrade/service/UpgradeService;)V

    goto/16 :goto_0

    .line 304
    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_0
        0x2710 -> :sswitch_1
    .end sparse-switch
.end method
