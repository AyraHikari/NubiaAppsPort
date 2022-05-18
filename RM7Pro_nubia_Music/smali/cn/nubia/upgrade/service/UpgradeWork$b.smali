.class Lcn/nubia/upgrade/service/UpgradeWork$b;
.super Landroid/os/Handler;
.source "UpgradeWork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/service/UpgradeWork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/upgrade/service/UpgradeWork;


# direct methods
.method public constructor <init>(Lcn/nubia/upgrade/service/UpgradeWork;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    .line 306
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 307
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x7d0

    const/16 v4, 0x65

    .line 311
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 313
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 379
    :goto_0
    return-void

    .line 315
    :pswitch_0
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->c(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/util/CommonUtils;->isNewVersionApkExist(Lcn/nubia/upgrade/http/DownloadRequest;)Z

    move-result v0

    .line 316
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v3}, Lcn/nubia/upgrade/service/UpgradeWork;->c(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v3}, Lcn/nubia/upgrade/service/UpgradeWork;->c(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/upgrade/service/UpgradeWork;->a(Lcn/nubia/upgrade/service/UpgradeWork;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->c(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/upgrade/http/DownloadRequest;->getIsPatch()Z

    move-result v1

    if-nez v1, :cond_3

    .line 320
    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->h(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(apk file to be install)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeWork;->i(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v0, v0, Lcn/nubia/upgrade/service/UpgradeWork;->a:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentInstall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->j(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeWork;->i(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/upgrade/service/UpgradeWork;->a(Lcn/nubia/upgrade/service/UpgradeWork;Landroid/content/Context;Ljava/lang/String;)V

    .line 332
    :cond_0
    :goto_1
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->k(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 326
    :cond_1
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->j(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeWork;->i(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/upgrade/service/UpgradeWork;->b(Lcn/nubia/upgrade/service/UpgradeWork;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 327
    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->h(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "silent install fail. try normal install."

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->j(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeWork;->i(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/upgrade/service/UpgradeWork;->a(Lcn/nubia/upgrade/service/UpgradeWork;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 334
    :cond_2
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->a(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/http/HttpDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->j(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    .line 335
    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeWork;->c(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    .line 336
    invoke-static {v3}, Lcn/nubia/upgrade/service/UpgradeWork;->l(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/UpgradeWork$a;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    .line 337
    invoke-static {v4}, Lcn/nubia/upgrade/service/UpgradeWork;->m(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    .line 338
    invoke-static {v5}, Lcn/nubia/upgrade/service/UpgradeWork;->n(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v5

    .line 334
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/upgrade/http/HttpDownloadManager;->startDownload(Landroid/content/Context;Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/http/IDownLoadListener;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    :cond_3
    if-eqz v0, :cond_6

    .line 344
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v0, v0, Lcn/nubia/upgrade/service/UpgradeWork;->a:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentInstall()Z

    move-result v0

    if-nez v0, :cond_5

    .line 345
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->j(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeWork;->i(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/upgrade/service/UpgradeWork;->a(Lcn/nubia/upgrade/service/UpgradeWork;Landroid/content/Context;Ljava/lang/String;)V

    .line 353
    :cond_4
    :goto_2
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->k(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 347
    :cond_5
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->j(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeWork;->i(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/upgrade/service/UpgradeWork;->b(Lcn/nubia/upgrade/service/UpgradeWork;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 348
    if-nez v0, :cond_4

    .line 349
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->h(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SilentInstall PACH ERROR!!!"

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->j(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeWork;->i(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/upgrade/service/UpgradeWork;->a(Lcn/nubia/upgrade/service/UpgradeWork;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 360
    :cond_6
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->a(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/http/HttpDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1}, Lcn/nubia/upgrade/service/UpgradeWork;->j(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    .line 361
    invoke-static {v2}, Lcn/nubia/upgrade/service/UpgradeWork;->c(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    .line 362
    invoke-static {v3}, Lcn/nubia/upgrade/service/UpgradeWork;->l(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/UpgradeWork$a;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    .line 363
    invoke-static {v4}, Lcn/nubia/upgrade/service/UpgradeWork;->m(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    .line 364
    invoke-static {v5}, Lcn/nubia/upgrade/service/UpgradeWork;->n(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;

    move-result-object v5

    .line 360
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/upgrade/http/HttpDownloadManager;->startDownload(Landroid/content/Context;Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/http/IDownLoadListener;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 370
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-virtual {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->b()V

    goto/16 :goto_0

    .line 373
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 374
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork$b;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v1, v0}, Lcn/nubia/upgrade/service/UpgradeWork;->b(Lcn/nubia/upgrade/service/UpgradeWork;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
