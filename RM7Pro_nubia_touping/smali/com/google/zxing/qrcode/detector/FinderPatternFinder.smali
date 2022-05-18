.class public Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;,
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;
    }
.end annotation


# static fields
.field private static final CENTER_QUORUM:I = 0x2

.field protected static final MAX_MODULES:I = 0x61

.field protected static final MIN_SKIP:I = 0x3


# instance fields
.field private final crossCheckStateCount:[I

.field private hasSkipped:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final possibleCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation
.end field

.field private final resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "resultPointCallback"    # Lcom/google/zxing/ResultPointCallback;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    .line 65
    iput-object p2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    .line 66
    return-void
.end method

.method private static centerFromEnd([II)F
    .locals 3
    .param p0, "stateCount"    # [I
    .param p1, "end"    # I

    .prologue
    .line 174
    const/4 v0, 0x4

    aget v0, p0, v0

    sub-int v0, p1, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private crossCheckDiagonal(II)Z
    .locals 12
    .param p1, "centerI"    # I
    .param p2, "centerJ"    # I

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v4, 0x0

    .line 265
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    .line 268
    .local v3, "stateCount":[I
    const/4 v0, 0x0

    .line 269
    .local v0, "i":I
    :goto_0
    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v0

    sub-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 270
    aget v5, v3, v8

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v8

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_0
    aget v5, v3, v8

    if-nez v5, :cond_2

    .line 321
    :cond_1
    :goto_1
    return v4

    .line 278
    :cond_2
    :goto_2
    if-lt p1, v0, :cond_3

    if-lt p2, v0, :cond_3

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v0

    sub-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_3

    .line 279
    aget v5, v3, v9

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v9

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 282
    :cond_3
    aget v5, v3, v9

    if-eqz v5, :cond_1

    .line 287
    :goto_3
    if-lt p1, v0, :cond_4

    if-lt p2, v0, :cond_4

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v0

    sub-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 288
    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 291
    :cond_4
    aget v5, v3, v4

    if-eqz v5, :cond_1

    .line 295
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 296
    .local v1, "maxI":I
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    .line 299
    .local v2, "maxJ":I
    const/4 v0, 0x1

    .line 300
    :goto_4
    add-int v5, p1, v0

    if-ge v5, v1, :cond_5

    add-int v5, p2, v0

    if-ge v5, v2, :cond_5

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v6, p2, v0

    add-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 301
    aget v5, v3, v8

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v8

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 305
    :cond_5
    :goto_5
    add-int v5, p1, v0

    if-ge v5, v1, :cond_6

    add-int v5, p2, v0

    if-ge v5, v2, :cond_6

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v6, p2, v0

    add-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_6

    .line 306
    aget v5, v3, v10

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v10

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 309
    :cond_6
    aget v5, v3, v10

    if-eqz v5, :cond_1

    .line 313
    :goto_6
    add-int v5, p1, v0

    if-ge v5, v1, :cond_7

    add-int v5, p2, v0

    if-ge v5, v2, :cond_7

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v6, p2, v0

    add-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 314
    aget v5, v3, v11

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v11

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 317
    :cond_7
    aget v5, v3, v11

    if-eqz v5, :cond_1

    .line 321
    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternDiagonal([I)Z

    move-result v4

    goto/16 :goto_1
.end method

.method private crossCheckHorizontal(IIII)F
    .locals 7
    .param p1, "startJ"    # I
    .param p2, "centerI"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 411
    .local v0, "image":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    .line 412
    .local v2, "maxJ":I
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    .line 414
    .local v3, "stateCount":[I
    move v1, p1

    .line 415
    .local v1, "j":I
    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 416
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 417
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 419
    :cond_0
    if-gez v1, :cond_1

    .line 420
    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 468
    :goto_1
    return v5

    .line 422
    :cond_1
    :goto_2
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    aget v5, v3, v5

    if-gt v5, p3, :cond_2

    .line 423
    const/4 v5, 0x1

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 424
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 426
    :cond_2
    if-ltz v1, :cond_3

    const/4 v5, 0x1

    aget v5, v3, v5

    if-le v5, p3, :cond_4

    .line 427
    :cond_3
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_1

    .line 429
    :cond_4
    :goto_3
    if-ltz v1, :cond_5

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    aget v5, v3, v5

    if-gt v5, p3, :cond_5

    .line 430
    const/4 v5, 0x0

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 431
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 433
    :cond_5
    const/4 v5, 0x0

    aget v5, v3, v5

    if-le v5, p3, :cond_6

    .line 434
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_1

    .line 437
    :cond_6
    add-int/lit8 v1, p1, 0x1

    .line 438
    :goto_4
    if-ge v1, v2, :cond_7

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 439
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 442
    :cond_7
    if-ne v1, v2, :cond_8

    .line 443
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_1

    .line 445
    :cond_8
    :goto_5
    if-ge v1, v2, :cond_9

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x3

    aget v5, v3, v5

    if-ge v5, p3, :cond_9

    .line 446
    const/4 v5, 0x3

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 449
    :cond_9
    if-eq v1, v2, :cond_a

    const/4 v5, 0x3

    aget v5, v3, v5

    if-lt v5, p3, :cond_b

    .line 450
    :cond_a
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_1

    .line 452
    :cond_b
    :goto_6
    if-ge v1, v2, :cond_c

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x4

    aget v5, v3, v5

    if-ge v5, p3, :cond_c

    .line 453
    const/4 v5, 0x4

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 456
    :cond_c
    const/4 v5, 0x4

    aget v5, v3, v5

    if-lt v5, p3, :cond_d

    .line 457
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto/16 :goto_1

    .line 462
    :cond_d
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x4

    aget v6, v3, v6

    add-int v4, v5, v6

    .line 464
    .local v4, "stateCountTotal":I
    sub-int v5, v4, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    if-lt v5, p4, :cond_e

    .line 465
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto/16 :goto_1

    .line 468
    :cond_e
    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {v3, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v5

    goto/16 :goto_1

    :cond_f
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto/16 :goto_1
.end method

.method private crossCheckVertical(IIII)F
    .locals 7
    .param p1, "startI"    # I
    .param p2, "centerJ"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .prologue
    .line 337
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 339
    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    .line 340
    .local v2, "maxI":I
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    .line 343
    .local v3, "stateCount":[I
    move v0, p1

    .line 344
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 345
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 346
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 348
    :cond_0
    if-gez v0, :cond_1

    .line 349
    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 399
    :goto_1
    return v5

    .line 351
    :cond_1
    :goto_2
    if-ltz v0, :cond_2

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    aget v5, v3, v5

    if-gt v5, p3, :cond_2

    .line 352
    const/4 v5, 0x1

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 353
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 356
    :cond_2
    if-ltz v0, :cond_3

    const/4 v5, 0x1

    aget v5, v3, v5

    if-le v5, p3, :cond_4

    .line 357
    :cond_3
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_1

    .line 359
    :cond_4
    :goto_3
    if-ltz v0, :cond_5

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    aget v5, v3, v5

    if-gt v5, p3, :cond_5

    .line 360
    const/4 v5, 0x0

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 361
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 363
    :cond_5
    const/4 v5, 0x0

    aget v5, v3, v5

    if-le v5, p3, :cond_6

    .line 364
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_1

    .line 368
    :cond_6
    add-int/lit8 v0, p1, 0x1

    .line 369
    :goto_4
    if-ge v0, v2, :cond_7

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 370
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 373
    :cond_7
    if-ne v0, v2, :cond_8

    .line 374
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_1

    .line 376
    :cond_8
    :goto_5
    if-ge v0, v2, :cond_9

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x3

    aget v5, v3, v5

    if-ge v5, p3, :cond_9

    .line 377
    const/4 v5, 0x3

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 380
    :cond_9
    if-eq v0, v2, :cond_a

    const/4 v5, 0x3

    aget v5, v3, v5

    if-lt v5, p3, :cond_b

    .line 381
    :cond_a
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_1

    .line 383
    :cond_b
    :goto_6
    if-ge v0, v2, :cond_c

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x4

    aget v5, v3, v5

    if-ge v5, p3, :cond_c

    .line 384
    const/4 v5, 0x4

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 387
    :cond_c
    const/4 v5, 0x4

    aget v5, v3, v5

    if-lt v5, p3, :cond_d

    .line 388
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto/16 :goto_1

    .line 393
    :cond_d
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x4

    aget v6, v3, v6

    add-int v4, v5, v6

    .line 395
    .local v4, "stateCountTotal":I
    sub-int v5, v4, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    mul-int/lit8 v6, p4, 0x2

    if-lt v5, v6, :cond_e

    .line 396
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto/16 :goto_1

    .line 399
    :cond_e
    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {v3, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v5

    goto/16 :goto_1

    :cond_f
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto/16 :goto_1
.end method

.method private findRowSkip()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 542
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 543
    if-gt v3, v6, :cond_1

    .line 563
    :cond_0
    :goto_0
    return v2

    .line 546
    :cond_1
    const/4 v1, 0x0

    .line 547
    .local v1, "firstConfirmedCenter":Lcom/google/zxing/ResultPoint;
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 548
    .local v0, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    .line 549
    if-nez v1, :cond_3

    .line 550
    move-object v1, v0

    goto :goto_1

    .line 557
    :cond_3
    iput-boolean v6, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    .line 558
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 559
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    goto :goto_0
.end method

.method protected static foundPatternCross([I)Z
    .locals 10
    .param p0, "stateCount"    # [I

    .prologue
    const/4 v6, 0x1

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v5, 0x0

    .line 183
    const/4 v4, 0x0

    .line 184
    .local v4, "totalModuleSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v7, 0x5

    if-ge v1, v7, :cond_2

    .line 185
    aget v0, p0, v1

    .line 186
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 202
    .end local v0    # "count":I
    :cond_0
    :goto_1
    return v5

    .line 189
    .restart local v0    # "count":I
    :cond_1
    add-int/2addr v4, v0

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "count":I
    :cond_2
    const/4 v7, 0x7

    if-lt v4, v7, :cond_0

    .line 194
    int-to-float v7, v4

    const/high16 v8, 0x40e00000    # 7.0f

    div-float v3, v7, v8

    .line 195
    .local v3, "moduleSize":F
    const/high16 v7, 0x40000000    # 2.0f

    div-float v2, v3, v7

    .line 197
    .local v2, "maxVariance":F
    aget v7, p0, v5

    int-to-float v7, v7

    sub-float v7, v3, v7

    .line 198
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_0

    aget v7, p0, v6

    int-to-float v7, v7

    sub-float v7, v3, v7

    .line 199
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_0

    mul-float v7, v9, v3

    const/4 v8, 0x2

    aget v8, p0, v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    .line 200
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float v8, v9, v2

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    const/4 v7, 0x3

    aget v7, p0, v7

    int-to-float v7, v7

    sub-float v7, v3, v7

    .line 201
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_0

    const/4 v7, 0x4

    aget v7, p0, v7

    int-to-float v7, v7

    sub-float v7, v3, v7

    .line 202
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_0

    move v5, v6

    goto :goto_1
.end method

.method protected static foundPatternDiagonal([I)Z
    .locals 10
    .param p0, "stateCount"    # [I

    .prologue
    const/4 v6, 0x1

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v5, 0x0

    .line 211
    const/4 v4, 0x0

    .line 212
    .local v4, "totalModuleSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v7, 0x5

    if-ge v1, v7, :cond_2

    .line 213
    aget v0, p0, v1

    .line 214
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 230
    .end local v0    # "count":I
    :cond_0
    :goto_1
    return v5

    .line 217
    .restart local v0    # "count":I
    :cond_1
    add-int/2addr v4, v0

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "count":I
    :cond_2
    const/4 v7, 0x7

    if-lt v4, v7, :cond_0

    .line 222
    int-to-float v7, v4

    const/high16 v8, 0x40e00000    # 7.0f

    div-float v3, v7, v8

    .line 223
    .local v3, "moduleSize":F
    const v7, 0x3faa9fbe    # 1.333f

    div-float v2, v3, v7

    .line 225
    .local v2, "maxVariance":F
    aget v7, p0, v5

    int-to-float v7, v7

    sub-float v7, v3, v7

    .line 226
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_0

    aget v7, p0, v6

    int-to-float v7, v7

    sub-float v7, v3, v7

    .line 227
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_0

    mul-float v7, v9, v3

    const/4 v8, 0x2

    aget v8, p0, v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    .line 228
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float v8, v9, v2

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    const/4 v7, 0x3

    aget v7, p0, v7

    int-to-float v7, v7

    sub-float v7, v3, v7

    .line 229
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_0

    const/4 v7, 0x4

    aget v7, p0, v7

    int-to-float v7, v7

    sub-float v7, v3, v7

    .line 230
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_0

    move v5, v6

    goto :goto_1
.end method

.method private getCrossCheckStateCount()[I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    invoke-virtual {p0, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->clearCounts([I)V

    .line 235
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    return-object v0
.end method

.method private haveMultiplyConfirmedCenters()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 572
    const/4 v1, 0x0

    .line 573
    .local v1, "confirmedCount":I
    const/4 v5, 0x0

    .line 574
    .local v5, "totalModuleSize":F
    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 575
    .local v2, "max":I
    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 576
    .local v3, "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    .line 577
    add-int/lit8 v1, v1, 0x1

    .line 578
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v8

    add-float/2addr v5, v8

    goto :goto_0

    .line 581
    .end local v3    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_1
    const/4 v7, 0x3

    if-ge v1, v7, :cond_3

    .line 593
    :cond_2
    :goto_1
    return v6

    .line 588
    :cond_3
    int-to-float v7, v2

    div-float v0, v5, v7

    .line 589
    .local v0, "average":F
    const/4 v4, 0x0

    .line 590
    .local v4, "totalDeviation":F
    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 591
    .restart local v3    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v8

    sub-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v4, v8

    .line 592
    goto :goto_2

    .line 593
    .end local v3    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_4
    const v7, 0x3d4ccccd    # 0.05f

    mul-float/2addr v7, v5

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_2

    const/4 v6, 0x1

    goto :goto_1
.end method

.method private selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 604
    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    .line 605
    .local v6, "startSize":I
    const/4 v9, 0x3

    if-ge v6, v9, :cond_0

    .line 607
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 611
    :cond_0
    const/4 v9, 0x3

    if-le v6, v9, :cond_3

    .line 613
    const/4 v8, 0x0

    .line 614
    .local v8, "totalModuleSize":F
    const/4 v5, 0x0

    .line 615
    .local v5, "square":F
    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 616
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v4

    .line 617
    .local v4, "size":F
    add-float/2addr v8, v4

    .line 618
    mul-float v9, v4, v4

    add-float/2addr v5, v9

    .line 619
    goto :goto_0

    .line 620
    .end local v4    # "size":F
    :cond_1
    int-to-float v9, v6

    div-float v0, v8, v9

    .line 621
    .local v0, "average":F
    int-to-float v9, v6

    div-float v9, v5, v9

    mul-float v10, v0, v0

    sub-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v7, v10

    .line 623
    .local v7, "stdDev":F
    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 625
    const v9, 0x3e4ccccd    # 0.2f

    mul-float/2addr v9, v0

    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 627
    .local v2, "limit":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_3

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x3

    if-le v9, v10, :cond_3

    .line 628
    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 629
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v9

    sub-float/2addr v9, v0

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v2

    if-lez v9, :cond_2

    .line 630
    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 631
    add-int/lit8 v1, v1, -0x1

    .line 627
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 636
    .end local v0    # "average":F
    .end local v1    # "i":I
    .end local v2    # "limit":F
    .end local v5    # "square":F
    .end local v7    # "stdDev":F
    .end local v8    # "totalModuleSize":F
    :cond_3
    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x3

    if-le v9, v10, :cond_5

    .line 639
    const/4 v8, 0x0

    .line 640
    .restart local v8    # "totalModuleSize":F
    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 641
    .local v3, "possibleCenter":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v10

    add-float/2addr v8, v10

    .line 642
    goto :goto_2

    .line 644
    .end local v3    # "possibleCenter":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_4
    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    int-to-float v9, v9

    div-float v0, v8, v9

    .line 646
    .restart local v0    # "average":F
    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 648
    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v9, v10, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 651
    .end local v0    # "average":F
    .end local v8    # "totalModuleSize":F
    :cond_5
    const/4 v9, 0x3

    new-array v10, v9, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v12, 0x0

    .line 652
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v9, v10, v11

    const/4 v11, 0x1

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v12, 0x1

    .line 653
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v9, v10, v11

    const/4 v11, 0x2

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v12, 0x2

    .line 654
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v9, v10, v11

    .line 651
    return-object v10
.end method


# virtual methods
.method protected final clearCounts([I)V
    .locals 2
    .param p1, "counts"    # [I

    .prologue
    .line 239
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 240
    const/4 v1, 0x0

    aput v1, p1, v0

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_0
    return-void
.end method

.method final find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-eqz p1, :cond_3

    sget-object v11, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v10, 0x1

    .line 78
    .local v10, "tryHarder":Z
    :goto_0
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v5

    .line 79
    .local v5, "maxI":I
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    .line 87
    .local v6, "maxJ":I
    mul-int/lit8 v11, v5, 0x3

    div-int/lit16 v3, v11, 0x184

    .line 88
    .local v3, "iSkip":I
    const/4 v11, 0x3

    if-lt v3, v11, :cond_0

    if-eqz v10, :cond_1

    .line 89
    :cond_0
    const/4 v3, 0x3

    .line 92
    :cond_1
    const/4 v1, 0x0

    .line 93
    .local v1, "done":Z
    const/4 v11, 0x5

    new-array v9, v11, [I

    .line 94
    .local v9, "stateCount":[I
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_d

    if-nez v1, :cond_d

    .line 96
    invoke-virtual {p0, v9}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->clearCounts([I)V

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "currentState":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v6, :cond_b

    .line 99
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11, v4, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 101
    and-int/lit8 v11, v0, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 102
    add-int/lit8 v0, v0, 0x1

    .line 104
    :cond_2
    aget v11, v9, v0

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v0

    .line 98
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 77
    .end local v0    # "currentState":I
    .end local v1    # "done":Z
    .end local v2    # "i":I
    .end local v3    # "iSkip":I
    .end local v4    # "j":I
    .end local v5    # "maxI":I
    .end local v6    # "maxJ":I
    .end local v9    # "stateCount":[I
    .end local v10    # "tryHarder":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 106
    .restart local v0    # "currentState":I
    .restart local v1    # "done":Z
    .restart local v2    # "i":I
    .restart local v3    # "iSkip":I
    .restart local v4    # "j":I
    .restart local v5    # "maxI":I
    .restart local v6    # "maxJ":I
    .restart local v9    # "stateCount":[I
    .restart local v10    # "tryHarder":Z
    :cond_4
    and-int/lit8 v11, v0, 0x1

    if-nez v11, :cond_a

    .line 107
    const/4 v11, 0x4

    if-ne v0, v11, :cond_9

    .line 108
    invoke-static {v9}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 109
    invoke-virtual {p0, v9, v2, v4}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v11

    .line 110
    if-eqz v11, :cond_7

    .line 113
    const/4 v3, 0x2

    .line 114
    iget-boolean v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v11, :cond_6

    .line 115
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v1

    .line 137
    :cond_5
    :goto_4
    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, v9}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->clearCounts([I)V

    goto :goto_3

    .line 117
    :cond_6
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->findRowSkip()I

    move-result v8

    .line 118
    .local v8, "rowSkip":I
    const/4 v11, 0x2

    aget v11, v9, v11

    if-le v8, v11, :cond_5

    .line 127
    const/4 v11, 0x2

    aget v11, v9, v11

    sub-int v11, v8, v11

    add-int/lit8 v11, v11, -0x2

    add-int/2addr v2, v11

    .line 128
    add-int/lit8 v4, v6, -0x1

    goto :goto_4

    .line 132
    .end local v8    # "rowSkip":I
    :cond_7
    invoke-virtual {p0, v9}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->shiftCounts2([I)V

    .line 133
    const/4 v0, 0x3

    .line 134
    goto :goto_3

    .line 140
    :cond_8
    invoke-virtual {p0, v9}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->shiftCounts2([I)V

    .line 141
    const/4 v0, 0x3

    goto :goto_3

    .line 144
    :cond_9
    add-int/lit8 v0, v0, 0x1

    aget v11, v9, v0

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v0

    goto :goto_3

    .line 147
    :cond_a
    aget v11, v9, v0

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v0

    goto :goto_3

    .line 151
    :cond_b
    invoke-static {v9}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 152
    invoke-virtual {p0, v9, v2, v6}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v11

    .line 153
    if-eqz v11, :cond_c

    .line 154
    const/4 v11, 0x0

    aget v3, v9, v11

    .line 155
    iget-boolean v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v11, :cond_c

    .line 157
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v1

    .line 94
    :cond_c
    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 163
    .end local v0    # "currentState":I
    .end local v4    # "j":I
    :cond_d
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v7

    .line 164
    .local v7, "patternInfo":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-static {v7}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 166
    new-instance v11, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v11, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    return-object v11
.end method

.method protected final getImage()Lcom/google/zxing/common/BitMatrix;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method protected final getPossibleCenters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    return-object v0
.end method

.method protected final handlePossibleCenter([III)Z
    .locals 11
    .param p1, "stateCount"    # [I
    .param p2, "i"    # I
    .param p3, "j"    # I

    .prologue
    .line 503
    const/4 v8, 0x0

    aget v8, p1, v8

    const/4 v9, 0x1

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x2

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x3

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x4

    aget v9, p1, v9

    add-int v7, v8, v9

    .line 505
    .local v7, "stateCountTotal":I
    invoke-static {p1, p3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v2

    .line 506
    .local v2, "centerJ":F
    float-to-int v8, v2

    const/4 v9, 0x2

    aget v9, p1, v9

    invoke-direct {p0, p2, v8, v9, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckVertical(IIII)F

    move-result v1

    .line 507
    .local v1, "centerI":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_3

    .line 509
    float-to-int v8, v2

    float-to-int v9, v1

    const/4 v10, 0x2

    aget v10, p1, v10

    invoke-direct {p0, v8, v9, v10, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckHorizontal(IIII)F

    move-result v2

    .line 510
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_3

    float-to-int v8, v1

    float-to-int v9, v2

    invoke-direct {p0, v8, v9}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckDiagonal(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 511
    int-to-float v8, v7

    const/high16 v9, 0x40e00000    # 7.0f

    div-float v3, v8, v9

    .line 512
    .local v3, "estimatedModuleSize":F
    const/4 v4, 0x0

    .line 513
    .local v4, "found":Z
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 514
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 516
    .local v0, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->aboutEquals(FFF)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 517
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v9

    invoke-interface {v8, v5, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 518
    const/4 v4, 0x1

    .line 522
    .end local v0    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_0
    if-nez v4, :cond_1

    .line 523
    new-instance v6, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-direct {v6, v2, v1, v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFF)V

    .line 524
    .local v6, "point":Lcom/google/zxing/qrcode/detector/FinderPattern;
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    if-eqz v8, :cond_1

    .line 526
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    invoke-interface {v8, v6}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 529
    .end local v6    # "point":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_1
    const/4 v8, 0x1

    .line 532
    .end local v3    # "estimatedModuleSize":F
    .end local v4    # "found":Z
    .end local v5    # "index":I
    :goto_1
    return v8

    .line 513
    .restart local v0    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .restart local v3    # "estimatedModuleSize":F
    .restart local v4    # "found":Z
    .restart local v5    # "index":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 532
    .end local v0    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v3    # "estimatedModuleSize":F
    .end local v4    # "found":Z
    .end local v5    # "index":I
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method protected final handlePossibleCenter([IIIZ)Z
    .locals 1
    .param p1, "stateCount"    # [I
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "pureBarcode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 482
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v0

    return v0
.end method

.method protected final shiftCounts2([I)V
    .locals 6
    .param p1, "stateCount"    # [I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 245
    aget v0, p1, v3

    aput v0, p1, v1

    .line 246
    aget v0, p1, v4

    aput v0, p1, v2

    .line 247
    aget v0, p1, v5

    aput v0, p1, v3

    .line 248
    aput v2, p1, v4

    .line 249
    aput v1, p1, v5

    .line 250
    return-void
.end method
