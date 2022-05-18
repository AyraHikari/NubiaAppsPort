.class Lcom/android/captureCamera/CaptureCameraService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


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

    .line 134
    iput-object p1, p0, Lcom/android/captureCamera/CaptureCameraService$2;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "CaptureCameraService"

    const-string v2, "onImageAvailable!"

    .line 138
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, v1, Lcom/android/captureCamera/CaptureCameraService$2;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->h(Lcom/android/captureCamera/CaptureCameraService;)I

    .line 140
    iget-object v0, v1, Lcom/android/captureCamera/CaptureCameraService$2;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->i(Lcom/android/captureCamera/CaptureCameraService;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 141
    iget-object v0, v1, Lcom/android/captureCamera/CaptureCameraService$2;->a:Lcom/android/captureCamera/CaptureCameraService;

    sget-object v2, Lcom/android/captureCamera/d;->a:Lcom/android/captureCamera/d;

    invoke-static {v0, v2}, Lcom/android/captureCamera/CaptureCameraService;->a(Lcom/android/captureCamera/CaptureCameraService;Lcom/android/captureCamera/d;)Lcom/android/captureCamera/d;

    .line 142
    iget-object v0, v1, Lcom/android/captureCamera/CaptureCameraService$2;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->j(Lcom/android/captureCamera/CaptureCameraService;)Landroid/os/Vibrator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, v1, Lcom/android/captureCamera/CaptureCameraService$2;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->j(Lcom/android/captureCamera/CaptureCameraService;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v2, 0x2d

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 146
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 148
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v6, v4, [B

    .line 149
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 150
    invoke-static {v6}, Lcom/android/captureCamera/f;->a([B)I

    move-result v14

    .line 153
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    .line 154
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 155
    invoke-static {v6, v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 156
    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 157
    iget v12, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 159
    iget-object v2, v1, Lcom/android/captureCamera/CaptureCameraService$2;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v2}, Lcom/android/captureCamera/CaptureCameraService;->k(Lcom/android/captureCamera/CaptureCameraService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 160
    :try_start_0
    iget-object v3, v1, Lcom/android/captureCamera/CaptureCameraService$2;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v3}, Lcom/android/captureCamera/CaptureCameraService;->l(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/b;

    move-result-object v3

    if-nez v3, :cond_1

    .line 161
    iget-object v3, v1, Lcom/android/captureCamera/CaptureCameraService$2;->a:Lcom/android/captureCamera/CaptureCameraService;

    new-instance v4, Lcom/android/captureCamera/b;

    iget-object v5, v1, Lcom/android/captureCamera/CaptureCameraService$2;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v5}, Lcom/android/captureCamera/CaptureCameraService;->m(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/e;

    move-result-object v9

    invoke-direct {v4, v5, v9}, Lcom/android/captureCamera/b;-><init>(Landroid/content/Context;Lcom/android/captureCamera/e;)V

    invoke-static {v3, v4}, Lcom/android/captureCamera/CaptureCameraService;->a(Lcom/android/captureCamera/CaptureCameraService;Lcom/android/captureCamera/b;)Lcom/android/captureCamera/b;

    .line 163
    :cond_1
    iget-object v3, v1, Lcom/android/captureCamera/CaptureCameraService$2;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v3}, Lcom/android/captureCamera/CaptureCameraService;->l(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/b;

    move-result-object v5

    iget-object v3, v1, Lcom/android/captureCamera/CaptureCameraService$2;->a:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v3}, Lcom/android/captureCamera/CaptureCameraService;->m(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/e;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Lcom/android/captureCamera/e;->a(J)Ljava/lang/String;

    move-result-object v9

    iget-object v3, v1, Lcom/android/captureCamera/CaptureCameraService$2;->a:Lcom/android/captureCamera/CaptureCameraService;

    .line 164
    invoke-static {v3}, Lcom/android/captureCamera/CaptureCameraService;->n(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/i;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/captureCamera/i;->a()Landroid/location/Location;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 163
    invoke-virtual/range {v5 .. v16}, Lcom/android/captureCamera/b;->a([BJLjava/lang/String;Landroid/location/Location;IIIIILjava/lang/String;)V

    .line 167
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    return-void

    :catchall_0
    move-exception v0

    .line 167
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
