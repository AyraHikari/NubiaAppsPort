.class public Lcn/nubia/videogenerator/slidemake/VideoMake;
.super Ljava/lang/Object;
.source "VideoMake.java"

# interfaces
.implements Lcn/nubia/videogenerator/codec/ImageRender$ImageRenderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/slidemake/VideoMake$BitmapDegree;,
        Lcn/nubia/videogenerator/slidemake/VideoMake$Model;
    }
.end annotation


# static fields
.field private static final MSG_INVALIDATE:I = 0x3

.field private static final MSG_LOAD_NEXT_BITMAP:I = 0x1

.field private static final MSG_SHOW_PENDING_BITMAP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VideoMakeLog"

.field public static mSpeedChoose:I = 0x1


# instance fields
.field private SLIDESHOW_DELAY:I

.field private mBitmapDegreeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/videogenerator/slidemake/VideoMake$BitmapDegree;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHaveRenderedimageCount:I

.field private mImageCounts:I

.field private mImageRender:Lcn/nubia/videogenerator/codec/ImageRender;

.field private mIsActive:Z

.field private mModel:Lcn/nubia/videogenerator/slidemake/VideoMake$Model;

.field private mPauseBitmap:Landroid/graphics/Bitmap;

.field private mPendingSlide:Landroid/graphics/Bitmap;

.field private mSlideShowFiltering:Lcn/nubia/videogenerator/slidemake/VideoSlideShowFiltering;

.field private mSurface:Landroid/view/Surface;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/nubia/videogenerator/codec/ImageRender;ILjava/util/ArrayList;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/videogenerator/codec/ImageRender;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/videogenerator/slidemake/VideoMake$BitmapDegree;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xfa0

    .line 29
    iput v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->SLIDESHOW_DELAY:I

    const/16 v0, 0x438

    .line 37
    iput v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mVideoWidth:I

    const/16 v0, 0x780

    .line 38
    iput v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mVideoHeight:I

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mPendingSlide:Landroid/graphics/Bitmap;

    .line 60
    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mPauseBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mIsActive:Z

    .line 68
    new-instance v0, Lcn/nubia/videogenerator/slidemake/VideoMake$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/videogenerator/slidemake/VideoMake$1;-><init>(Lcn/nubia/videogenerator/slidemake/VideoMake;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mHandler:Landroid/os/Handler;

    .line 87
    sput p2, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSpeedChoose:I

    .line 88
    iput-object p3, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mBitmapDegreeList:Ljava/util/ArrayList;

    .line 89
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->SLIDESHOW_DELAY:I

    div-int/2addr v0, p2

    iput v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->SLIDESHOW_DELAY:I

    .line 90
    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mImageRender:Lcn/nubia/videogenerator/codec/ImageRender;

    .line 91
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mImageCounts:I

    .line 92
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mImageRender:Lcn/nubia/videogenerator/codec/ImageRender;

    invoke-virtual {p1, p0}, Lcn/nubia/videogenerator/codec/ImageRender;->setImageRenderListener(Lcn/nubia/videogenerator/codec/ImageRender$ImageRenderListener;)V

    .line 93
    invoke-static {p4}, Lcn/nubia/videogenerator/slidemake/FilteringFactroy;->CreateFiltering(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/videogenerator/slidemake/VideoSlideShowFiltering;

    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSlideShowFiltering:Lcn/nubia/videogenerator/slidemake/VideoSlideShowFiltering;

    .line 95
    new-instance p1, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;

    invoke-direct {p1, p3, p5}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;-><init>(Ljava/util/ArrayList;I)V

    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mModel:Lcn/nubia/videogenerator/slidemake/VideoMake$Model;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/videogenerator/slidemake/VideoMake;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcn/nubia/videogenerator/slidemake/VideoMake;->showPendingBitmap()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/videogenerator/slidemake/VideoMake;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcn/nubia/videogenerator/slidemake/VideoMake;->loadNextBitmap()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/videogenerator/slidemake/VideoMake;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcn/nubia/videogenerator/slidemake/VideoMake;->invalidate()V

    return-void
.end method

.method static synthetic access$302(Lcn/nubia/videogenerator/slidemake/VideoMake;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 26
    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mPendingSlide:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$408(Lcn/nubia/videogenerator/slidemake/VideoMake;)I
    .locals 2

    .line 26
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mHaveRenderedimageCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mHaveRenderedimageCount:I

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/videogenerator/slidemake/VideoMake;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private drawVideo()V
    .locals 13

    const-string v0, "TIME444 = "

    const-string v1, "systemtime"

    .line 130
    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_8

    const/high16 v3, 0x41f00000    # 30.0f

    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 132
    :try_start_0
    invoke-virtual {v2, v5}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 133
    :try_start_1
    iget-object v8, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSlideShowFiltering:Lcn/nubia/videogenerator/slidemake/VideoSlideShowFiltering;

    invoke-interface {v8, v2}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowFiltering;->render(Landroid/graphics/Canvas;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 138
    :try_start_2
    iget-object v9, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSurface:Landroid/view/Surface;

    invoke-virtual {v9, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 139
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->time:J

    sub-long/2addr v9, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 143
    :goto_0
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mImageRender:Lcn/nubia/videogenerator/codec/ImageRender;

    invoke-virtual {v0, v6}, Lcn/nubia/videogenerator/codec/ImageRender;->notifyUpdated(Z)V

    if-eqz v8, :cond_0

    .line 146
    invoke-direct {p0}, Lcn/nubia/videogenerator/slidemake/VideoMake;->invalidate()V

    goto/16 :goto_15

    .line 147
    :cond_0
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mHaveRenderedimageCount:I

    iget v1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mImageCounts:I

    if-gt v0, v1, :cond_9

    .line 149
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->SLIDESHOW_DELAY:I

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSlideShowFiltering:Lcn/nubia/videogenerator/slidemake/VideoSlideShowFiltering;

    invoke-interface {v1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowFiltering;->getEffectDuration()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v4

    mul-float/2addr v0, v3

    float-to-int v0, v0

    move v1, v6

    :goto_1
    if-ge v1, v0, :cond_2

    .line 152
    :try_start_3
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v5}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v2

    .line 153
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSlideShowFiltering:Lcn/nubia/videogenerator/slidemake/VideoSlideShowFiltering;

    invoke-interface {v3, v2}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowFiltering;->render(Landroid/graphics/Canvas;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    :try_start_4
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 160
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v3

    .line 155
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 158
    :try_start_6
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1

    .line 163
    :goto_2
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mImageRender:Lcn/nubia/videogenerator/codec/ImageRender;

    iget v4, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mHaveRenderedimageCount:I

    iget v8, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mImageCounts:I

    if-ne v4, v8, :cond_1

    add-int/lit8 v4, v0, -0x1

    if-ne v1, v4, :cond_1

    move v4, v7

    goto :goto_3

    :cond_1
    move v4, v6

    :goto_3
    invoke-virtual {v3, v4}, Lcn/nubia/videogenerator/codec/ImageRender;->notifyUpdated(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 158
    :goto_4
    :try_start_7
    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    :catch_3
    move-exception v1

    .line 160
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 162
    :goto_5
    throw v0

    .line 165
    :cond_2
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mHaveRenderedimageCount:I

    iget v1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mImageCounts:I

    if-ge v0, v1, :cond_9

    .line 166
    :goto_6
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_15

    :catch_4
    move-exception v8

    goto :goto_7

    :catchall_1
    move-exception v8

    move-object v2, v5

    goto/16 :goto_e

    :catch_5
    move-exception v8

    move-object v2, v5

    .line 135
    :goto_7
    :try_start_8
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 138
    :try_start_9
    iget-object v8, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSurface:Landroid/view/Surface;

    invoke-virtual {v8, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 139
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->time:J

    sub-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 143
    :goto_8
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mImageRender:Lcn/nubia/videogenerator/codec/ImageRender;

    invoke-virtual {v0, v6}, Lcn/nubia/videogenerator/codec/ImageRender;->notifyUpdated(Z)V

    .line 147
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mHaveRenderedimageCount:I

    iget v1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mImageCounts:I

    if-gt v0, v1, :cond_9

    .line 149
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->SLIDESHOW_DELAY:I

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSlideShowFiltering:Lcn/nubia/videogenerator/slidemake/VideoSlideShowFiltering;

    invoke-interface {v1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowFiltering;->getEffectDuration()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v4

    mul-float/2addr v0, v3

    float-to-int v0, v0

    move v1, v6

    :goto_9
    if-ge v1, v0, :cond_4

    .line 152
    :try_start_a
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v5}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v2

    .line 153
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSlideShowFiltering:Lcn/nubia/videogenerator/slidemake/VideoSlideShowFiltering;

    invoke-interface {v3, v2}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowFiltering;->render(Landroid/graphics/Canvas;)Z
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 158
    :try_start_b
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_a

    :catch_7
    move-exception v3

    .line 160
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_c

    :catch_8
    move-exception v3

    .line 155
    :try_start_c
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 158
    :try_start_d
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_7

    .line 163
    :goto_a
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mImageRender:Lcn/nubia/videogenerator/codec/ImageRender;

    iget v4, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mHaveRenderedimageCount:I

    iget v8, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mImageCounts:I

    if-ne v4, v8, :cond_3

    add-int/lit8 v4, v0, -0x1

    if-ne v1, v4, :cond_3

    move v4, v7

    goto :goto_b

    :cond_3
    move v4, v6

    :goto_b
    invoke-virtual {v3, v4}, Lcn/nubia/videogenerator/codec/ImageRender;->notifyUpdated(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 158
    :goto_c
    :try_start_e
    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_d

    :catch_9
    move-exception v1

    .line 160
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 162
    :goto_d
    throw v0

    .line 165
    :cond_4
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mHaveRenderedimageCount:I

    iget v1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mImageCounts:I

    if-ge v0, v1, :cond_9

    goto/16 :goto_6

    :catchall_3
    move-exception v8

    .line 138
    :goto_e
    :try_start_f
    iget-object v9, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSurface:Landroid/view/Surface;

    invoke-virtual {v9, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 139
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->time:J

    sub-long/2addr v9, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_f

    :catch_a
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 143
    :goto_f
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mImageRender:Lcn/nubia/videogenerator/codec/ImageRender;

    invoke-virtual {v0, v6}, Lcn/nubia/videogenerator/codec/ImageRender;->notifyUpdated(Z)V

    .line 147
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mHaveRenderedimageCount:I

    iget v1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mImageCounts:I

    if-gt v0, v1, :cond_7

    .line 149
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->SLIDESHOW_DELAY:I

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSlideShowFiltering:Lcn/nubia/videogenerator/slidemake/VideoSlideShowFiltering;

    invoke-interface {v1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowFiltering;->getEffectDuration()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v4

    mul-float/2addr v0, v3

    float-to-int v0, v0

    move v1, v6

    :goto_10
    if-ge v1, v0, :cond_6

    .line 152
    :try_start_10
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v5}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v2

    .line 153
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSlideShowFiltering:Lcn/nubia/videogenerator/slidemake/VideoSlideShowFiltering;

    invoke-interface {v3, v2}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowFiltering;->render(Landroid/graphics/Canvas;)Z
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 158
    :try_start_11
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_b

    goto :goto_11

    :catch_b
    move-exception v3

    .line 160
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_11

    :catchall_4
    move-exception v0

    goto :goto_13

    :catch_c
    move-exception v3

    .line 155
    :try_start_12
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 158
    :try_start_13
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_b

    .line 163
    :goto_11
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mImageRender:Lcn/nubia/videogenerator/codec/ImageRender;

    iget v4, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mHaveRenderedimageCount:I

    iget v9, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mImageCounts:I

    if-ne v4, v9, :cond_5

    add-int/lit8 v4, v0, -0x1

    if-ne v1, v4, :cond_5

    move v4, v7

    goto :goto_12

    :cond_5
    move v4, v6

    :goto_12
    invoke-virtual {v3, v4}, Lcn/nubia/videogenerator/codec/ImageRender;->notifyUpdated(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 158
    :goto_13
    :try_start_14
    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_d

    goto :goto_14

    :catch_d
    move-exception v1

    .line 160
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 162
    :goto_14
    throw v0

    .line 165
    :cond_6
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mHaveRenderedimageCount:I

    iget v1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mImageCounts:I

    if-ge v0, v1, :cond_7

    .line 166
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 169
    :cond_7
    throw v8

    :cond_8
    const-string v0, "VideoMakeLog"

    const-string v1, "drawvideo ---mSurface == null return!!!"

    .line 171
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_15
    return-void
.end method

.method private invalidate()V
    .locals 2

    .line 176
    invoke-static {}, Lcn/nubia/videogenerator/slidemake/AnimationTime;->update()V

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->time:J

    .line 179
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/videogenerator/slidemake/VideoMake;->drawVideo()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private loadNextBitmap()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mModel:Lcn/nubia/videogenerator/slidemake/VideoMake$Model;

    new-instance v1, Lcn/nubia/videogenerator/slidemake/VideoMake$2;

    invoke-direct {v1, p0}, Lcn/nubia/videogenerator/slidemake/VideoMake$2;-><init>(Lcn/nubia/videogenerator/slidemake/VideoMake;)V

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/slidemake/VideoMake$Model;->nextSlide(Lcn/nubia/videogenerator/slidemake/FutureListener;)Lcn/nubia/videogenerator/slidemake/Future;

    return-void
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 196
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/DCIM/bitmap/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 201
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 205
    :cond_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 206
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 207
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 208
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 210
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private showPendingBitmap()V
    .locals 5

    .line 99
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mPendingSlide:Landroid/graphics/Bitmap;

    const-string v1, "VideoMakeLog"

    if-nez v0, :cond_0

    const-string v0, "*showPendingBitmap* mPendingSlide = null return!!!"

    .line 103
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 107
    :cond_0
    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSlideShowFiltering:Lcn/nubia/videogenerator/slidemake/VideoSlideShowFiltering;

    if-eqz v2, :cond_1

    .line 109
    iget v3, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mVideoWidth:I

    iget v4, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mVideoHeight:I

    invoke-interface {v2, v3, v4}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowFiltering;->setViewSize(II)V

    .line 110
    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSlideShowFiltering:Lcn/nubia/videogenerator/slidemake/VideoSlideShowFiltering;

    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mBitmapDegreeList:Ljava/util/ArrayList;

    iget v4, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mHaveRenderedimageCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/videogenerator/slidemake/VideoMake$BitmapDegree;

    iget v3, v3, Lcn/nubia/videogenerator/slidemake/VideoMake$BitmapDegree;->mDegree:I

    invoke-interface {v2, v0, v3}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowFiltering;->next(Landroid/graphics/Bitmap;I)V

    .line 112
    :cond_1
    invoke-direct {p0}, Lcn/nubia/videogenerator/slidemake/VideoMake;->invalidate()V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*showPendingBitmap* mHaveRenderedimageCount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mHaveRenderedimageCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";;mImageCounts = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mImageCounts:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onImageRender(Landroid/view/Surface;)V
    .locals 2

    const-string v0, "VideoMakeLog"

    const-string v1, "onImageRender "

    .line 188
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSurface:Landroid/view/Surface;

    .line 190
    invoke-direct {p0}, Lcn/nubia/videogenerator/slidemake/VideoMake;->loadNextBitmap()V

    return-void
.end method

.method public setVideoSize(II)V
    .locals 0

    .line 216
    iput p1, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mVideoWidth:I

    .line 217
    iput p2, p0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mVideoHeight:I

    return-void
.end method
