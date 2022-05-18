.class Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;


# direct methods
.method constructor <init>(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 156
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 180
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-virtual {p1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->stopSelf()V

    goto/16 :goto_1

    .line 158
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {p1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleMessage] isAppModeSet = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {v1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->b(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {p1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->c(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Ljava/lang/String;

    move-result-object p1

    .line 160
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {v0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EEPROM\u4fe1\u606f\u5199\u5165\u7ed3\u679c\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.calibrationdone"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "OK"

    .line 163
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "result"

    if-eqz v1, :cond_2

    .line 164
    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {v1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "writeeeprom success!"

    invoke-static {v1, v3}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    const-string v3, "WriteSuccess"

    invoke-static {v1, v3}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;Ljava/lang/String;)V

    const-string v1, "ok"

    .line 166
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 168
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {v1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "writeeeprom fail!"

    invoke-static {v1, v3}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    const-string v3, "WriteFail"

    invoke-static {v1, v3}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;Ljava/lang/String;)V

    const-string v1, "fail"

    .line 170
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EEPROM\u4fe1\u606f\u5199\u5165\u7ed3\u679c\uff1a      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;Ljava/lang/CharSequence;)V

    .line 173
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-static {p1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->d(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)V

    .line 175
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 177
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-virtual {p1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->stopSelf()V

    :goto_1
    return-void
.end method
