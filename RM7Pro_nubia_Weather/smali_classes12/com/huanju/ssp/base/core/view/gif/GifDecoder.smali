.class public Lcom/huanju/ssp/base/core/view/gif/GifDecoder;
.super Ljava/lang/Thread;
.source "GifDecoder.java"


# static fields
.field private static final MaxStackSize:I = 0x1000

.field public static final STATUS_FINISH:I = -0x1

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OPEN_ERROR:I = 0x2

.field public static final STATUS_PARSING:I


# instance fields
.field private act:[I

.field private action:Lcom/huanju/ssp/base/core/view/gif/GifAction;

.field private bgColor:I

.field private bgIndex:I

.field private block:[B

.field private blockSize:I

.field private currentFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

.field private delay:I

.field private dispose:I

.field private frameCount:I

.field private gct:[I

.field private gctFlag:Z

.field private gctSize:I

.field private gifData:[B

.field private gifFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

.field public height:I

.field private ih:I

.field private image:Landroid/graphics/Bitmap;

.field private in:Ljava/io/InputStream;

.field private interlace:Z

.field private isShow:Z

.field private iw:I

.field private ix:I

.field private iy:I

.field private lastBgColor:I

.field private lastDispose:I

.field private lastImage:Landroid/graphics/Bitmap;

.field private lct:[I

.field private lctFlag:Z

.field private lctSize:I

.field private loopCount:I

.field private lrh:I

.field private lrw:I

.field private lrx:I

.field private lry:I

.field private pixelAspect:I

.field private pixelStack:[B

.field private pixels:[B

.field private prefix:[S

.field private status:I

.field private suffix:[B

.field private transIndex:I

.field private transparency:Z

.field public width:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/huanju/ssp/base/core/view/gif/GifAction;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "act"    # Lcom/huanju/ssp/base/core/view/gif/GifAction;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->loopCount:I

    .line 51
    iput-object v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->currentFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    .line 52
    iput-boolean v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->isShow:Z

    .line 53
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->block:[B

    .line 54
    iput v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->blockSize:I

    .line 57
    iput v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->dispose:I

    .line 59
    iput v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lastDispose:I

    .line 60
    iput-boolean v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->transparency:Z

    .line 61
    iput v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->delay:I

    .line 73
    iput-object v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->action:Lcom/huanju/ssp/base/core/view/gif/GifAction;

    .line 76
    iput-object v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gifData:[B

    .line 85
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->in:Ljava/io/InputStream;

    .line 86
    iput-object p2, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->action:Lcom/huanju/ssp/base/core/view/gif/GifAction;

    .line 87
    return-void
.end method

.method public constructor <init>([BLcom/huanju/ssp/base/core/view/gif/GifAction;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "act"    # Lcom/huanju/ssp/base/core/view/gif/GifAction;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->loopCount:I

    .line 51
    iput-object v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->currentFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    .line 52
    iput-boolean v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->isShow:Z

    .line 53
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->block:[B

    .line 54
    iput v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->blockSize:I

    .line 57
    iput v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->dispose:I

    .line 59
    iput v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lastDispose:I

    .line 60
    iput-boolean v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->transparency:Z

    .line 61
    iput v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->delay:I

    .line 73
    iput-object v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->action:Lcom/huanju/ssp/base/core/view/gif/GifAction;

    .line 76
    iput-object v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gifData:[B

    .line 80
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gifData:[B

    .line 81
    iput-object p2, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->action:Lcom/huanju/ssp/base/core/view/gif/GifAction;

    .line 82
    return-void
.end method

.method private decodeImageData()V
    .locals 25

    .prologue
    .line 389
    const/4 v2, -0x1

    .line 390
    .local v2, "NullCode":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->iw:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->ih:I

    move/from16 v24, v0

    mul-int v17, v23, v24

    .line 393
    .local v17, "npix":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 394
    :cond_0
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->pixels:[B

    .line 396
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 397
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [S

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->prefix:[S

    .line 399
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    .line 400
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->suffix:[B

    .line 402
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    .line 403
    const/16 v23, 0x1001

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->pixelStack:[B

    .line 406
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->read()I

    move-result v11

    .line 407
    .local v11, "data_size":I
    const/16 v23, 0x1

    shl-int v6, v23, v11

    .line 408
    .local v6, "clear":I
    add-int/lit8 v13, v6, 0x1

    .line 409
    .local v13, "end_of_information":I
    add-int/lit8 v3, v6, 0x2

    .line 410
    .local v3, "available":I
    move/from16 v18, v2

    .line 411
    .local v18, "old_code":I
    add-int/lit8 v9, v11, 0x1

    .line 412
    .local v9, "code_size":I
    const/16 v23, 0x1

    shl-int v23, v23, v9

    add-int/lit8 v8, v23, -0x1

    .line 413
    .local v8, "code_mask":I
    const/4 v7, 0x0

    .local v7, "code":I
    :goto_0
    if-ge v7, v6, :cond_5

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-short v24, v23, v7

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v7

    move/from16 v24, v0

    aput-byte v24, v23, v7

    .line 413
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 419
    :cond_5
    const/4 v4, 0x0

    .local v4, "bi":I
    move/from16 v19, v4

    .local v19, "pi":I
    move/from16 v21, v4

    .local v21, "top":I
    move v14, v4

    .local v14, "first":I
    move v10, v4

    .local v10, "count":I
    move v5, v4

    .local v5, "bits":I
    move v12, v4

    .line 420
    .local v12, "datum":I
    const/4 v15, 0x0

    .local v15, "i":I
    move/from16 v20, v19

    .end local v19    # "pi":I
    .local v20, "pi":I
    move/from16 v22, v21

    .end local v21    # "top":I
    .local v22, "top":I
    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_11

    .line 421
    if-nez v22, :cond_12

    .line 422
    if-ge v5, v9, :cond_8

    .line 424
    if-nez v10, :cond_7

    .line 426
    invoke-direct/range {p0 .. p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->readBlock()I

    move-result v10

    .line 427
    if-gtz v10, :cond_6

    move/from16 v21, v22

    .line 492
    .end local v22    # "top":I
    .restart local v21    # "top":I
    :goto_2
    move/from16 v15, v20

    :goto_3
    move/from16 v0, v17

    if-ge v15, v0, :cond_10

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-byte v24, v23, v15

    .line 492
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 430
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_6
    const/4 v4, 0x0

    .line 432
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->block:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v4

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int v23, v23, v5

    add-int v12, v12, v23

    .line 433
    add-int/lit8 v5, v5, 0x8

    .line 434
    add-int/lit8 v4, v4, 0x1

    .line 435
    add-int/lit8 v10, v10, -0x1

    .line 436
    goto :goto_1

    .line 439
    :cond_8
    and-int v7, v12, v8

    .line 440
    shr-int/2addr v12, v9

    .line 441
    sub-int/2addr v5, v9

    .line 444
    if-gt v7, v3, :cond_11

    if-ne v7, v13, :cond_9

    move/from16 v21, v22

    .line 445
    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto :goto_2

    .line 447
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_9
    if-ne v7, v6, :cond_a

    .line 449
    add-int/lit8 v9, v11, 0x1

    .line 450
    const/16 v23, 0x1

    shl-int v23, v23, v9

    add-int/lit8 v8, v23, -0x1

    .line 451
    add-int/lit8 v3, v6, 0x2

    .line 452
    move/from16 v18, v2

    .line 453
    goto :goto_1

    .line 455
    :cond_a
    move/from16 v0, v18

    if-ne v0, v2, :cond_b

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 457
    move/from16 v18, v7

    .line 458
    move v14, v7

    move/from16 v22, v21

    .line 459
    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto :goto_1

    .line 461
    :cond_b
    move/from16 v16, v7

    .line 462
    .local v16, "in_code":I
    if-ne v7, v3, :cond_c

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 464
    move/from16 v7, v18

    move/from16 v22, v21

    .line 466
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_c
    :goto_4
    if-le v7, v6, :cond_d

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    aget-short v7, v23, v7

    move/from16 v22, v21

    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto :goto_4

    .line 470
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v7

    move/from16 v0, v23

    and-int/lit16 v14, v0, 0xff

    .line 472
    const/16 v23, 0x1000

    move/from16 v0, v23

    if-lt v3, v0, :cond_e

    move/from16 v21, v22

    .line 473
    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto/16 :goto_2

    .line 475
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v24, v0

    aput-short v24, v23, v3

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v3

    .line 478
    add-int/lit8 v3, v3, 0x1

    .line 479
    and-int v23, v3, v8

    if-nez v23, :cond_f

    const/16 v23, 0x1000

    move/from16 v0, v23

    if-ge v3, v0, :cond_f

    .line 481
    add-int/lit8 v9, v9, 0x1

    .line 482
    add-int/2addr v8, v3

    .line 484
    :cond_f
    move/from16 v18, v16

    .line 488
    .end local v16    # "in_code":I
    :goto_5
    add-int/lit8 v21, v21, -0x1

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "pi":I
    .restart local v19    # "pi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v21

    aput-byte v24, v23, v20

    .line 490
    add-int/lit8 v15, v15, 0x1

    move/from16 v20, v19

    .end local v19    # "pi":I
    .restart local v20    # "pi":I
    move/from16 v22, v21

    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto/16 :goto_1

    .line 495
    .end local v22    # "top":I
    .restart local v21    # "top":I
    :cond_10
    return-void

    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_11
    move/from16 v21, v22

    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto/16 :goto_2

    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_12
    move/from16 v21, v22

    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto :goto_5
.end method

.method private err()Z
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 502
    iput v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->status:I

    .line 503
    iput v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->frameCount:I

    .line 504
    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gifFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    .line 505
    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gct:[I

    .line 506
    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lct:[I

    .line 507
    return-void
.end method

.method private read()I
    .locals 3

    .prologue
    .line 510
    const/4 v0, 0x0

    .line 513
    .local v0, "curByte":I
    :try_start_0
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 517
    :goto_0
    return v0

    .line 514
    :catch_0
    move-exception v1

    .line 515
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    iput v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->status:I

    goto :goto_0
.end method

.method private readBlock()I
    .locals 6

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->read()I

    move-result v3

    iput v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->blockSize:I

    .line 523
    const/4 v2, 0x0

    .line 524
    .local v2, "n":I
    iget v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->blockSize:I

    if-lez v3, :cond_1

    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, "count":I
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->blockSize:I

    if-ge v2, v3, :cond_0

    .line 528
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->block:[B

    iget v5, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->blockSize:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 529
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 537
    :cond_0
    :goto_1
    iget v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->blockSize:I

    if-ge v2, v3, :cond_1

    .line 538
    const/4 v3, 0x1

    iput v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->status:I

    .line 541
    .end local v0    # "count":I
    :cond_1
    return v2

    .line 532
    .restart local v0    # "count":I
    :cond_2
    add-int/2addr v2, v0

    goto :goto_0

    .line 534
    :catch_0
    move-exception v1

    .line 535
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private readByte()I
    .locals 2

    .prologue
    .line 359
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gifData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->in:Ljava/io/InputStream;

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gifData:[B

    .line 361
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->readStream()I

    move-result v0

    return v0
.end method

.method private readColorTable(I)[I
    .locals 14
    .param p1, "ncolors"    # I

    .prologue
    .line 545
    mul-int/lit8 v9, p1, 0x3

    .line 546
    .local v9, "nbytes":I
    const/4 v11, 0x0

    .line 547
    .local v11, "tab":[I
    new-array v1, v9, [B

    .line 548
    .local v1, "c":[B
    const/4 v8, 0x0

    .line 550
    .local v8, "n":I
    :try_start_0
    iget-object v12, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v12, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 554
    :goto_0
    if-ge v8, v9, :cond_1

    .line 555
    const/4 v12, 0x1

    iput v12, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->status:I

    .line 567
    :cond_0
    return-object v11

    .line 551
    :catch_0
    move-exception v2

    .line 552
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 557
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v12, 0x100

    new-array v11, v12, [I

    .line 558
    const/4 v4, 0x0

    .line 559
    .local v4, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    move v7, v6

    .end local v6    # "j":I
    .local v7, "j":I
    move v5, v4

    .line 560
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_1
    if-ge v5, p1, :cond_0

    .line 561
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    aget-byte v12, v1, v7

    and-int/lit16 v10, v12, 0xff

    .line 562
    .local v10, "r":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .restart local v7    # "j":I
    aget-byte v12, v1, v6

    and-int/lit16 v3, v12, 0xff

    .line 563
    .local v3, "g":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    aget-byte v12, v1, v7

    and-int/lit16 v0, v12, 0xff

    .line 564
    .local v0, "b":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/high16 v12, -0x1000000

    shl-int/lit8 v13, v10, 0x10

    or-int/2addr v12, v13

    shl-int/lit8 v13, v3, 0x8

    or-int/2addr v12, v13

    or-int/2addr v12, v0

    aput v12, v11, v5

    move v7, v6

    .end local v6    # "j":I
    .restart local v7    # "j":I
    move v5, v4

    .line 565
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_1
.end method

.method private readContents()V
    .locals 6

    .prologue
    .line 572
    const/4 v2, 0x0

    .line 573
    .local v2, "done":Z
    :goto_0
    :sswitch_0
    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->err()Z

    move-result v4

    if-nez v4, :cond_2

    .line 574
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->read()I

    move-result v1

    .line 575
    .local v1, "code":I
    sparse-switch v1, :sswitch_data_0

    .line 607
    const/4 v4, 0x1

    iput v4, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->status:I

    goto :goto_0

    .line 577
    :sswitch_1
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->readImage()V

    goto :goto_0

    .line 580
    :sswitch_2
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->read()I

    move-result v1

    .line 581
    sparse-switch v1, :sswitch_data_1

    .line 598
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->skip()V

    goto :goto_0

    .line 583
    :sswitch_3
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->readGraphicControlExt()V

    goto :goto_0

    .line 586
    :sswitch_4
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->readBlock()I

    .line 587
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 588
    .local v0, "app":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v4, 0xb

    if-ge v3, v4, :cond_0

    .line 589
    iget-object v4, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->block:[B

    aget-byte v4, v4, v3

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 588
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 591
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NETSCAPE2.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 592
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->readNetscapeExt()V

    goto :goto_0

    .line 594
    :cond_1
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->skip()V

    goto :goto_0

    .line 602
    .end local v0    # "app":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    :sswitch_5
    const/4 v2, 0x1

    .line 603
    goto :goto_0

    .line 610
    .end local v1    # "code":I
    :cond_2
    return-void

    .line 575
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_2
        0x2c -> :sswitch_1
        0x3b -> :sswitch_5
    .end sparse-switch

    .line 581
    :sswitch_data_1
    .sparse-switch
        0xf9 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method

.method private readGraphicControlExt()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 613
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->read()I

    .line 614
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->read()I

    move-result v0

    .line 615
    .local v0, "packed":I
    and-int/lit8 v2, v0, 0x1c

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->dispose:I

    .line 616
    iget v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->dispose:I

    if-nez v2, :cond_0

    .line 617
    iput v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->dispose:I

    .line 619
    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->transparency:Z

    .line 620
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->readShort()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->delay:I

    .line 621
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->transIndex:I

    .line 622
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->read()I

    .line 623
    return-void

    .line 619
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readHeader()V
    .locals 4

    .prologue
    .line 626
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 627
    .local v1, "id":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 628
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 630
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GIF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 631
    const/4 v2, 0x1

    iput v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->status:I

    .line 639
    :cond_1
    :goto_1
    return-void

    .line 634
    :cond_2
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->readLSD()V

    .line 635
    iget-boolean v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gctFlag:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_1

    .line 636
    iget v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gctSize:I

    invoke-direct {p0, v2}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gct:[I

    .line 637
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gct:[I

    iget v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->bgIndex:I

    aget v2, v2, v3

    iput v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->bgColor:I

    goto :goto_1
.end method

.method private readImage()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 642
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->readShort()I

    move-result v3

    iput v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->ix:I

    .line 643
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->readShort()I

    move-result v3

    iput v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->iy:I

    .line 644
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->readShort()I

    move-result v3

    iput v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->iw:I

    .line 645
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->readShort()I

    move-result v3

    iput v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->ih:I

    .line 646
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->read()I

    move-result v1

    .line 647
    .local v1, "packed":I
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_4

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lctFlag:Z

    .line 648
    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_5

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->interlace:Z

    .line 651
    const/4 v3, 0x2

    and-int/lit8 v6, v1, 0x7

    shl-int/2addr v3, v6

    iput v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lctSize:I

    .line 652
    iget-boolean v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lctFlag:Z

    if-eqz v3, :cond_6

    .line 653
    iget v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lctSize:I

    invoke-direct {p0, v3}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->readColorTable(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lct:[I

    .line 654
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lct:[I

    iput-object v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->act:[I

    .line 661
    :cond_0
    :goto_2
    const/4 v2, 0x0

    .line 662
    .local v2, "save":I
    iget-boolean v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->transparency:Z

    if-eqz v3, :cond_1

    .line 663
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->act:[I

    iget v6, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->transIndex:I

    aget v2, v3, v6

    .line 664
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->act:[I

    iget v6, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->transIndex:I

    aput v5, v3, v6

    .line 666
    :cond_1
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->act:[I

    if-nez v3, :cond_2

    .line 667
    iput v4, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->status:I

    .line 669
    :cond_2
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->err()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 699
    :cond_3
    :goto_3
    return-void

    .end local v2    # "save":I
    :cond_4
    move v3, v5

    .line 647
    goto :goto_0

    :cond_5
    move v3, v5

    .line 648
    goto :goto_1

    .line 656
    :cond_6
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gct:[I

    iput-object v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->act:[I

    .line 657
    iget v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->bgIndex:I

    iget v6, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->transIndex:I

    if-ne v3, v6, :cond_0

    .line 658
    iput v5, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->bgColor:I

    goto :goto_2

    .line 672
    .restart local v2    # "save":I
    :cond_7
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->decodeImageData()V

    .line 673
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->skip()V

    .line 674
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->err()Z

    move-result v3

    if-nez v3, :cond_3

    .line 677
    iget v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->frameCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->frameCount:I

    .line 679
    iget v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->width:I

    iget v5, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->height:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 681
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->setPixels()V

    .line 682
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gifFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    if-nez v3, :cond_9

    .line 683
    new-instance v3, Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    iget-object v5, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->delay:I

    invoke-direct {v3, v5, v6}, Lcom/huanju/ssp/base/core/view/gif/GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gifFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    .line 684
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gifFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    iput-object v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->currentFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    .line 694
    :goto_4
    iget-boolean v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->transparency:Z

    if-eqz v3, :cond_8

    .line 695
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->act:[I

    iget v5, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->transIndex:I

    aput v2, v3, v5

    .line 697
    :cond_8
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->resetFrame()V

    .line 698
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->action:Lcom/huanju/ssp/base/core/view/gif/GifAction;

    iget v5, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->frameCount:I

    invoke-interface {v3, v4, v5}, Lcom/huanju/ssp/base/core/view/gif/GifAction;->parseOk(ZI)V

    goto :goto_3

    .line 686
    :cond_9
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gifFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    .line 687
    .local v0, "f":Lcom/huanju/ssp/base/core/view/gif/GifFrame;
    :goto_5
    iget-object v3, v0, Lcom/huanju/ssp/base/core/view/gif/GifFrame;->nextFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    if-eqz v3, :cond_a

    .line 688
    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifFrame;->nextFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    goto :goto_5

    .line 690
    :cond_a
    new-instance v3, Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    iget-object v5, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->delay:I

    invoke-direct {v3, v5, v6}, Lcom/huanju/ssp/base/core/view/gif/GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v3, v0, Lcom/huanju/ssp/base/core/view/gif/GifFrame;->nextFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    goto :goto_4
.end method

.method private readLSD()V
    .locals 3

    .prologue
    .line 703
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->width:I

    .line 704
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->height:I

    .line 706
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->read()I

    move-result v0

    .line 707
    .local v0, "packed":I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gctFlag:Z

    .line 710
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x7

    shl-int/2addr v1, v2

    iput v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gctSize:I

    .line 711
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->bgIndex:I

    .line 712
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->pixelAspect:I

    .line 713
    return-void

    .line 707
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readNetscapeExt()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 717
    :cond_0
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->readBlock()I

    .line 718
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->block:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_1

    .line 720
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->block:[B

    aget-byte v2, v2, v4

    and-int/lit16 v0, v2, 0xff

    .line 721
    .local v0, "b1":I
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->block:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 722
    .local v1, "b2":I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    iput v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->loopCount:I

    .line 724
    .end local v0    # "b1":I
    .end local v1    # "b2":I
    :cond_1
    iget v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->blockSize:I

    if-lez v2, :cond_2

    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->err()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 725
    :cond_2
    return-void
.end method

.method private readShort()I
    .locals 2

    .prologue
    .line 729
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->read()I

    move-result v0

    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private readStream()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 366
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->init()V

    .line 367
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 368
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->readHeader()V

    .line 369
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->err()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->readContents()V

    .line 371
    iget v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->frameCount:I

    if-gez v0, :cond_1

    .line 372
    iput v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->status:I

    .line 373
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->action:Lcom/huanju/ssp/base/core/view/gif/GifAction;

    invoke-interface {v0, v2, v1}, Lcom/huanju/ssp/base/core/view/gif/GifAction;->parseOk(ZI)V

    .line 379
    :cond_0
    :goto_0
    new-array v0, v3, [Ljava/io/Closeable;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->in:Ljava/io/InputStream;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 385
    :goto_1
    iget v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->status:I

    return v0

    .line 375
    :cond_1
    iput v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->status:I

    .line 376
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->action:Lcom/huanju/ssp/base/core/view/gif/GifAction;

    invoke-interface {v0, v3, v1}, Lcom/huanju/ssp/base/core/view/gif/GifAction;->parseOk(ZI)V

    goto :goto_0

    .line 382
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->status:I

    .line 383
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->action:Lcom/huanju/ssp/base/core/view/gif/GifAction;

    invoke-interface {v0, v2, v1}, Lcom/huanju/ssp/base/core/view/gif/GifAction;->parseOk(ZI)V

    goto :goto_1
.end method

.method private resetFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 733
    iget v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->dispose:I

    iput v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lastDispose:I

    .line 734
    iget v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->ix:I

    iput v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lrx:I

    .line 735
    iget v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->iy:I

    iput v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lry:I

    .line 736
    iget v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->iw:I

    iput v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lrw:I

    .line 737
    iget v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->ih:I

    iput v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lrh:I

    .line 738
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    .line 739
    iget v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->bgColor:I

    iput v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lastBgColor:I

    .line 740
    iput v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->dispose:I

    .line 741
    iput-boolean v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->transparency:Z

    .line 742
    iput v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->delay:I

    .line 743
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lct:[I

    .line 744
    return-void
.end method

.method private setPixels()V
    .locals 25

    .prologue
    .line 200
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->height:I

    mul-int/2addr v2, v4

    new-array v3, v2, [I

    .line 202
    .local v3, "dest":[I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lastDispose:I

    if-lez v2, :cond_4

    .line 203
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lastDispose:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 205
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->frameCount:I

    add-int/lit8 v19, v2, -0x2

    .line 206
    .local v19, "n":I
    if-lez v19, :cond_2

    .line 207
    add-int/lit8 v2, v19, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->getFrameImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    .line 212
    .end local v19    # "n":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->width:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->height:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 215
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lastDispose:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 217
    const/4 v10, 0x0

    .line 218
    .local v10, "c":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->transparency:Z

    if-nez v2, :cond_1

    .line 219
    move-object/from16 v0, p0

    iget v10, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lastBgColor:I

    .line 221
    :cond_1
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lrh:I

    if-ge v13, v2, :cond_4

    .line 222
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lry:I

    add-int/2addr v2, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->width:I

    mul-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lrx:I

    add-int v20, v2, v4

    .line 223
    .local v20, "n1":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lrw:I

    add-int v21, v20, v2

    .line 224
    .local v21, "n2":I
    move/from16 v17, v20

    .local v17, "k":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 225
    aput v10, v3, v17

    .line 224
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 209
    .end local v10    # "c":I
    .end local v13    # "i":I
    .end local v17    # "k":I
    .end local v20    # "n1":I
    .end local v21    # "n2":I
    .restart local v19    # "n":I
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 221
    .end local v19    # "n":I
    .restart local v10    # "c":I
    .restart local v13    # "i":I
    .restart local v17    # "k":I
    .restart local v20    # "n1":I
    .restart local v21    # "n2":I
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 233
    .end local v10    # "c":I
    .end local v13    # "i":I
    .end local v17    # "k":I
    .end local v20    # "n1":I
    .end local v21    # "n2":I
    :cond_4
    const/16 v22, 0x1

    .line 234
    .local v22, "pass":I
    const/16 v15, 0x8

    .line 235
    .local v15, "inc":I
    const/4 v14, 0x0

    .line 236
    .local v14, "iline":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->ih:I

    if-ge v13, v2, :cond_a

    .line 237
    move/from16 v18, v13

    .line 238
    .local v18, "line":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->interlace:Z

    if-eqz v2, :cond_6

    .line 239
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->ih:I

    if-lt v14, v2, :cond_5

    .line 240
    add-int/lit8 v22, v22, 0x1

    .line 241
    packed-switch v22, :pswitch_data_0

    .line 257
    :cond_5
    :goto_4
    move/from16 v18, v14

    .line 258
    add-int/2addr v14, v15

    .line 260
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->iy:I

    add-int v18, v18, v2

    .line 261
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->height:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_9

    .line 262
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->width:I

    mul-int v17, v18, v2

    .line 263
    .restart local v17    # "k":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->ix:I

    add-int v12, v17, v2

    .line 264
    .local v12, "dx":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->iw:I

    add-int v11, v12, v2

    .line 265
    .local v11, "dlim":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->width:I

    add-int v2, v2, v17

    if-ge v2, v11, :cond_7

    .line 266
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->width:I

    add-int v11, v17, v2

    .line 268
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->iw:I

    mul-int v23, v13, v2

    .local v23, "sx":I
    move/from16 v24, v23

    .line 269
    .end local v23    # "sx":I
    .local v24, "sx":I
    :goto_5
    if-ge v12, v11, :cond_9

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->pixels:[B

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "sx":I
    .restart local v23    # "sx":I
    aget-byte v2, v2, v24

    and-int/lit16 v0, v2, 0xff

    move/from16 v16, v0

    .line 272
    .local v16, "index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->act:[I

    aget v10, v2, v16

    .line 273
    .restart local v10    # "c":I
    if-eqz v10, :cond_8

    .line 274
    aput v10, v3, v12

    .line 276
    :cond_8
    add-int/lit8 v12, v12, 0x1

    move/from16 v24, v23

    .line 277
    .end local v23    # "sx":I
    .restart local v24    # "sx":I
    goto :goto_5

    .line 243
    .end local v10    # "c":I
    .end local v11    # "dlim":I
    .end local v12    # "dx":I
    .end local v16    # "index":I
    .end local v17    # "k":I
    .end local v24    # "sx":I
    :pswitch_0
    const/4 v14, 0x4

    .line 244
    goto :goto_4

    .line 246
    :pswitch_1
    const/4 v14, 0x2

    .line 247
    const/4 v15, 0x4

    .line 248
    goto :goto_4

    .line 250
    :pswitch_2
    const/4 v14, 0x1

    .line 251
    const/4 v15, 0x2

    .line 252
    goto :goto_4

    .line 236
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 280
    .end local v18    # "line":I
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->height:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 281
    return-void

    .line 241
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private skip()V
    .locals 1

    .prologue
    .line 751
    :cond_0
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->readBlock()I

    .line 752
    iget v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->blockSize:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    :cond_1
    return-void
.end method


# virtual methods
.method public free()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 110
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gifFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    .line 111
    .local v0, "fg":Lcom/huanju/ssp/base/core/view/gif/GifFrame;
    :goto_0
    if-eqz v0, :cond_1

    .line 112
    iget-object v1, v0, Lcom/huanju/ssp/base/core/view/gif/GifFrame;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    iget-object v1, v0, Lcom/huanju/ssp/base/core/view/gif/GifFrame;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 114
    iput-object v4, v0, Lcom/huanju/ssp/base/core/view/gif/GifFrame;->image:Landroid/graphics/Bitmap;

    .line 116
    :cond_0
    const/4 v0, 0x0

    .line 117
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gifFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/view/gif/GifFrame;->nextFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gifFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    .line 118
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gifFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    goto :goto_0

    .line 120
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->in:Ljava/io/InputStream;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 121
    iput-object v4, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gifData:[B

    .line 122
    return-void
.end method

.method public getCurrentFrame()Lcom/huanju/ssp/base/core/view/gif/GifFrame;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->currentFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    return-object v0
.end method

.method public getDelay(I)I
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 149
    const/4 v1, -0x1

    iput v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->delay:I

    .line 150
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->frameCount:I

    if-ge p1, v1, :cond_0

    .line 152
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->getFrame(I)Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    move-result-object v0

    .line 153
    .local v0, "f":Lcom/huanju/ssp/base/core/view/gif/GifFrame;
    if-eqz v0, :cond_0

    .line 154
    iget v1, v0, Lcom/huanju/ssp/base/core/view/gif/GifFrame;->delay:I

    iput v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->delay:I

    .line 156
    .end local v0    # "f":Lcom/huanju/ssp/base/core/view/gif/GifFrame;
    :cond_0
    iget v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->delay:I

    return v1
.end method

.method public getDelays()[I
    .locals 4

    .prologue
    .line 165
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gifFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    .line 166
    .local v1, "f":Lcom/huanju/ssp/base/core/view/gif/GifFrame;
    iget v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->frameCount:I

    new-array v0, v3, [I

    .line 167
    .local v0, "d":[I
    const/4 v2, 0x0

    .line 168
    .local v2, "i":I
    :goto_0
    if-eqz v1, :cond_0

    iget v3, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->frameCount:I

    if-ge v2, v3, :cond_0

    .line 169
    iget v3, v1, Lcom/huanju/ssp/base/core/view/gif/GifFrame;->delay:I

    aput v3, v0, v2

    .line 170
    iget-object v1, v1, Lcom/huanju/ssp/base/core/view/gif/GifFrame;->nextFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    :cond_0
    return-object v0
.end method

.method public getFrame(I)Lcom/huanju/ssp/base/core/view/gif/GifFrame;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gifFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    .line 315
    .local v0, "frame":Lcom/huanju/ssp/base/core/view/gif/GifFrame;
    const/4 v1, 0x0

    .line 316
    .local v1, "i":I
    :goto_0
    if-eqz v0, :cond_1

    .line 317
    if-ne v1, p1, :cond_0

    .line 324
    .end local v0    # "frame":Lcom/huanju/ssp/base/core/view/gif/GifFrame;
    :goto_1
    return-object v0

    .line 320
    .restart local v0    # "frame":Lcom/huanju/ssp/base/core/view/gif/GifFrame;
    :cond_0
    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifFrame;->nextFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->frameCount:I

    return v0
.end method

.method public getFrameImage(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->getFrame(I)Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    move-result-object v0

    .line 291
    .local v0, "frame":Lcom/huanju/ssp/base/core/view/gif/GifFrame;
    if-nez v0, :cond_0

    .line 292
    const/4 v1, 0x0

    .line 294
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/huanju/ssp/base/core/view/gif/GifFrame;->image:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->getFrameImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->loopCount:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->status:I

    return v0
.end method

.method public next()Lcom/huanju/ssp/base/core/view/gif/GifFrame;
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->isShow:Z

    if-nez v0, :cond_0

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->isShow:Z

    .line 342
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gifFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    .line 354
    :goto_0
    return-object v0

    .line 344
    :cond_0
    iget v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->status:I

    if-nez v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->currentFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifFrame;->nextFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->currentFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifFrame;->nextFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->currentFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    .line 354
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->currentFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    goto :goto_0

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->currentFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/gif/GifFrame;->nextFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->currentFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    .line 350
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->currentFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    if-nez v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gifFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->currentFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    goto :goto_1
.end method

.method public parseOk()Z
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->status:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gifFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->currentFrame:Lcom/huanju/ssp/base/core/view/gif/GifFrame;

    .line 332
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 93
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->readStream()I

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gifData:[B

    if-eqz v1, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->readByte()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->free()V

    goto :goto_0

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->free()V

    .line 102
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->action:Lcom/huanju/ssp/base/core/view/gif/GifAction;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/gif/GifDecoder;->gifData:[B

    invoke-interface {v1, v2}, Lcom/huanju/ssp/base/core/view/gif/GifAction;->onOOM([B)V

    goto :goto_0
.end method
