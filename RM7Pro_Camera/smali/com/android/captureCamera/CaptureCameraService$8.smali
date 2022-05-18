.class Lcom/android/captureCamera/CaptureCameraService$8;
.super Lcom/android/captureCamera/IWatermarkTypeSync$a;
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

    .line 681
    iput-object p1, p0, Lcom/android/captureCamera/CaptureCameraService$8;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-direct {p0}, Lcom/android/captureCamera/IWatermarkTypeSync$a;-><init>()V

    return-void
.end method


# virtual methods
.method public setWatermarkType(I)V
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService$8;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0, p1}, Lcom/android/captureCamera/CaptureCameraService;->a(Lcom/android/captureCamera/CaptureCameraService;I)I

    .line 685
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[setWatermarkType] mWaterMarkType = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService$8;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->v(Lcom/android/captureCamera/CaptureCameraService;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CaptureCameraService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
