.class Lcn/nubia/upgrade/service/UpgradeWork$c;
.super Landroid/os/Handler;
.source "UpgradeWork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/service/UpgradeWork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
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


# direct methods
.method public constructor <init>(Lcn/nubia/upgrade/service/UpgradeWork;)V
    .locals 1

    .prologue
    .line 250
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 251
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$c;->a:Ljava/lang/ref/WeakReference;

    .line 252
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 256
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 258
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 260
    :sswitch_0
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v0, v0, Lcn/nubia/upgrade/service/UpgradeWork;->a:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isShowNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$c;->a:Ljava/lang/ref/WeakReference;

    .line 262
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->b(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/app/Notification$Builder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->c(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/http/DownloadRequest;->getFileSize()J

    move-result-wide v4

    .line 266
    int-to-long v6, v1

    mul-long/2addr v6, v4

    long-to-float v0, v6

    const/high16 v3, 0x4cc80000    # 1.048576E8f

    div-float v3, v0, v3

    .line 267
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->d(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "("

    .line 268
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "0.00"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v8, v3

    .line 269
    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    .line 269
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v6, "0.00"

    invoke-direct {v3, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float v4, v4

    const/high16 v5, 0x49800000    # 1048576.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    .line 270
    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 269
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "M"

    .line 270
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->b(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 273
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->b(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 275
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->b(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 277
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->b(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 277
    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 279
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 280
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 281
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->b(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/service/UpgradeWork;->a(Lcn/nubia/upgrade/service/UpgradeWork;Landroid/app/Notification;)Landroid/app/Notification;

    .line 286
    :goto_1
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->f(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/app/NotificationManager;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$c;->a:Ljava/lang/ref/WeakReference;

    .line 287
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->e(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/app/Notification;

    move-result-object v0

    .line 286
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->b(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/service/UpgradeWork;->a(Lcn/nubia/upgrade/service/UpgradeWork;Landroid/app/Notification;)Landroid/app/Notification;

    goto :goto_1

    .line 292
    :sswitch_1
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v0, v0, Lcn/nubia/upgrade/service/UpgradeWork;->a:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isShowNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$c;->a:Ljava/lang/ref/WeakReference;

    .line 293
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v0, v0, Lcn/nubia/upgrade/service/UpgradeWork;->a:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    .line 294
    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentDownload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->g(Lcn/nubia/upgrade/service/UpgradeWork;)V

    goto/16 :goto_0

    .line 258
    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_0
        0x2710 -> :sswitch_1
    .end sparse-switch
.end method
