.class final Lcom/google/zxing/decoding/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/google/zxing/activity/CaptureActivity;

.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/zxing/decoding/DecodeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/decoding/DecodeHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/activity/CaptureActivity;Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "activity"    # Lcom/google/zxing/activity/CaptureActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/activity/CaptureActivity;",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 29
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 32
    iget-object v0, p0, Lcom/google/zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 33
    iput-object p1, p0, Lcom/google/zxing/decoding/DecodeHandler;->activity:Lcom/google/zxing/activity/CaptureActivity;

    .line 34
    return-void
.end method

.method private decode([BII)V
    .locals 18
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 49
    .local v10, "start":J
    const/4 v7, 0x0

    .line 50
    .local v7, "rawResult":Lcom/google/zxing/Result;
    move-object/from16 v0, p1

    array-length v14, v0

    new-array v8, v14, [B

    .line 52
    .local v8, "rotatedData":[B
    const/4 v13, 0x0

    .local v13, "y":I
    :goto_0
    move/from16 v0, p3

    if-ge v13, v0, :cond_1

    .line 53
    const/4 v12, 0x0

    .local v12, "x":I
    :goto_1
    move/from16 v0, p2

    if-ge v12, v0, :cond_0

    .line 54
    mul-int v14, v12, p3

    add-int v14, v14, p3

    sub-int/2addr v14, v13

    add-int/lit8 v14, v14, -0x1

    mul-int v15, v13, p2

    add-int/2addr v15, v12

    aget-byte v15, p1, v15

    aput-byte v15, v8, v14

    .line 53
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 52
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 58
    .end local v12    # "x":I
    :cond_1
    invoke-static {}, Lcom/google/zxing/camera/CameraManager;->get()Lcom/google/zxing/camera/CameraManager;

    move-result-object v14

    move/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v14, v8, v0, v1}, Lcom/google/zxing/camera/CameraManager;->buildLuminanceSource([BII)Lcom/google/zxing/camera/PlanarYUVLuminanceSource;

    move-result-object v9

    .line 59
    .local v9, "source":Lcom/google/zxing/camera/PlanarYUVLuminanceSource;
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    new-instance v14, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v14, v9}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v2, v14}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 62
    .local v2, "bitmap":Lcom/google/zxing/BinaryBitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v14, v2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 65
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v14}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 68
    :goto_2
    if-eqz v7, :cond_2

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 70
    .local v4, "end":J
    sget-object v14, Lcom/google/zxing/decoding/DecodeHandler;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Found barcode ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v4, v10

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms):\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/decoding/DecodeHandler;->activity:Lcom/google/zxing/activity/CaptureActivity;

    invoke-virtual {v14}, Lcom/google/zxing/activity/CaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object v14

    const v15, 0x7f0e0007

    invoke-static {v14, v15, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 72
    .local v6, "message":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v14, "barcode_bitmap"

    invoke-virtual {v9}, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->renderCroppedGreyscaleBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 74
    invoke-virtual {v6, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 81
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "end":J
    :goto_3
    return-void

    .line 63
    .end local v6    # "message":Landroid/os/Message;
    :catch_0
    move-exception v14

    .line 65
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v14}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_2

    :catchall_0
    move-exception v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v15}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v14

    .line 77
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/decoding/DecodeHandler;->activity:Lcom/google/zxing/activity/CaptureActivity;

    invoke-virtual {v14}, Lcom/google/zxing/activity/CaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object v14

    const v15, 0x7f0e0006

    invoke-static {v14, v15}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    .line 78
    .restart local v6    # "message":Landroid/os/Message;
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    .line 39
    .local v0, "what":I
    const v1, 0x7f0e0005

    if-ne v0, v1, :cond_1

    .line 40
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    check-cast v1, [B

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v1, v2, v3}, Lcom/google/zxing/decoding/DecodeHandler;->decode([BII)V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const v1, 0x7f0e0013

    if-ne v0, v1, :cond_0

    .line 42
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto :goto_0
.end method
