.class Lcom/android/captureCamera/CaptureCameraService$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/captureCamera/CaptureCameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/captureCamera/CaptureCameraService;


# direct methods
.method constructor <init>(Lcom/android/captureCamera/CaptureCameraService;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/captureCamera/CaptureCameraService$1;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 110
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService$1;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0, p1}, Lcom/android/captureCamera/CaptureCameraService;->a(Lcom/android/captureCamera/CaptureCameraService;Landroid/content/Context;)Landroid/content/Context;

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "action = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CaptureCameraService"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p1, p0, Lcom/android/captureCamera/CaptureCameraService$1;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {p1}, Lcom/android/captureCamera/CaptureCameraService;->a(Lcom/android/captureCamera/CaptureCameraService;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "isEnterSystem!"

    .line 113
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/android/captureCamera/CaptureCameraService$1;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {p1}, Lcom/android/captureCamera/CaptureCameraService;->b(Lcom/android/captureCamera/CaptureCameraService;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "isPhoneCalled!"

    .line 117
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/android/captureCamera/CaptureCameraService$1;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {p1}, Lcom/android/captureCamera/CaptureCameraService;->c(Lcom/android/captureCamera/CaptureCameraService;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "isScreenOn"

    .line 121
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 125
    :cond_2
    iget-object p1, p0, Lcom/android/captureCamera/CaptureCameraService$1;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {p1}, Lcom/android/captureCamera/CaptureCameraService;->d(Lcom/android/captureCamera/CaptureCameraService;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/captureCamera/CaptureCameraService$1;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {p1}, Lcom/android/captureCamera/CaptureCameraService;->e(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/d;

    move-result-object p1

    sget-object p2, Lcom/android/captureCamera/d;->b:Lcom/android/captureCamera/d;

    if-eq p1, p2, :cond_3

    .line 126
    iget-object p1, p0, Lcom/android/captureCamera/CaptureCameraService$1;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {p1}, Lcom/android/captureCamera/CaptureCameraService;->f(Lcom/android/captureCamera/CaptureCameraService;)V

    goto :goto_0

    .line 128
    :cond_3
    iget-object p1, p0, Lcom/android/captureCamera/CaptureCameraService$1;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {p1}, Lcom/android/captureCamera/CaptureCameraService;->g(Lcom/android/captureCamera/CaptureCameraService;)V

    :goto_0
    return-void
.end method
