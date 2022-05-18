.class public final Landroidx/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/e/c$b;,
        Landroidx/e/c$c;,
        Landroidx/e/c$a;
    }
.end annotation


# static fields
.field private static final n:Landroid/media/MediaCodecList;


# instance fields
.field private A:Landroidx/e/b;

.field private B:Landroidx/e/a;

.field private C:I

.field private final D:[F

.field private final E:Ljava/util/concurrent/atomic/AtomicBoolean;

.field a:Landroid/media/MediaCodec;

.field final b:Landroidx/e/c$a;

.field final c:Landroid/os/Handler;

.field final d:I

.field final e:I

.field final f:I

.field final g:I

.field final h:I

.field final i:I

.field final j:Z

.field k:Z

.field final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field m:Landroidx/e/c$c;

.field private final o:Landroid/os/HandlerThread;

.field private final p:I

.field private final q:I

.field private r:I

.field private final s:Landroid/graphics/Rect;

.field private final t:Landroid/graphics/Rect;

.field private u:Ljava/nio/ByteBuffer;

.field private final v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private x:Landroid/graphics/SurfaceTexture;

.field private y:Landroid/view/Surface;

.field private z:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    sput-object v0, Landroidx/e/c;->n:Landroid/media/MediaCodecList;

    return-void
.end method

.method public constructor <init>(IIZIILandroid/os/Handler;Landroidx/e/c$a;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    const-string v5, "video/hevc"

    const-string v6, "image/vnd.android.heic"

    .line 193
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Landroidx/e/c;->v:Ljava/util/ArrayList;

    .line 112
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Landroidx/e/c;->w:Ljava/util/ArrayList;

    .line 113
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Landroidx/e/c;->l:Ljava/util/ArrayList;

    const/16 v7, 0x10

    new-array v7, v7, [F

    .line 128
    iput-object v7, v0, Landroidx/e/c;->D:[F

    .line 129
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v7, v0, Landroidx/e/c;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ltz v1, :cond_18

    if-ltz v2, :cond_18

    if-ltz v3, :cond_18

    const/16 v7, 0x64

    if-gt v3, v7, :cond_18

    const/16 v7, 0x200

    const/4 v9, 0x1

    if-gt v1, v7, :cond_1

    if-le v2, v7, :cond_0

    goto :goto_0

    :cond_0
    move v10, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v10, v9

    :goto_1
    and-int v10, p3, v10

    const/4 v11, 0x0

    .line 207
    :try_start_0
    invoke-static {v6}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v12

    iput-object v12, v0, Landroidx/e/c;->a:Landroid/media/MediaCodec;

    .line 208
    invoke-virtual {v12}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v12

    .line 211
    invoke-virtual {v12}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v13

    invoke-virtual {v13, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v13

    if-eqz v13, :cond_2

    move v13, v9

    goto :goto_2

    .line 212
    :cond_2
    iget-object v12, v0, Landroidx/e/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v12}, Landroid/media/MediaCodec;->release()V

    .line 213
    iput-object v11, v0, Landroidx/e/c;->a:Landroid/media/MediaCodec;

    .line 214
    new-instance v12, Ljava/lang/Exception;

    invoke-direct {v12}, Ljava/lang/Exception;-><init>()V

    throw v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :catch_0
    invoke-direct/range {p0 .. p0}, Landroidx/e/c;->e()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v12

    iput-object v12, v0, Landroidx/e/c;->a:Landroid/media/MediaCodec;

    .line 219
    invoke-virtual {v12}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v12

    .line 221
    invoke-virtual {v12}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v13

    invoke-virtual {v13, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v13

    xor-int/2addr v13, v9

    or-int/2addr v10, v13

    move v13, v8

    .line 224
    :goto_2
    iput v4, v0, Landroidx/e/c;->p:I

    move-object/from16 v14, p7

    .line 226
    iput-object v14, v0, Landroidx/e/c;->b:Landroidx/e/c$a;

    if-eqz p6, :cond_3

    .line 228
    invoke-virtual/range {p6 .. p6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v14

    goto :goto_3

    :cond_3
    move-object v14, v11

    :goto_3
    if-nez v14, :cond_4

    .line 230
    new-instance v14, Landroid/os/HandlerThread;

    const/4 v15, -0x2

    const-string v8, "HeifEncoderThread"

    invoke-direct {v14, v8, v15}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v14, v0, Landroidx/e/c;->o:Landroid/os/HandlerThread;

    .line 232
    invoke-virtual {v14}, Landroid/os/HandlerThread;->start()V

    .line 233
    invoke-virtual {v14}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v14

    goto :goto_4

    .line 235
    :cond_4
    iput-object v11, v0, Landroidx/e/c;->o:Landroid/os/HandlerThread;

    .line 237
    :goto_4
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v8, v0, Landroidx/e/c;->c:Landroid/os/Handler;

    const/4 v14, 0x2

    if-eq v4, v9, :cond_6

    if-ne v4, v14, :cond_5

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    move v15, v9

    :goto_6
    if-eqz v15, :cond_7

    const v16, 0x7f000789

    goto :goto_7

    :cond_7
    const v16, 0x7f420888

    :goto_7
    move/from16 v11, v16

    if-eqz v10, :cond_8

    if-eqz v13, :cond_9

    :cond_8
    if-ne v4, v14, :cond_a

    :cond_9
    move v14, v9

    goto :goto_8

    :cond_a
    const/4 v14, 0x0

    .line 244
    :goto_8
    iput v1, v0, Landroidx/e/c;->d:I

    .line 245
    iput v2, v0, Landroidx/e/c;->e:I

    .line 246
    iput-boolean v10, v0, Landroidx/e/c;->j:Z

    if-eqz v10, :cond_b

    add-int/lit16 v4, v2, 0x200

    sub-int/2addr v4, v9

    .line 253
    div-int/2addr v4, v7

    move/from16 v16, v4

    add-int/lit16 v4, v1, 0x200

    sub-int/2addr v4, v9

    .line 254
    div-int/2addr v4, v7

    move v9, v7

    move-object/from16 p7, v8

    move v8, v9

    move/from16 v7, v16

    goto :goto_9

    :cond_b
    move-object/from16 p7, v8

    move v4, v9

    move v7, v4

    move v9, v1

    move v8, v2

    :goto_9
    if-eqz v13, :cond_c

    .line 264
    invoke-static {v6, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v5

    goto :goto_a

    .line 267
    :cond_c
    invoke-static {v5, v9, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v5

    :goto_a
    if-eqz v10, :cond_d

    const-string v6, "tile-width"

    .line 272
    invoke-virtual {v5, v6, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v6, "tile-height"

    .line 273
    invoke-virtual {v5, v6, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v6, "grid-cols"

    .line 274
    invoke-virtual {v5, v6, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v6, "grid-rows"

    .line 275
    invoke-virtual {v5, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_d
    if-eqz v13, :cond_e

    .line 279
    iput v1, v0, Landroidx/e/c;->f:I

    .line 280
    iput v2, v0, Landroidx/e/c;->g:I

    const/4 v4, 0x1

    .line 281
    iput v4, v0, Landroidx/e/c;->h:I

    .line 282
    iput v4, v0, Landroidx/e/c;->i:I

    goto :goto_b

    .line 284
    :cond_e
    iput v9, v0, Landroidx/e/c;->f:I

    .line 285
    iput v8, v0, Landroidx/e/c;->g:I

    .line 286
    iput v7, v0, Landroidx/e/c;->h:I

    .line 287
    iput v4, v0, Landroidx/e/c;->i:I

    .line 289
    :goto_b
    iget v4, v0, Landroidx/e/c;->h:I

    iget v6, v0, Landroidx/e/c;->i:I

    mul-int/2addr v4, v6

    iput v4, v0, Landroidx/e/c;->q:I

    const-string v6, "i-frame-interval"

    const/4 v7, 0x0

    .line 291
    invoke-virtual {v5, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v6, "color-format"

    .line 292
    invoke-virtual {v5, v6, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v6, "frame-rate"

    .line 293
    invoke-virtual {v5, v6, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v6, "operating-rate"

    const/4 v7, 0x1

    if-le v4, v7, :cond_f

    const/16 v4, 0x78

    .line 298
    invoke-virtual {v5, v6, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_c

    :cond_f
    const/16 v4, 0x1e

    .line 300
    invoke-virtual {v5, v6, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_c
    const-string v4, "HeifEncoder"

    if-eqz v15, :cond_10

    if-nez v14, :cond_10

    const-string v6, "Setting fixed pts gap"

    .line 305
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v6, -0xf4240

    const-string v8, "max-pts-gap-to-encoder"

    .line 306
    invoke-virtual {v5, v8, v6, v7}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    .line 309
    :cond_10
    invoke-virtual {v12}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;

    move-result-object v6

    const/4 v7, 0x0

    .line 311
    invoke-virtual {v6, v7}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result v8

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    const-string v7, "bitrate-mode"

    if-eqz v8, :cond_11

    const-string v8, "Setting bitrate mode to constant quality"

    .line 313
    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->getQualityRange()Landroid/util/Range;

    move-result-object v6

    .line 315
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Quality range: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 316
    invoke-virtual {v5, v7, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 318
    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v7, v4

    .line 319
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v4, v6

    mul-int/2addr v4, v3

    int-to-double v3, v4

    div-double/2addr v3, v9

    add-double/2addr v7, v3

    double-to-int v3, v7

    const-string v4, "quality"

    .line 318
    invoke-virtual {v5, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_e

    :cond_11
    const/4 v8, 0x2

    .line 321
    invoke-virtual {v6, v8}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "Setting bitrate mode to constant bitrate"

    .line 323
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {v5, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_d

    :cond_12
    const-string v6, "Setting bitrate mode to variable bitrate"

    .line 327
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    .line 328
    invoke-virtual {v5, v7, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 334
    :goto_d
    invoke-virtual {v12}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v4

    mul-int v6, v1, v2

    int-to-double v6, v6

    const-wide/high16 v11, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v11

    const-wide/high16 v11, 0x4020000000000000L    # 8.0

    mul-double/2addr v6, v11

    const-wide/high16 v11, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v6, v11

    int-to-double v11, v3

    mul-double/2addr v6, v11

    div-double/2addr v6, v9

    double-to-int v3, v6

    .line 335
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 334
    invoke-virtual {v4, v3}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "bitrate"

    .line 336
    invoke-virtual {v5, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 339
    :goto_e
    iget-object v3, v0, Landroidx/e/c;->a:Landroid/media/MediaCodec;

    new-instance v4, Landroidx/e/c$b;

    invoke-direct {v4, v0}, Landroidx/e/c$b;-><init>(Landroidx/e/c;)V

    move-object/from16 v6, p7

    invoke-virtual {v3, v4, v6}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 340
    iget-object v3, v0, Landroidx/e/c;->a:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v4, v4, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    if-eqz v15, :cond_16

    .line 343
    iget-object v3, v0, Landroidx/e/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v3

    iput-object v3, v0, Landroidx/e/c;->z:Landroid/view/Surface;

    .line 345
    new-instance v3, Landroidx/e/c$c;

    invoke-direct {v3, v0, v14}, Landroidx/e/c$c;-><init>(Landroidx/e/c;Z)V

    iput-object v3, v0, Landroidx/e/c;->m:Landroidx/e/c$c;

    if-eqz v14, :cond_15

    .line 348
    new-instance v3, Landroidx/e/b;

    iget-object v4, v0, Landroidx/e/c;->z:Landroid/view/Surface;

    invoke-direct {v3, v4}, Landroidx/e/b;-><init>(Landroid/view/Surface;)V

    iput-object v3, v0, Landroidx/e/c;->A:Landroidx/e/b;

    .line 349
    invoke-virtual {v3}, Landroidx/e/b;->b()V

    .line 351
    new-instance v3, Landroidx/e/a;

    new-instance v4, Landroidx/e/e;

    move/from16 v5, p5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_13

    const/4 v6, 0x0

    goto :goto_f

    :cond_13
    const/4 v6, 0x1

    :goto_f
    invoke-direct {v4, v6}, Landroidx/e/e;-><init>(I)V

    invoke-direct {v3, v4, v1, v2}, Landroidx/e/a;-><init>(Landroidx/e/e;II)V

    iput-object v3, v0, Landroidx/e/c;->B:Landroidx/e/a;

    .line 357
    invoke-virtual {v3}, Landroidx/e/a;->a()I

    move-result v3

    iput v3, v0, Landroidx/e/c;->C:I

    const/4 v3, 0x1

    if-ne v5, v3, :cond_14

    .line 361
    new-instance v4, Landroid/graphics/SurfaceTexture;

    iget v5, v0, Landroidx/e/c;->C:I

    invoke-direct {v4, v5, v3}, Landroid/graphics/SurfaceTexture;-><init>(IZ)V

    iput-object v4, v0, Landroidx/e/c;->x:Landroid/graphics/SurfaceTexture;

    .line 362
    invoke-virtual {v4, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 363
    iget-object v3, v0, Landroidx/e/c;->x:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 364
    new-instance v1, Landroid/view/Surface;

    iget-object v2, v0, Landroidx/e/c;->x:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, v0, Landroidx/e/c;->y:Landroid/view/Surface;

    .line 369
    :cond_14
    iget-object v1, v0, Landroidx/e/c;->A:Landroidx/e/b;

    invoke-virtual {v1}, Landroidx/e/b;->c()V

    goto :goto_11

    .line 371
    :cond_15
    iget-object v1, v0, Landroidx/e/c;->z:Landroid/view/Surface;

    iput-object v1, v0, Landroidx/e/c;->y:Landroid/view/Surface;

    goto :goto_11

    :cond_16
    const/4 v1, 0x2

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v1, :cond_17

    .line 375
    iget-object v2, v0, Landroidx/e/c;->v:Ljava/util/ArrayList;

    iget v3, v0, Landroidx/e/c;->d:I

    iget v4, v0, Landroidx/e/c;->e:I

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x3

    div-int/2addr v3, v1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 379
    :cond_17
    :goto_11
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroidx/e/c;->f:I

    iget v3, v0, Landroidx/e/c;->g:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Landroidx/e/c;->t:Landroid/graphics/Rect;

    .line 380
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroidx/e/c;->s:Landroid/graphics/Rect;

    return-void

    .line 198
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid encoder inputs"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(I)J
    .locals 4

    int-to-long v0, p1

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    .line 587
    iget p1, p0, Landroidx/e/c;->q:I

    int-to-long v2, p1

    div-long/2addr v0, v2

    const-wide/16 v2, 0x84

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static a(Ljava/nio/ByteBuffer;Landroid/media/Image;IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    .line 657
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_6

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 660
    rem-int/lit8 v2, p2, 0x2

    if-nez v2, :cond_5

    rem-int/lit8 v2, p3, 0x2

    if-nez v2, :cond_5

    iget v2, v0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    if-nez v2, :cond_5

    iget v2, v0, Landroid/graphics/Rect;->top:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_5

    iget v2, v0, Landroid/graphics/Rect;->right:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_5

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_5

    iget v2, v1, Landroid/graphics/Rect;->left:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_5

    iget v2, v1, Landroid/graphics/Rect;->top:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_5

    iget v2, v1, Landroid/graphics/Rect;->right:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_5

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_5

    .line 668
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v5, 0x0

    .line 669
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_4

    .line 670
    aget-object v6, v2, v5

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 671
    aget-object v7, v2, v5

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    .line 672
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget v9, v0, Landroid/graphics/Rect;->left:I

    sub-int v9, p2, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 673
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget v10, v0, Landroid/graphics/Rect;->top:I

    sub-int v10, p3, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x1

    if-lez v5, :cond_0

    mul-int v11, p2, p3

    add-int/lit8 v12, v5, 0x3

    mul-int/2addr v11, v12

    .line 677
    div-int/lit8 v11, v11, 0x4

    move v12, v3

    goto :goto_1

    :cond_0
    move v12, v10

    const/4 v11, 0x0

    :goto_1
    const/4 v13, 0x0

    .line 679
    :goto_2
    div-int v14, v9, v12

    if-ge v13, v14, :cond_3

    .line 680
    iget v14, v0, Landroid/graphics/Rect;->top:I

    div-int/2addr v14, v12

    add-int/2addr v14, v13

    mul-int v14, v14, p2

    div-int/2addr v14, v12

    add-int/2addr v14, v11

    iget v15, v0, Landroid/graphics/Rect;->left:I

    div-int/2addr v15, v12

    add-int/2addr v14, v15

    move-object/from16 v15, p0

    invoke-virtual {v15, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 682
    iget v14, v1, Landroid/graphics/Rect;->top:I

    div-int/2addr v14, v12

    add-int/2addr v14, v13

    aget-object v16, v2, v5

    invoke-virtual/range {v16 .. v16}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v16

    mul-int v14, v14, v16

    iget v3, v1, Landroid/graphics/Rect;->left:I

    mul-int/2addr v3, v7

    div-int/2addr v3, v12

    add-int/2addr v14, v3

    invoke-virtual {v6, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v3, 0x0

    .line 685
    :goto_3
    div-int v14, v8, v12

    if-ge v3, v14, :cond_2

    .line 686
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-le v7, v10, :cond_1

    add-int/lit8 v14, v14, -0x1

    if-eq v3, v14, :cond_1

    .line 688
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v7

    sub-int/2addr v4, v10

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x2

    goto :goto_2

    :cond_3
    move-object/from16 v15, p0

    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_4
    return-void

    .line 665
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "src or dst are not aligned!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "src and dst rect size are different!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Z)V
    .locals 2

    .line 728
    iget-object v0, p0, Landroidx/e/c;->v:Ljava/util/ArrayList;

    monitor-enter v0

    .line 729
    :try_start_0
    iget-boolean v1, p0, Landroidx/e/c;->k:Z

    or-int/2addr p1, v1

    iput-boolean p1, p0, Landroidx/e/c;->k:Z

    .line 730
    iget-object p1, p0, Landroidx/e/c;->v:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/e/c;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    iget-object p1, p0, Landroidx/e/c;->v:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 732
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 733
    iput-object p1, p0, Landroidx/e/c;->u:Ljava/nio/ByteBuffer;

    return-void

    :catchall_0
    move-exception p1

    .line 732
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a([B)V
    .locals 2

    .line 596
    invoke-direct {p0}, Landroidx/e/c;->g()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 600
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-eqz p1, :cond_1

    .line 602
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 604
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 605
    iget-object p1, p0, Landroidx/e/c;->w:Ljava/util/ArrayList;

    monitor-enter p1

    .line 606
    :try_start_0
    iget-object v1, p0, Landroidx/e/c;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    iget-object p1, p0, Landroidx/e/c;->c:Landroid/os/Handler;

    new-instance v0, Landroidx/e/c$1;

    invoke-direct {v0, p0}, Landroidx/e/c$1;-><init>(Landroidx/e/c;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 607
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private e()Ljava/lang/String;
    .locals 10

    .line 386
    sget-object v0, Landroidx/e/c;->n:Landroid/media/MediaCodecList;

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move-object v4, v3

    :goto_0
    if-ge v5, v1, :cond_5

    aget-object v6, v0, v5

    .line 387
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v7, "video/hevc"

    .line 392
    invoke-virtual {v6, v7}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v8

    const/16 v9, 0x200

    invoke-virtual {v8, v9, v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    .line 399
    :cond_1
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 401
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 403
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    if-nez v3, :cond_3

    .line 406
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_3
    if-nez v4, :cond_4

    .line 410
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    :catch_0
    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    move-object v3, v4

    :goto_2
    return-object v3
.end method

.method private f()V
    .locals 8

    .line 420
    iget v0, p0, Landroidx/e/c;->f:I

    iget v1, p0, Landroidx/e/c;->g:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    move v0, v2

    .line 422
    :goto_0
    iget v1, p0, Landroidx/e/c;->h:I

    if-ge v0, v1, :cond_2

    move v1, v2

    .line 423
    :goto_1
    iget v3, p0, Landroidx/e/c;->i:I

    if-ge v1, v3, :cond_1

    .line 424
    iget v3, p0, Landroidx/e/c;->f:I

    mul-int v4, v1, v3

    .line 425
    iget v5, p0, Landroidx/e/c;->g:I

    mul-int v6, v0, v5

    .line 426
    iget-object v7, p0, Landroidx/e/c;->s:Landroid/graphics/Rect;

    add-int/2addr v3, v4

    add-int/2addr v5, v6

    invoke-virtual {v7, v4, v6, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 428
    :try_start_0
    iget-object v3, p0, Landroidx/e/c;->B:Landroidx/e/a;

    iget v4, p0, Landroidx/e/c;->C:I

    sget-object v5, Landroidx/e/e;->b:[F

    iget-object v6, p0, Landroidx/e/c;->s:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5, v6}, Landroidx/e/a;->a(I[FLandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    iget-object v3, p0, Landroidx/e/c;->A:Landroidx/e/b;

    const-wide/16 v4, 0x3e8

    iget v6, p0, Landroidx/e/c;->r:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Landroidx/e/c;->r:I

    .line 439
    invoke-direct {p0, v6}, Landroidx/e/c;->a(I)J

    move-result-wide v6

    mul-long/2addr v6, v4

    .line 438
    invoke-virtual {v3, v6, v7}, Landroidx/e/b;->a(J)V

    .line 440
    iget-object v3, p0, Landroidx/e/c;->A:Landroidx/e/b;

    invoke-virtual {v3}, Landroidx/e/b;->d()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 433
    iget-object v1, p0, Landroidx/e/c;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 436
    :cond_0
    throw v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private g()Ljava/nio/ByteBuffer;
    .locals 3

    .line 696
    iget-object v0, p0, Landroidx/e/c;->v:Ljava/util/ArrayList;

    monitor-enter v0

    .line 698
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Landroidx/e/c;->k:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/e/c;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 700
    :try_start_1
    iget-object v1, p0, Landroidx/e/c;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 705
    :cond_0
    :try_start_2
    iget-boolean v1, p0, Landroidx/e/c;->k:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroidx/e/c;->v:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 706
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private h()Ljava/nio/ByteBuffer;
    .locals 4

    .line 714
    iget-boolean v0, p0, Landroidx/e/c;->k:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/e/c;->u:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    .line 715
    iget-object v0, p0, Landroidx/e/c;->w:Ljava/util/ArrayList;

    monitor-enter v0

    .line 716
    :try_start_0
    iget-object v2, p0, Landroidx/e/c;->w:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/e/c;->w:Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 717
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    :goto_0
    iput-object v2, p0, Landroidx/e/c;->u:Ljava/nio/ByteBuffer;

    .line 718
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 720
    :cond_1
    :goto_1
    iget-boolean v0, p0, Landroidx/e/c;->k:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Landroidx/e/c;->u:Ljava/nio/ByteBuffer;

    :goto_2
    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 480
    iget-object v0, p0, Landroidx/e/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 540
    iget v0, p0, Landroidx/e/c;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 544
    iget-object v0, p0, Landroidx/e/c;->m:Landroidx/e/c$c;

    iget v1, p0, Landroidx/e/c;->r:I

    .line 545
    invoke-direct {p0, v1}, Landroidx/e/c;->a(I)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iget v3, p0, Landroidx/e/c;->r:I

    iget v4, p0, Landroidx/e/c;->q:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    .line 546
    invoke-direct {p0, v3}, Landroidx/e/c;->a(I)J

    move-result-wide v3

    .line 544
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/e/c$c;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 550
    :cond_0
    monitor-enter p0

    .line 551
    :try_start_0
    iget-object v0, p0, Landroidx/e/c;->A:Landroidx/e/b;

    if-nez v0, :cond_1

    .line 552
    monitor-exit p0

    return-void

    .line 555
    :cond_1
    invoke-virtual {v0}, Landroidx/e/b;->b()V

    .line 557
    iget-object v0, p0, Landroidx/e/c;->B:Landroidx/e/a;

    iget v1, p0, Landroidx/e/c;->C:I

    invoke-virtual {v0, v1, p1}, Landroidx/e/a;->a(ILandroid/graphics/Bitmap;)V

    .line 559
    invoke-direct {p0}, Landroidx/e/c;->f()V

    .line 563
    iget-object p1, p0, Landroidx/e/c;->A:Landroidx/e/b;

    invoke-virtual {p1}, Landroidx/e/b;->c()V

    .line 564
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 541
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "addBitmap is only allowed in bitmap input mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 3

    .line 573
    iget v0, p0, Landroidx/e/c;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 576
    iget-object v0, p0, Landroidx/e/c;->m:Landroidx/e/c$c;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/e/c$c;->a(J)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 578
    invoke-direct {p0, v0}, Landroidx/e/c;->a([B)V

    :cond_1
    :goto_0
    return-void
.end method

.method c()V
    .locals 15

    .line 624
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroidx/e/c;->h()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Landroidx/e/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 625
    iget-object v1, p0, Landroidx/e/c;->l:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 628
    iget v1, p0, Landroidx/e/c;->r:I

    iget v2, p0, Landroidx/e/c;->q:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v14, v1

    goto :goto_1

    :cond_1
    move v14, v6

    :goto_1
    if-nez v14, :cond_2

    .line 631
    iget-object v1, p0, Landroidx/e/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v1, v8}, Landroid/media/MediaCodec;->getInputImage(I)Landroid/media/Image;

    move-result-object v1

    .line 632
    iget v2, p0, Landroidx/e/c;->f:I

    iget v3, p0, Landroidx/e/c;->r:I

    iget v4, p0, Landroidx/e/c;->i:I

    rem-int v5, v3, v4

    mul-int/2addr v5, v2

    .line 633
    iget v7, p0, Landroidx/e/c;->g:I

    div-int/2addr v3, v4

    iget v4, p0, Landroidx/e/c;->h:I

    rem-int/2addr v3, v4

    mul-int/2addr v3, v7

    .line 634
    iget-object v4, p0, Landroidx/e/c;->s:Landroid/graphics/Rect;

    add-int/2addr v2, v5

    add-int/2addr v7, v3

    invoke-virtual {v4, v5, v3, v2, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 635
    iget v2, p0, Landroidx/e/c;->d:I

    iget v3, p0, Landroidx/e/c;->e:I

    iget-object v4, p0, Landroidx/e/c;->s:Landroid/graphics/Rect;

    iget-object v5, p0, Landroidx/e/c;->t:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v5}, Landroidx/e/c;->a(Ljava/nio/ByteBuffer;Landroid/media/Image;IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 638
    :cond_2
    iget-object v7, p0, Landroidx/e/c;->a:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    if-eqz v14, :cond_3

    move v10, v6

    goto :goto_2

    .line 639
    :cond_3
    invoke-virtual {v7, v8}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    move v10, v0

    :goto_2
    iget v0, p0, Landroidx/e/c;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/e/c;->r:I

    .line 640
    invoke-direct {p0, v0}, Landroidx/e/c;->a(I)J

    move-result-wide v11

    if-eqz v14, :cond_4

    const/4 v6, 0x4

    :cond_4
    move v13, v6

    .line 638
    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    if-nez v14, :cond_5

    .line 643
    iget v0, p0, Landroidx/e/c;->r:I

    iget v1, p0, Landroidx/e/c;->q:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 644
    :cond_5
    invoke-direct {p0, v14}, Landroidx/e/c;->a(Z)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public close()V
    .locals 2

    .line 988
    iget-object v0, p0, Landroidx/e/c;->v:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x1

    .line 989
    :try_start_0
    iput-boolean v1, p0, Landroidx/e/c;->k:Z

    .line 990
    iget-object v1, p0, Landroidx/e/c;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 991
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    iget-object v0, p0, Landroidx/e/c;->c:Landroid/os/Handler;

    new-instance v1, Landroidx/e/c$2;

    invoke-direct {v1, p0}, Landroidx/e/c$2;-><init>(Landroidx/e/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v1

    .line 991
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method d()V
    .locals 3

    .line 746
    iget-object v0, p0, Landroidx/e/c;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 749
    iget-object v0, p0, Landroidx/e/c;->a:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 751
    iget-object v0, p0, Landroidx/e/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 752
    iput-object v2, p0, Landroidx/e/c;->a:Landroid/media/MediaCodec;

    .line 756
    :cond_0
    iget-object v0, p0, Landroidx/e/c;->v:Ljava/util/ArrayList;

    monitor-enter v0

    .line 757
    :try_start_0
    iput-boolean v1, p0, Landroidx/e/c;->k:Z

    .line 758
    iget-object v1, p0, Landroidx/e/c;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 759
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 768
    monitor-enter p0

    .line 769
    :try_start_1
    iget-object v0, p0, Landroidx/e/c;->B:Landroidx/e/a;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 770
    invoke-virtual {v0, v1}, Landroidx/e/a;->a(Z)V

    .line 771
    iput-object v2, p0, Landroidx/e/c;->B:Landroidx/e/a;

    .line 774
    :cond_1
    iget-object v0, p0, Landroidx/e/c;->A:Landroidx/e/b;

    if-eqz v0, :cond_2

    .line 778
    invoke-virtual {v0}, Landroidx/e/b;->a()V

    .line 779
    iput-object v2, p0, Landroidx/e/c;->A:Landroidx/e/b;

    .line 782
    :cond_2
    iget-object v0, p0, Landroidx/e/c;->x:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 783
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 784
    iput-object v2, p0, Landroidx/e/c;->x:Landroid/graphics/SurfaceTexture;

    .line 786
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 759
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 5

    .line 447
    monitor-enter p0

    .line 448
    :try_start_0
    iget-object v0, p0, Landroidx/e/c;->A:Landroidx/e/b;

    if-nez v0, :cond_0

    .line 449
    monitor-exit p0

    return-void

    .line 452
    :cond_0
    invoke-virtual {v0}, Landroidx/e/b;->b()V

    .line 454
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 455
    iget-object v0, p0, Landroidx/e/c;->D:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 457
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    .line 461
    iget-object v2, p0, Landroidx/e/c;->m:Landroidx/e/c$c;

    iget v3, p0, Landroidx/e/c;->r:I

    iget v4, p0, Landroidx/e/c;->q:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    .line 462
    invoke-direct {p0, v3}, Landroidx/e/c;->a(I)J

    move-result-wide v3

    .line 461
    invoke-virtual {v2, v0, v1, v3, v4}, Landroidx/e/c$c;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    invoke-direct {p0}, Landroidx/e/c;->f()V

    .line 468
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->releaseTexImage()V

    .line 472
    iget-object p1, p0, Landroidx/e/c;->A:Landroidx/e/b;

    invoke-virtual {p1}, Landroidx/e/b;->c()V

    .line 473
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
