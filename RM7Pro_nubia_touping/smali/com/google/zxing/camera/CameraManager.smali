.class public final Lcom/google/zxing/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final MAX_FRAME_HEIGHT:I = 0x168

.field private static final MAX_FRAME_WIDTH:I = 0x1e0

.field private static final MIN_FRAME_HEIGHT:I = 0xf0

.field private static final MIN_FRAME_WIDTH:I = 0xf0

.field static final SDK_INT:I

.field private static final TAG:Ljava/lang/String;

.field private static cameraManager:Lcom/google/zxing/camera/CameraManager;


# instance fields
.field private final autoFocusCallback:Lcom/google/zxing/camera/AutoFocusCallback;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private final previewCallback:Lcom/google/zxing/camera/PreviewCallback;

.field private previewing:Z

.field private final useOneShotPreviewCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const-class v2, Lcom/google/zxing/camera/CameraManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    .line 197
    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 202
    .local v0, "sdkInt":I
    :goto_0
    sput v0, Lcom/google/zxing/camera/CameraManager;->SDK_INT:I

    .line 203
    return-void

    .line 198
    .end local v0    # "sdkInt":I
    :catch_0
    move-exception v1

    .line 199
    .local v1, "var2":Ljava/lang/NumberFormatException;
    const/16 v0, 0x2710

    .restart local v0    # "sdkInt":I
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/zxing/camera/CameraManager;->context:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/google/zxing/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/google/zxing/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    .line 53
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    .line 54
    new-instance v0, Lcom/google/zxing/camera/PreviewCallback;

    iget-object v1, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    iget-boolean v2, p0, Lcom/google/zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/camera/PreviewCallback;-><init>(Lcom/google/zxing/camera/CameraConfigurationManager;Z)V

    iput-object v0, p0, Lcom/google/zxing/camera/CameraManager;->previewCallback:Lcom/google/zxing/camera/PreviewCallback;

    .line 55
    new-instance v0, Lcom/google/zxing/camera/AutoFocusCallback;

    invoke-direct {v0}, Lcom/google/zxing/camera/AutoFocusCallback;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/camera/CameraManager;->autoFocusCallback:Lcom/google/zxing/camera/AutoFocusCallback;

    .line 56
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static get()Lcom/google/zxing/camera/CameraManager;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/zxing/camera/CameraManager;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-object v0, Lcom/google/zxing/camera/CameraManager;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/google/zxing/camera/CameraManager;

    invoke-direct {v0, p0}, Lcom/google/zxing/camera/CameraManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/zxing/camera/CameraManager;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/google/zxing/camera/PlanarYUVLuminanceSource;
    .locals 11
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 174
    invoke-virtual {p0}, Lcom/google/zxing/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v10

    .line 175
    .local v10, "rect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/google/zxing/camera/CameraConfigurationManager;->getPreviewFormat()I

    move-result v8

    .line 176
    .local v8, "previewFormat":I
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/google/zxing/camera/CameraConfigurationManager;->getPreviewFormatString()Ljava/lang/String;

    move-result-object v9

    .line 177
    .local v9, "previewFormatString":Ljava/lang/String;
    packed-switch v8, :pswitch_data_0

    .line 182
    const-string v0, "yuv420p"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    :goto_0
    return-object v0

    .line 180
    :pswitch_0
    new-instance v0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    goto :goto_0

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported picture format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public closeDriver()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 79
    invoke-static {}, Lcom/google/zxing/camera/FlashlightManager;->disableFlashlight()V

    .line 80
    iget-boolean v0, p0, Lcom/google/zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/camera/CameraManager;->previewing:Z

    .line 88
    :cond_1
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getFraminRect()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 133
    iget-object v6, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v6}, Lcom/google/zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 134
    .local v2, "screenResolution":Landroid/graphics/Point;
    if-nez v2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-object v5

    .line 137
    :cond_1
    iget-object v6, p0, Lcom/google/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    if-nez v6, :cond_2

    .line 138
    iget-object v6, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v6, :cond_0

    .line 141
    iget v5, v2, Landroid/graphics/Point;->x:I

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v4, v5, 0x3

    .line 142
    .local v4, "width":I
    iget v5, v2, Landroid/graphics/Point;->y:I

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v0, v5, 0x3

    .line 143
    .local v0, "height":I
    if-lt v0, v4, :cond_3

    .line 144
    move v0, v4

    .line 149
    :goto_1
    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v4

    div-int/lit8 v1, v5, 0x2

    .line 150
    .local v1, "leftOffset":I
    iget-object v5, p0, Lcom/google/zxing/camera/CameraManager;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900a7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 151
    .local v3, "topOffset":I
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v1, v4

    add-int v7, v3, v0

    invoke-direct {v5, v1, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/google/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 154
    .end local v0    # "height":I
    .end local v1    # "leftOffset":I
    .end local v3    # "topOffset":I
    .end local v4    # "width":I
    :cond_2
    iget-object v5, p0, Lcom/google/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 146
    .restart local v0    # "height":I
    .restart local v4    # "width":I
    :cond_3
    move v4, v0

    goto :goto_1
.end method

.method public getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 159
    iget-object v3, p0, Lcom/google/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v3, :cond_0

    .line 160
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/zxing/camera/CameraManager;->getFraminRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 161
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v3}, Lcom/google/zxing/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 162
    .local v0, "cameraResolution":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v3}, Lcom/google/zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 163
    .local v2, "screenResolution":Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 164
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 165
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 166
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 167
    iput-object v1, p0, Lcom/google/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 170
    .end local v0    # "cameraResolution":Landroid/graphics/Point;
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "screenResolution":Landroid/graphics/Point;
    :cond_0
    iget-object v3, p0, Lcom/google/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    return-object v3
.end method

.method public openDriver(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 60
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 61
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 66
    iget-boolean v0, p0, Lcom/google/zxing/camera/CameraManager;->initialized:Z

    if-nez v0, :cond_1

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/camera/CameraManager;->initialized:Z

    .line 68
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/google/zxing/camera/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/google/zxing/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;)V

    .line 72
    invoke-static {}, Lcom/google/zxing/camera/FlashlightManager;->enableFlashlight()V

    .line 75
    :cond_2
    return-void
.end method

.method public requestAutoFocus(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->autoFocusCallback:Lcom/google/zxing/camera/AutoFocusCallback;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 127
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/google/zxing/camera/CameraManager;->autoFocusCallback:Lcom/google/zxing/camera/AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 130
    :cond_0
    return-void
.end method

.method public requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->previewCallback:Lcom/google/zxing/camera/PreviewCallback;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 115
    iget-boolean v0, p0, Lcom/google/zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/google/zxing/camera/CameraManager;->previewCallback:Lcom/google/zxing/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/google/zxing/camera/CameraManager;->previewCallback:Lcom/google/zxing/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/zxing/camera/CameraManager;->previewing:Z

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/camera/CameraManager;->previewing:Z

    .line 96
    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 99
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 100
    iget-boolean v0, p0, Lcom/google/zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    if-nez v0, :cond_0

    .line 101
    iget-object v2, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    move-object v0, v1

    check-cast v0, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 105
    iget-object v2, p0, Lcom/google/zxing/camera/CameraManager;->previewCallback:Lcom/google/zxing/camera/PreviewCallback;

    move-object v0, v1

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v2, v0, v3}, Lcom/google/zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 106
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->autoFocusCallback:Lcom/google/zxing/camera/AutoFocusCallback;

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v0, v1, v3}, Lcom/google/zxing/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 107
    iput-boolean v3, p0, Lcom/google/zxing/camera/CameraManager;->previewing:Z

    .line 110
    :cond_1
    return-void
.end method
