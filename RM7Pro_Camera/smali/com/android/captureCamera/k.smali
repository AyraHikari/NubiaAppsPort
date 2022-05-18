.class public Lcom/android/captureCamera/k;
.super Lcom/android/captureCamera/l;
.source "SourceFile"


# instance fields
.field private final j:Ljava/lang/String;

.field private k:Landroid/media/ImageReader;

.field private final l:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/captureCamera/j;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/captureCamera/j;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/media/ImageWriter;

.field private o:Landroid/media/ImageReader$OnImageAvailableListener;

.field private p:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/android/captureCamera/l;-><init>()V

    const-string v0, "ReprocessWatermarkProcessor"

    .line 33
    iput-object v0, p0, Lcom/android/captureCamera/k;->j:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/captureCamera/k;->k:Landroid/media/ImageReader;

    .line 35
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/captureCamera/k;->l:Ljava/util/LinkedList;

    .line 36
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/captureCamera/k;->m:Ljava/util/LinkedList;

    .line 37
    iput-object v0, p0, Lcom/android/captureCamera/k;->n:Landroid/media/ImageWriter;

    .line 39
    new-instance v0, Lcom/android/captureCamera/k$1;

    invoke-direct {v0, p0}, Lcom/android/captureCamera/k$1;-><init>(Lcom/android/captureCamera/k;)V

    iput-object v0, p0, Lcom/android/captureCamera/k;->o:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 213
    new-instance v0, Lcom/android/captureCamera/k$2;

    invoke-direct {v0, p0}, Lcom/android/captureCamera/k$2;-><init>(Lcom/android/captureCamera/k;)V

    iput-object v0, p0, Lcom/android/captureCamera/k;->p:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-void
.end method

.method static synthetic a(Lcom/android/captureCamera/k;)Ljava/util/LinkedList;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/captureCamera/k;->l:Ljava/util/LinkedList;

    return-object p0
.end method

.method private a(Lcom/android/captureCamera/j;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 167
    iget-object v2, v1, Lcom/android/captureCamera/k;->m:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 168
    iget-object v2, v1, Lcom/android/captureCamera/k;->l:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 169
    invoke-direct/range {p0 .. p0}, Lcom/android/captureCamera/k;->c()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 171
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-direct/range {p0 .. p0}, Lcom/android/captureCamera/k;->d()[Lcom/android/captureCamera/j;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    .line 174
    iget-object v6, v1, Lcom/android/captureCamera/k;->e:Landroid/hardware/camera2/CameraDevice;

    aget-object v7, v3, v5

    iget-object v7, v7, Lcom/android/captureCamera/j;->a:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v6

    .line 175
    iget-object v7, v1, Lcom/android/captureCamera/k;->a:Landroid/media/ImageReader;

    invoke-virtual {v7}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 176
    aget-object v7, v3, v5

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 177
    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    aget-object v6, v3, v5

    iget-object v6, v6, Lcom/android/captureCamera/j;->c:Landroid/media/Image;

    const-string v7, "ReprocessWatermarkProcessor"

    .line 179
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "moveToQueue: mWaterMarkType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/android/captureCamera/k;->f:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget v7, v1, Lcom/android/captureCamera/k;->f:I

    if-eqz v7, :cond_0

    .line 181
    aget-object v7, v3, v5

    iget-object v7, v7, Lcom/android/captureCamera/j;->a:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 182
    invoke-virtual {v6}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    aget-object v7, v7, v4

    .line 183
    invoke-virtual {v6}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    .line 184
    invoke-virtual {v6}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v9, v9, v10

    .line 185
    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v11

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    .line 186
    invoke-virtual {v8}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v13

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v14

    .line 187
    invoke-virtual {v9}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v16

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v17

    .line 188
    invoke-virtual {v6}, Landroid/media/Image;->getWidth()I

    move-result v18

    invoke-virtual {v6}, Landroid/media/Image;->getHeight()I

    move-result v19

    iget v9, v1, Lcom/android/captureCamera/k;->f:I

    .line 189
    invoke-static {}, Lcom/android/captureCamera/e;->b()Z

    move-result v21

    move-object v8, v10

    move/from16 v22, v9

    move v9, v11

    move v10, v7

    move-object v11, v12

    move v12, v13

    move v13, v14

    move-object v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v22

    .line 185
    invoke-static/range {v8 .. v21}, Lcn/nubia/algorithm/camera/NubiaWaterMark;->addNubiaWaterMark(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIIIZ)V

    .line 191
    :cond_0
    iget-object v7, v1, Lcom/android/captureCamera/k;->n:Landroid/media/ImageWriter;

    invoke-virtual {v7, v6}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    .line 192
    invoke-virtual {v6}, Landroid/media/Image;->close()V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 194
    :cond_1
    iget-object v2, v1, Lcom/android/captureCamera/k;->d:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v3}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/android/captureCamera/k;Lcom/android/captureCamera/j;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/android/captureCamera/k;->a(Lcom/android/captureCamera/j;)V

    return-void
.end method

.method static synthetic b(Lcom/android/captureCamera/k;)Ljava/util/LinkedList;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/captureCamera/k;->m:Ljava/util/LinkedList;

    return-object p0
.end method

.method private c()I
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/android/captureCamera/k;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method private d()[Lcom/android/captureCamera/j;
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/android/captureCamera/k;->l:Ljava/util/LinkedList;

    monitor-enter v0

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/android/captureCamera/k;->l:Ljava/util/LinkedList;

    invoke-direct {p0}, Lcom/android/captureCamera/k;->c()I

    move-result v2

    new-array v2, v2, [Lcom/android/captureCamera/j;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/captureCamera/j;

    .line 208
    iget-object v2, p0, Lcom/android/captureCamera/k;->l:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 209
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 210
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected a(I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    iget-object v1, p0, Lcom/android/captureCamera/k;->h:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 106
    iget-object v2, p0, Lcom/android/captureCamera/k;->h:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 107
    iget v3, p0, Lcom/android/captureCamera/k;->f:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 112
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    .line 109
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/captureCamera/k;->e:Landroid/hardware/camera2/CameraDevice;

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    .line 110
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v8, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 111
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v2, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 112
    sget-object v2, Lcom/android/captureCamera/g$b;->d:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v2, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-eqz v5, :cond_1

    .line 113
    iget-object v2, p0, Lcom/android/captureCamera/k;->k:Landroid/media/ImageReader;

    :goto_1
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/android/captureCamera/k;->a:Landroid/media/ImageReader;

    goto :goto_1

    :goto_2
    invoke-virtual {v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 115
    iget-object v2, p0, Lcom/android/captureCamera/k;->e:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2, v7}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    .line 116
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 117
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 118
    sget-object v4, Lcom/android/captureCamera/g$b;->d:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-eqz v5, :cond_2

    .line 119
    iget-object v4, p0, Lcom/android/captureCamera/k;->k:Landroid/media/ImageReader;

    :goto_3
    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    goto :goto_4

    :cond_2
    iget-object v4, p0, Lcom/android/captureCamera/k;->a:Landroid/media/ImageReader;

    goto :goto_3

    :goto_4
    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 121
    iget-object v4, p0, Lcom/android/captureCamera/k;->e:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v4, v7}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    .line 122
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v7, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 123
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, v1, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 124
    sget-object p1, Lcom/android/captureCamera/g$b;->d:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, p1, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-eqz v5, :cond_3

    .line 125
    iget-object p1, p0, Lcom/android/captureCamera/k;->k:Landroid/media/ImageReader;

    :goto_5
    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    goto :goto_6

    :cond_3
    iget-object p1, p0, Lcom/android/captureCamera/k;->a:Landroid/media/ImageReader;

    goto :goto_5

    :goto_6
    invoke-virtual {v4, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 127
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    const-string v1, "ReprocessWatermarkProcessor"

    const-string v2, "getPictureRequestList failed"

    .line 131
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    return-object v0
.end method

.method public a()V
    .locals 2

    .line 138
    invoke-super {p0}, Lcom/android/captureCamera/l;->a()V

    .line 139
    iget-object v0, p0, Lcom/android/captureCamera/k;->l:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/captureCamera/j;

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v1}, Lcom/android/captureCamera/j;->a()V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/captureCamera/k;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/android/captureCamera/k;->m:Ljava/util/LinkedList;

    if-eqz v0, :cond_5

    .line 148
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/captureCamera/j;

    if-eqz v1, :cond_3

    .line 150
    invoke-virtual {v1}, Lcom/android/captureCamera/j;->a()V

    goto :goto_1

    .line 153
    :cond_4
    iget-object v0, p0, Lcom/android/captureCamera/k;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 155
    :cond_5
    iget-object v0, p0, Lcom/android/captureCamera/k;->k:Landroid/media/ImageReader;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 156
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 157
    iput-object v1, p0, Lcom/android/captureCamera/k;->k:Landroid/media/ImageReader;

    .line 160
    :cond_6
    iget-object v0, p0, Lcom/android/captureCamera/k;->n:Landroid/media/ImageWriter;

    if-eqz v0, :cond_7

    .line 161
    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    .line 162
    iput-object v1, p0, Lcom/android/captureCamera/k;->n:Landroid/media/ImageWriter;

    :cond_7
    return-void
.end method

.method public a(II)V
    .locals 2

    .line 97
    invoke-super {p0, p1, p2}, Lcom/android/captureCamera/l;->a(II)V

    .line 98
    iget p1, p0, Lcom/android/captureCamera/k;->f:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/android/captureCamera/k;->d:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0, p2}, Lcom/android/captureCamera/k;->a(I)Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/captureCamera/k;->p:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    invoke-virtual {v0, p2, p1, v1}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    return-void
.end method

.method public a(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/android/captureCamera/l;->a(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 88
    iget-object v0, p0, Lcom/android/captureCamera/k;->n:Landroid/media/ImageWriter;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/android/captureCamera/k;->n:Landroid/media/ImageWriter;

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/captureCamera/k;->n:Landroid/media/ImageWriter;

    return-void
.end method

.method public a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/util/Size;)V
    .locals 1

    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/android/captureCamera/l;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/util/Size;)V

    .line 69
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p2

    const/16 p3, 0x23

    const/4 v0, 0x3

    invoke-static {p1, p2, p3, v0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/captureCamera/k;->k:Landroid/media/ImageReader;

    .line 70
    iget-object p2, p0, Lcom/android/captureCamera/k;->o:Landroid/media/ImageReader$OnImageAvailableListener;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 71
    iget-object p1, p0, Lcom/android/captureCamera/k;->c:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/captureCamera/k;->k:Landroid/media/ImageReader;

    invoke-virtual {p2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 4

    .line 76
    invoke-super {p0, p1, p2}, Lcom/android/captureCamera/l;->a(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 78
    :try_start_0
    iget-object p1, p0, Lcom/android/captureCamera/k;->e:Landroid/hardware/camera2/CameraDevice;

    new-instance v0, Landroid/hardware/camera2/params/InputConfiguration;

    iget-object v1, p0, Lcom/android/captureCamera/k;->g:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/captureCamera/k;->g:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x23

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    iget-object v1, p0, Lcom/android/captureCamera/k;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/hardware/camera2/CameraDevice;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ReprocessWatermarkProcessor"

    const-string v0, "createCameraCaptureSession failed!"

    .line 81
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
