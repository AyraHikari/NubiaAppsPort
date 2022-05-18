.class public Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;

.field private c:Lcn/nubia/algorithm/camera/b;


# direct methods
.method public constructor <init>(Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;Lcn/nubia/algorithm/camera/b;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->b:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;

    .line 34
    iput-object p2, p0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->c:Lcn/nubia/algorithm/camera/b;

    .line 36
    iget-object p2, p0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->a:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    .line 37
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p2, 0x0

    .line 38
    iput-object p2, p0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->a:Landroid/graphics/Bitmap;

    .line 41
    :cond_0
    iget p2, p1, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->f:I

    iget p1, p1, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->d:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method private a(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 125
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 126
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 127
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 128
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 129
    div-int/lit8 p1, v3, 0x2

    int-to-float p1, p1

    div-int/lit8 v0, v4, 0x2

    int-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v5, v1, p1, v0}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    .line 130
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, p2, :cond_0

    .line 133
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public onFinalYUVDataReceived([BII)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->c:Lcn/nubia/algorithm/camera/b;

    invoke-interface {v0, p1, p2, p3}, Lcn/nubia/algorithm/camera/b;->a([BII)V

    return-void
.end method

.method public onThumbnailDataReceived(Ljava/nio/ByteBuffer;IIIILandroid/graphics/Point;II)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p2

    move/from16 v2, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    .line 60
    iget-object v6, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->a:Landroid/graphics/Bitmap;

    const-string v7, "PanoramaCallbackForJNI"

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v6, 0x7011

    move/from16 v8, p7

    if-eq v8, v6, :cond_6

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 72
    :cond_1
    new-instance v6, Lcn/nubia/algorithm/utils/a;

    invoke-direct {v6, p1}, Lcn/nubia/algorithm/utils/a;-><init>(Ljava/nio/ByteBuffer;)V

    .line 73
    invoke-static {v6, v2, v4}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Lcn/nubia/algorithm/utils/a;II)Lcn/nubia/algorithm/utils/a;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcn/nubia/algorithm/utils/a;->c()[I

    move-result-object v9

    .line 75
    invoke-virtual {v1}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 76
    invoke-virtual {v6}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 78
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v2, v4, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 80
    iget-object v2, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->b:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;

    iget v2, v2, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->g:I

    and-int/lit16 v2, v2, 0xff

    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    const/16 v2, 0x5a

    .line 81
    invoke-direct {p0, v2, v1}, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->a(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 84
    :cond_2
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v6, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->a:Landroid/graphics/Bitmap;

    invoke-direct {v2, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 85
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v6, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-ne v3, v6, :cond_3

    .line 88
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-direct {v6, v9, v9, v7, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_3
    if-ne v3, v10, :cond_4

    .line 90
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int/2addr v7, v9

    iget-object v9, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int/2addr v9, v12

    iget-object v12, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    iget-object v13, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v6, v7, v9, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 92
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "direction not support: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v11

    .line 94
    :goto_0
    invoke-virtual {v2, v1, v11, v6, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 96
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 99
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 101
    iget-object v1, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->b:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;

    iget v1, v1, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->g:I

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v4, :cond_5

    .line 102
    iget v1, v5, Landroid/graphics/Point;->y:I

    iget-object v2, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->b:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;

    iget v2, v2, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->d:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->b:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;

    iget v2, v2, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->b:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;

    iget v2, v2, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->f:I

    add-int/2addr v1, v2

    iget-object v2, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->b:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;

    iget v2, v2, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->f:I

    rem-int/2addr v1, v2

    iput v1, v6, Landroid/graphics/Point;->x:I

    .line 103
    iget v1, v5, Landroid/graphics/Point;->x:I

    iget-object v2, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->b:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;

    iget v2, v2, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->d:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->b:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;

    iget v2, v2, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->b:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;

    iget v2, v2, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->d:I

    div-int/2addr v2, v10

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v6, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 105
    :cond_5
    iget v1, v5, Landroid/graphics/Point;->x:I

    iget-object v2, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->b:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;

    iget v2, v2, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->d:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->b:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;

    iget v2, v2, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->b:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;

    iget v2, v2, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->f:I

    add-int/2addr v1, v2

    iget-object v2, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->b:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;

    iget v2, v2, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->f:I

    rem-int/2addr v1, v2

    iput v1, v6, Landroid/graphics/Point;->x:I

    .line 106
    iget v1, v5, Landroid/graphics/Point;->y:I

    iget-object v2, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->b:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;

    iget v2, v2, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->d:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->b:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;

    iget v2, v2, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->b:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;

    iget v2, v2, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->d:I

    div-int/2addr v2, v10

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v6, Landroid/graphics/Point;->y:I

    .line 111
    :goto_1
    iget-object v1, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->c:Lcn/nubia/algorithm/camera/b;

    iget-object v2, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->a:Landroid/graphics/Bitmap;

    move/from16 v3, p2

    move/from16 v4, p3

    move-object v5, v6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-interface/range {v1 .. v7}, Lcn/nubia/algorithm/camera/b;->a(Landroid/graphics/Bitmap;IILandroid/graphics/Point;II)V

    return-void

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 66
    new-instance v2, Lcn/nubia/algorithm/utils/a;

    invoke-direct {v2, p1}, Lcn/nubia/algorithm/utils/a;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v2}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 68
    :cond_7
    iget-object v1, v0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->c:Lcn/nubia/algorithm/camera/b;

    const/4 v2, 0x0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-interface/range {v1 .. v7}, Lcn/nubia/algorithm/camera/b;->a(Landroid/graphics/Bitmap;IILandroid/graphics/Point;II)V

    return-void

    :cond_8
    :goto_3
    const-string v1, "onThumbnailDataReceived, previewBitmap is recycle or null!!!"

    .line 61
    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public release()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->a:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
