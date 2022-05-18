.class Lcn/nubia/camera/dualcameracalibration/b$4;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/dualcameracalibration/b;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/dualcameracalibration/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/dualcameracalibration/b;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/b$4;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 505
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calibration done,  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "result"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DualCalibrationFragment"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    const-string p1, "\u56de\u5199\u6210\u529f!"

    .line 513
    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object p2, p0, Lcn/nubia/camera/dualcameracalibration/b$4;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-static {p2}, Lcn/nubia/camera/dualcameracalibration/b;->i(Lcn/nubia/camera/dualcameracalibration/b;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    move v2, v3

    goto :goto_1

    .line 516
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "\u56de\u5199\u5931\u8d25!"

    .line 517
    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object p2, p0, Lcn/nubia/camera/dualcameracalibration/b$4;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-static {p2}, Lcn/nubia/camera/dualcameracalibration/b;->i(Lcn/nubia/camera/dualcameracalibration/b;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 520
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "eeprom\u6587\u4ef6\u4e0d\u5b58\u5728"

    .line 521
    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object p2, p0, Lcn/nubia/camera/dualcameracalibration/b$4;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-static {p2}, Lcn/nubia/camera/dualcameracalibration/b;->i(Lcn/nubia/camera/dualcameracalibration/b;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_3
    const-string p1, "\u672a\u77e5\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5!"

    .line 525
    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object p2, p0, Lcn/nubia/camera/dualcameracalibration/b$4;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-static {p2}, Lcn/nubia/camera/dualcameracalibration/b;->i(Lcn/nubia/camera/dualcameracalibration/b;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 530
    :goto_1
    new-instance p1, Lcn/nubia/camera/am/a$a;

    iget-object p2, p0, Lcn/nubia/camera/dualcameracalibration/b$4;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-virtual {p2}, Lcn/nubia/camera/dualcameracalibration/b;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcn/nubia/camera/am/a$a;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_5

    .line 533
    iget-object p2, p0, Lcn/nubia/camera/dualcameracalibration/b$4;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-static {p2}, Lcn/nubia/camera/dualcameracalibration/b;->j(Lcn/nubia/camera/dualcameracalibration/b;)Z

    move-result p2

    if-eqz p2, :cond_4

    const p2, 0x7f0f02fd

    goto :goto_2

    :cond_4
    const p2, 0x7f0f02fc

    goto :goto_2

    :cond_5
    const p2, 0x7f0f02fb

    :goto_2
    const v0, 0x7f0f02fe

    .line 538
    invoke-virtual {p1, v0}, Lcn/nubia/camera/am/a$a;->c(I)Lcn/nubia/camera/am/a$a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b$4;->a:Lcn/nubia/camera/dualcameracalibration/b;

    .line 539
    invoke-virtual {v0, p2}, Lcn/nubia/camera/dualcameracalibration/b;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/camera/am/a$a;->a(Ljava/lang/String;)Lcn/nubia/camera/am/a$a;

    move-result-object p1

    const p2, 0x7f0f02f5

    new-instance v0, Lcn/nubia/camera/dualcameracalibration/b$4$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/dualcameracalibration/b$4$1;-><init>(Lcn/nubia/camera/dualcameracalibration/b$4;)V

    .line 540
    invoke-virtual {p1, p2, v0}, Lcn/nubia/camera/am/a$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;

    move-result-object p1

    .line 549
    invoke-virtual {p1}, Lcn/nubia/camera/am/a$a;->a()Lcn/nubia/camera/am/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/am/a;->show()V

    .line 550
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/b$4;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-static {p1}, Lcn/nubia/camera/dualcameracalibration/b;->k(Lcn/nubia/camera/dualcameracalibration/b;)V

    return-void
.end method
