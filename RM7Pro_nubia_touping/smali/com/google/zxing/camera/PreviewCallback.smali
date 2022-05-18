.class final Lcom/google/zxing/camera/PreviewCallback;
.super Ljava/lang/Object;
.source "PreviewCallback.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

.field private previewHandler:Landroid/os/Handler;

.field private previewMessage:I

.field private final useOneShotPreviewCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/google/zxing/camera/PreviewCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/camera/PreviewCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/camera/CameraConfigurationManager;Z)V
    .locals 0
    .param p1, "configManager"    # Lcom/google/zxing/camera/CameraConfigurationManager;
    .param p2, "useOneShotPreviewCallback"    # Z

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/zxing/camera/PreviewCallback;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    .line 23
    iput-boolean p2, p0, Lcom/google/zxing/camera/PreviewCallback;->useOneShotPreviewCallback:Z

    .line 24
    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v3, 0x0

    .line 32
    iget-object v2, p0, Lcom/google/zxing/camera/PreviewCallback;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v2}, Lcom/google/zxing/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 33
    .local v0, "cameraResolution":Landroid/graphics/Point;
    iget-boolean v2, p0, Lcom/google/zxing/camera/PreviewCallback;->useOneShotPreviewCallback:Z

    if-nez v2, :cond_0

    move-object v2, v3

    .line 34
    check-cast v2, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {p2, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 38
    iget-object v2, p0, Lcom/google/zxing/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/google/zxing/camera/PreviewCallback;->previewMessage:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v5, v6, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 39
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 40
    iput-object v3, p0, Lcom/google/zxing/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    .line 45
    .end local v1    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 42
    :cond_1
    sget-object v2, Lcom/google/zxing/camera/PreviewCallback;->TAG:Ljava/lang/String;

    const-string v3, "Got preview callback, but no handler for it"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setHandler(Landroid/os/Handler;I)V
    .locals 0
    .param p1, "previewHandler"    # Landroid/os/Handler;
    .param p2, "previewMessage"    # I

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/zxing/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    .line 28
    iput p2, p0, Lcom/google/zxing/camera/PreviewCallback;->previewMessage:I

    .line 29
    return-void
.end method
