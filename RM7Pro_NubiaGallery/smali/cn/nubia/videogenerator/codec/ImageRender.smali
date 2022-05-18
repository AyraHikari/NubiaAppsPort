.class public Lcn/nubia/videogenerator/codec/ImageRender;
.super Ljava/lang/Object;
.source "ImageRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/codec/ImageRender$ImageRenderListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageRender"


# instance fields
.field private mFiller:Lcn/nubia/videogenerator/common/InputBufferFiller;

.field private mImageDegreeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImageRenderListener:Lcn/nubia/videogenerator/codec/ImageRender$ImageRenderListener;

.field private mInputSurface:Lcn/nubia/videogenerator/codec/CanvasInputSurface;

.field private mPts:J

.field private mStopMakeVideo:Z

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mImageList:Ljava/util/ArrayList;

    .line 24
    iput-object v0, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mImageDegreeList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mStopMakeVideo:Z

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mPts:J

    return-void
.end method

.method private closeSilently(Ljava/io/Closeable;)V
    .locals 0

    .line 271
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 273
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private computeSampleSizeLarger(F)I
    .locals 1

    float-to-int p1, p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x8

    if-gt p1, v0, :cond_1

    .line 265
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    goto :goto_0

    :cond_1
    div-int/2addr p1, v0

    mul-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method private getDegree(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    .line 206
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    .line 207
    invoke-virtual {v1, p1, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 210
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move p1, v0

    :goto_0
    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x10e

    goto :goto_1

    :cond_1
    const/16 v1, 0x5a

    goto :goto_1

    :cond_2
    const/16 v1, 0xb4

    :cond_3
    :goto_1
    return v1
.end method

.method private scaleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    .line 235
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 237
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 238
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 239
    invoke-static {p1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 240
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 241
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    int-to-float p2, p2

    div-float/2addr v3, p2

    int-to-float p2, v4

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 242
    invoke-static {v3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 p3, 0x0

    .line 244
    iput-boolean p3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 245
    invoke-direct {p0, p2}, Lcn/nubia/videogenerator/codec/ImageRender;->computeSampleSizeLarger(F)I

    move-result p2

    iput p2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 248
    invoke-static {p1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 255
    invoke-direct {p0, v1}, Lcn/nubia/videogenerator/codec/ImageRender;->closeSilently(Ljava/io/Closeable;)V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, v0

    .line 251
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    .line 255
    invoke-direct {p0, v1}, Lcn/nubia/videogenerator/codec/ImageRender;->closeSilently(Ljava/io/Closeable;)V

    :cond_0
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcn/nubia/videogenerator/codec/ImageRender;->closeSilently(Ljava/io/Closeable;)V

    .line 257
    :cond_1
    throw p1
.end method


# virtual methods
.method public addImage(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mImageList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mImageDegreeList:Ljava/util/ArrayList;

    return-void
.end method

.method public addImage(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mImageList:Ljava/util/ArrayList;

    .line 51
    iput-object p2, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mImageDegreeList:Ljava/util/ArrayList;

    return-void
.end method

.method public addVideoHeadOrTail(ZIII)V
    .locals 11

    .line 131
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0xf0

    goto :goto_0

    :cond_1
    const/16 v0, 0x3c

    :goto_0
    const/4 v1, 0x1

    if-eqz p4, :cond_3

    const/16 v2, 0xc8

    .line 138
    div-int/2addr v2, p4

    if-ge v2, v1, :cond_2

    move v2, v1

    .line 141
    :cond_2
    div-int/lit16 v3, p4, 0xc8

    if-ge v3, v1, :cond_4

    move v3, v1

    goto :goto_1

    :cond_3
    move v2, v1

    move v3, v2

    .line 145
    :cond_4
    :goto_1
    iget-object v4, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mImageList:Ljava/util/ArrayList;

    if-nez v4, :cond_6

    .line 146
    iget-object p1, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mInputSurface:Lcn/nubia/videogenerator/codec/CanvasInputSurface;

    if-eqz p1, :cond_5

    .line 147
    invoke-virtual {p1}, Lcn/nubia/videogenerator/codec/CanvasInputSurface;->release()V

    const/4 p1, 0x0

    .line 148
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mInputSurface:Lcn/nubia/videogenerator/codec/CanvasInputSurface;

    :cond_5
    return-void

    :cond_6
    const/4 v5, 0x0

    .line 152
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 153
    iget-object v6, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mInputSurface:Lcn/nubia/videogenerator/codec/CanvasInputSurface;

    invoke-virtual {v6}, Lcn/nubia/videogenerator/codec/CanvasInputSurface;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mInputSurface:Lcn/nubia/videogenerator/codec/CanvasInputSurface;

    .line 154
    invoke-virtual {v7}, Lcn/nubia/videogenerator/codec/CanvasInputSurface;->getHeight()I

    move-result v7

    .line 153
    invoke-direct {p0, v4, v6, v7}, Lcn/nubia/videogenerator/codec/ImageRender;->scaleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_7

    const-string p1, "ImageRender"

    const-string p2, "Create Bitmap failed!"

    .line 156
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 159
    :cond_7
    invoke-direct {p0, v4}, Lcn/nubia/videogenerator/codec/ImageRender;->getDegree(Ljava/lang/String;)I

    move-result v4

    move v7, v5

    :goto_2
    if-ge v7, p4, :cond_f

    .line 163
    iget-boolean v8, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mStopMakeVideo:Z

    if-eqz v8, :cond_8

    goto :goto_7

    :cond_8
    if-le p2, v4, :cond_9

    sub-int v8, p2, v4

    rsub-int v8, v8, 0x168

    add-int/2addr v8, p3

    .line 168
    :try_start_0
    rem-int/lit16 v8, v8, 0x168

    .line 169
    iget-object v9, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mInputSurface:Lcn/nubia/videogenerator/codec/CanvasInputSurface;

    invoke-virtual {v9, v6, v0, v8}, Lcn/nubia/videogenerator/codec/CanvasInputSurface;->drawBitmap(Landroid/graphics/Bitmap;II)V

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_6

    :cond_9
    if-ne p2, v4, :cond_a

    .line 171
    iget-object v8, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mInputSurface:Lcn/nubia/videogenerator/codec/CanvasInputSurface;

    invoke-virtual {v8, v6, v0, p3}, Lcn/nubia/videogenerator/codec/CanvasInputSurface;->drawBitmap(Landroid/graphics/Bitmap;II)V

    goto :goto_3

    :cond_a
    sub-int v8, v4, p2

    add-int/2addr v8, p3

    .line 173
    rem-int/lit16 v8, v8, 0x168

    .line 174
    iget-object v9, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mInputSurface:Lcn/nubia/videogenerator/codec/CanvasInputSurface;

    invoke-virtual {v9, v6, v0, v8}, Lcn/nubia/videogenerator/codec/CanvasInputSurface;->drawBitmap(Landroid/graphics/Bitmap;II)V

    :goto_3
    const/16 v8, 0x28

    const/16 v9, 0xff

    if-eq v3, v1, :cond_b

    if-le v3, v1, :cond_d

    .line 176
    rem-int v10, v7, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v10, :cond_d

    :cond_b
    if-eqz p1, :cond_c

    sub-int/2addr v0, v2

    if-gt v0, v8, :cond_d

    move v0, v8

    goto :goto_4

    :cond_c
    add-int/2addr v0, v2

    if-le v0, v9, :cond_d

    move v0, v9

    :cond_d
    :goto_4
    add-int/lit8 v7, v7, 0x1

    if-ne v7, p4, :cond_e

    if-eqz p1, :cond_e

    move v8, v1

    goto :goto_5

    :cond_e
    move v8, v5

    .line 195
    :goto_5
    invoke-virtual {p0, v8}, Lcn/nubia/videogenerator/codec/ImageRender;->notifyUpdated(Z)V

    goto :goto_2

    .line 190
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    :cond_f
    :goto_7
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 199
    iput-boolean v5, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mStopMakeVideo:Z

    .line 200
    invoke-virtual {p0}, Lcn/nubia/videogenerator/codec/ImageRender;->clearImage()V

    return-void
.end method

.method public clearImage()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mImageList:Ljava/util/ArrayList;

    .line 61
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mImageDegreeList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 63
    iput-object v0, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mImageDegreeList:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public createInputSurface(Landroid/view/Surface;II)V
    .locals 1

    .line 68
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mSurface:Landroid/view/Surface;

    .line 69
    new-instance v0, Lcn/nubia/videogenerator/codec/CanvasInputSurface;

    invoke-direct {v0, p1, p2, p3}, Lcn/nubia/videogenerator/codec/CanvasInputSurface;-><init>(Landroid/view/Surface;II)V

    iput-object v0, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mInputSurface:Lcn/nubia/videogenerator/codec/CanvasInputSurface;

    return-void
.end method

.method public getFirtsPts()J
    .locals 2

    .line 286
    iget-wide v0, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mPts:J

    return-wide v0
.end method

.method public getImage()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public notifyUpdated(Z)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mFiller:Lcn/nubia/videogenerator/common/InputBufferFiller;

    if-eqz v0, :cond_0

    .line 295
    invoke-interface {v0, p1}, Lcn/nubia/videogenerator/common/InputBufferFiller;->fillInputBuffer(Z)V

    :cond_0
    return-void
.end method

.method public notifyUpdatedAsync(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 0

    .line 301
    iget-object p3, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mFiller:Lcn/nubia/videogenerator/common/InputBufferFiller;

    if-eqz p3, :cond_0

    .line 302
    invoke-interface {p3, p1, p2}, Lcn/nubia/videogenerator/common/InputBufferFiller;->fillInputBufferAsync(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_0
    return-void
.end method

.method public setFiller(Lcn/nubia/videogenerator/common/InputBufferFiller;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mFiller:Lcn/nubia/videogenerator/common/InputBufferFiller;

    return-void
.end method

.method public setFirstPts(J)V
    .locals 0

    .line 282
    iput-wide p1, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mPts:J

    return-void
.end method

.method public setImageRenderListener(Lcn/nubia/videogenerator/codec/ImageRender$ImageRenderListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mImageRenderListener:Lcn/nubia/videogenerator/codec/ImageRender$ImageRenderListener;

    return-void
.end method

.method public startRender()V
    .locals 7

    .line 73
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mImageRenderListener:Lcn/nubia/videogenerator/codec/ImageRender$ImageRenderListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 74
    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/codec/ImageRender$ImageRenderListener;->onImageRender(Landroid/view/Surface;)V

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mImageList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 80
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mInputSurface:Lcn/nubia/videogenerator/codec/CanvasInputSurface;

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/CanvasInputSurface;->release()V

    .line 82
    iput-object v1, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mInputSurface:Lcn/nubia/videogenerator/codec/CanvasInputSurface;

    :cond_1
    return-void

    .line 86
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_8

    .line 88
    iget-boolean v4, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mStopMakeVideo:Z

    if-eqz v4, :cond_3

    goto :goto_4

    .line 92
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 93
    iget-object v5, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mInputSurface:Lcn/nubia/videogenerator/codec/CanvasInputSurface;

    invoke-virtual {v5}, Lcn/nubia/videogenerator/codec/CanvasInputSurface;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mInputSurface:Lcn/nubia/videogenerator/codec/CanvasInputSurface;

    .line 94
    invoke-virtual {v6}, Lcn/nubia/videogenerator/codec/CanvasInputSurface;->getHeight()I

    move-result v6

    .line 93
    invoke-direct {p0, v4, v5, v6}, Lcn/nubia/videogenerator/codec/ImageRender;->scaleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v4, "ImageRender"

    const-string v5, "Create Bitmap failed!"

    .line 96
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 100
    :cond_4
    iget-object v6, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mImageDegreeList:Ljava/util/ArrayList;

    if-nez v6, :cond_5

    .line 101
    invoke-direct {p0, v4}, Lcn/nubia/videogenerator/codec/ImageRender;->getDegree(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    .line 103
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 104
    iget-object v4, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mImageDegreeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    .line 106
    :cond_6
    invoke-direct {p0, v4}, Lcn/nubia/videogenerator/codec/ImageRender;->getDegree(Ljava/lang/String;)I

    move-result v4

    .line 109
    :goto_1
    iget-object v6, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mInputSurface:Lcn/nubia/videogenerator/codec/CanvasInputSurface;

    invoke-virtual {v6, v5, v4}, Lcn/nubia/videogenerator/codec/CanvasInputSurface;->drawBitmap(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_7

    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    move v4, v2

    .line 115
    :goto_2
    invoke-virtual {p0, v4}, Lcn/nubia/videogenerator/codec/ImageRender;->notifyUpdated(Z)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    :cond_8
    :goto_4
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mInputSurface:Lcn/nubia/videogenerator/codec/CanvasInputSurface;

    if-eqz v0, :cond_9

    .line 118
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/CanvasInputSurface;->release()V

    .line 119
    iput-object v1, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mInputSurface:Lcn/nubia/videogenerator/codec/CanvasInputSurface;

    .line 121
    :cond_9
    iput-boolean v2, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mStopMakeVideo:Z

    .line 122
    invoke-virtual {p0}, Lcn/nubia/videogenerator/codec/ImageRender;->clearImage()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Lcn/nubia/videogenerator/codec/ImageRender;->mStopMakeVideo:Z

    return-void
.end method
