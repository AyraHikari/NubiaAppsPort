.class public Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;
.super Ljava/lang/Object;
.source "VideoSlideShowDataAdapter.java"

# interfaces
.implements Lcn/nubia/videogenerator/slidemake/VideoMake$Model;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoSlideShowAdapterData"


# instance fields
.field private mImageQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/videogenerator/slidemake/VideoMake$BitmapDegree;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActive:Z

.field private mLoadIndex:I

.field private mReloadTask:Lcn/nubia/videogenerator/slidemake/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/videogenerator/slidemake/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetSize:I

.field private final mThreadPool:Lcn/nubia/videogenerator/slidemake/ThreadPool;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/videogenerator/slidemake/VideoMake$BitmapDegree;",
            ">;I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->mLoadIndex:I

    .line 22
    iput-boolean v0, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->mIsActive:Z

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->mImageQueue:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Lcn/nubia/videogenerator/slidemake/ThreadPool;

    invoke-direct {v0}, Lcn/nubia/videogenerator/slidemake/ThreadPool;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->mThreadPool:Lcn/nubia/videogenerator/slidemake/ThreadPool;

    .line 30
    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->mImageQueue:Ljava/util/ArrayList;

    .line 31
    iput p2, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->mTargetSize:I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;)Landroid/graphics/Bitmap;
    .locals 0

    .line 17
    invoke-direct {p0}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->innerNextBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private computeSampleSizeLarger(F)I
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    float-to-double v0, v0

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p1, v0

    float-to-int p1, p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x8

    if-gt p1, v0, :cond_1

    .line 60
    invoke-direct {p0, p1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->prevPowerOf2(I)I

    move-result p1

    goto :goto_0

    :cond_1
    div-int/2addr p1, v0

    mul-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method private declared-synchronized innerNextBitmap()Landroid/graphics/Bitmap;
    .locals 6

    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->mImageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 37
    :cond_0
    :try_start_1
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->mLoadIndex:I

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->mImageQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 38
    iput v2, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->mLoadIndex:I

    .line 40
    :cond_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 41
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 42
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->mImageQueue:Ljava/util/ArrayList;

    iget v4, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->mLoadIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/videogenerator/slidemake/VideoMake$BitmapDegree;

    iget-object v3, v3, Lcn/nubia/videogenerator/slidemake/VideoMake$BitmapDegree;->mPath:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 43
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 44
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 45
    iget v5, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->mTargetSize:I

    int-to-float v5, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v5, v3

    .line 46
    invoke-direct {p0, v5}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->computeSampleSizeLarger(F)I

    move-result v3

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 47
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 48
    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->mImageQueue:Ljava/util/ArrayList;

    iget v3, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->mLoadIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/videogenerator/slidemake/VideoMake$BitmapDegree;

    iget-object v2, v2, Lcn/nubia/videogenerator/slidemake/VideoMake$BitmapDegree;->mPath:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "LYF"

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "videoslideshowdataadapter  inSampleSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->mLoadIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->mLoadIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private prevPowerOf2(I)I
    .locals 0

    if-lez p1, :cond_0

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    return p1

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public nextSlide(Lcn/nubia/videogenerator/slidemake/FutureListener;)Lcn/nubia/videogenerator/slidemake/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/videogenerator/slidemake/FutureListener<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcn/nubia/videogenerator/slidemake/Future<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->mThreadPool:Lcn/nubia/videogenerator/slidemake/ThreadPool;

    new-instance v1, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter$1;

    invoke-direct {v1, p0}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter$1;-><init>(Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;)V

    invoke-virtual {v0, v1, p1}, Lcn/nubia/videogenerator/slidemake/ThreadPool;->submit(Lcn/nubia/videogenerator/slidemake/ThreadPool$Job;Lcn/nubia/videogenerator/slidemake/FutureListener;)Lcn/nubia/videogenerator/slidemake/Future;

    move-result-object p1

    return-object p1
.end method

.method public pause()V
    .locals 1

    .line 76
    monitor-enter p0

    const/4 v0, 0x0

    .line 77
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->mIsActive:Z

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 79
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->mReloadTask:Lcn/nubia/videogenerator/slidemake/Future;

    invoke-interface {v0}, Lcn/nubia/videogenerator/slidemake/Future;->cancel()V

    .line 81
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->mReloadTask:Lcn/nubia/videogenerator/slidemake/Future;

    invoke-interface {v0}, Lcn/nubia/videogenerator/slidemake/Future;->waitDone()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->mReloadTask:Lcn/nubia/videogenerator/slidemake/Future;

    return-void

    :catchall_0
    move-exception v0

    .line 79
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowDataAdapter;->mIsActive:Z

    return-void
.end method
