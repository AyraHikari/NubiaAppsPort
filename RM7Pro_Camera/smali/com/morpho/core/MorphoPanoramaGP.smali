.class public Lcom/morpho/core/MorphoPanoramaGP;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/morpho/core/MorphoPanoramaGP$InitParam;
    }
.end annotation


# instance fields
.field private a:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "morpho_panorama_gp"

    .line 20
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->a:J

    .line 144
    invoke-direct {p0}, Lcom/morpho/core/MorphoPanoramaGP;->createNativeObject()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 147
    iput-wide v2, p0, Lcom/morpho/core/MorphoPanoramaGP;->a:J

    goto :goto_0

    .line 149
    :cond_0
    iput-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->a:J

    :goto_0
    return-void
.end method

.method public static a(Lcom/morpho/core/MorphoPanoramaGP$InitParam;D)I
    .locals 0

    .line 130
    invoke-static {p0, p1, p2}, Lcom/morpho/core/MorphoPanoramaGP;->nativeCalcImageSize(Lcom/morpho/core/MorphoPanoramaGP$InitParam;D)I

    move-result p0

    return p0
.end method

.method private final native createNativeObject()J
.end method

.method private final native deleteNativeObject(J)V
.end method

.method private final native nativeAttachPreview(J[BI[I[B[ILandroid/graphics/Bitmap;)I
.end method

.method private final native nativeAttachStillImageRaw(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I
.end method

.method private static final native nativeCalcImageSize(Lcom/morpho/core/MorphoPanoramaGP$InitParam;D)I
.end method

.method private final native nativeEnd(J)I
.end method

.method private final native nativeFinish(J)I
.end method

.method private final native nativeGetClippingRect(J[I)I
.end method

.method private final native nativeGetCurrentDirection(J[I)I
.end method

.method private final native nativeGetGuidancePos(J[I)I
.end method

.method private final native nativeInitialize(JLcom/morpho/core/MorphoPanoramaGP$InitParam;[I)I
.end method

.method private final native nativeSaveOutputJpeg(JLjava/lang/String;IIIII[I)I
.end method

.method private final native nativeSetMotionlessThreshold(JI)I
.end method

.method private final native nativeSetUseSensorAssist(JII)I
.end method

.method private final native nativeSetUseSensorThreshold(JI)I
.end method

.method private final native nativeStart(J)I
.end method


# virtual methods
.method public a()I
    .locals 6

    .line 173
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 175
    invoke-direct {p0, v0, v1}, Lcom/morpho/core/MorphoPanoramaGP;->nativeFinish(J)I

    move-result v0

    .line 176
    iget-wide v4, p0, Lcom/morpho/core/MorphoPanoramaGP;->a:J

    invoke-direct {p0, v4, v5}, Lcom/morpho/core/MorphoPanoramaGP;->deleteNativeObject(J)V

    .line 177
    iput-wide v2, p0, Lcom/morpho/core/MorphoPanoramaGP;->a:J

    goto :goto_0

    :cond_0
    const v0, -0x7ffffffe

    :goto_0
    return v0
.end method

.method public a(I)I
    .locals 4

    .line 393
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 395
    invoke-direct {p0, v0, v1, p1}, Lcom/morpho/core/MorphoPanoramaGP;->nativeSetMotionlessThreshold(JI)I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, -0x7ffffffe

    :goto_0
    return p1
.end method

.method public a(II)I
    .locals 4

    .line 441
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 443
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/morpho/core/MorphoPanoramaGP;->nativeSetUseSensorAssist(JII)I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, -0x7ffffffe

    :goto_0
    return p1
.end method

.method public a(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 490
    iget-wide v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->a:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 492
    invoke-direct {p0, v1, v2, v0}, Lcom/morpho/core/MorphoPanoramaGP;->nativeGetGuidancePos(J[I)I

    move-result v1

    const/4 v2, 0x0

    .line 493
    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Point;->set(II)V

    const/4 p1, 0x2

    .line 494
    aget p1, v0, p1

    const/4 v2, 0x3

    aget v0, v0, v2

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    :cond_0
    const v1, -0x7ffffffe

    :goto_0
    return v1
.end method

.method public a(Landroid/graphics/Rect;)I
    .locals 7

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 333
    iget-wide v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->a:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 335
    invoke-direct {p0, v1, v2, v0}, Lcom/morpho/core/MorphoPanoramaGP;->nativeGetClippingRect(J[I)I

    move-result v1

    if-nez v1, :cond_1

    .line 338
    aget v2, v0, v4

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v5, 0x2

    aget v5, v0, v5

    const/4 v6, 0x3

    aget v0, v0, v6

    invoke-virtual {p1, v2, v3, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    const v1, -0x7ffffffe

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 351
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    return v1
.end method

.method public a(Lcom/morpho/core/MorphoPanoramaGP$InitParam;[I)I
    .locals 4

    .line 157
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 159
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/morpho/core/MorphoPanoramaGP;->nativeInitialize(JLcom/morpho/core/MorphoPanoramaGP$InitParam;[I)I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, -0x7ffffffe

    :goto_0
    return p1
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Rect;I[I)I
    .locals 10

    .line 528
    iget-wide v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->a:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    .line 530
    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p2, Landroid/graphics/Rect;->right:I

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-object v3, p1

    move v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/morpho/core/MorphoPanoramaGP;->nativeSaveOutputJpeg(JLjava/lang/String;IIIII[I)I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, -0x7ffffffe

    :goto_0
    return p1
.end method

.method public a(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I
    .locals 6

    .line 255
    iget-wide v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->a:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .line 257
    invoke-direct/range {v0 .. v5}, Lcom/morpho/core/MorphoPanoramaGP;->nativeAttachStillImageRaw(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, -0x7ffffffe

    :goto_0
    return p1
.end method

.method public a([BI[I[B[ILandroid/graphics/Bitmap;)I
    .locals 9

    .line 207
    iget-wide v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->a:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 209
    invoke-direct/range {v0 .. v8}, Lcom/morpho/core/MorphoPanoramaGP;->nativeAttachPreview(J[BI[I[B[ILandroid/graphics/Bitmap;)I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, -0x7ffffffe

    :goto_0
    return p1
.end method

.method public a([I)I
    .locals 4

    .line 425
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 427
    invoke-direct {p0, v0, v1, p1}, Lcom/morpho/core/MorphoPanoramaGP;->nativeGetCurrentDirection(J[I)I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, -0x7ffffffe

    :goto_0
    return p1
.end method

.method public b()I
    .locals 4

    .line 191
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 193
    invoke-direct {p0, v0, v1}, Lcom/morpho/core/MorphoPanoramaGP;->nativeStart(J)I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, -0x7ffffffe

    :goto_0
    return v0
.end method

.method public b(I)I
    .locals 4

    .line 473
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 475
    invoke-direct {p0, v0, v1, p1}, Lcom/morpho/core/MorphoPanoramaGP;->nativeSetUseSensorThreshold(JI)I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, -0x7ffffffe

    :goto_0
    return p1
.end method

.method public c()I
    .locals 4

    .line 287
    iget-wide v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 289
    invoke-direct {p0, v0, v1}, Lcom/morpho/core/MorphoPanoramaGP;->nativeEnd(J)I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, -0x7ffffffe

    :goto_0
    return v0
.end method
