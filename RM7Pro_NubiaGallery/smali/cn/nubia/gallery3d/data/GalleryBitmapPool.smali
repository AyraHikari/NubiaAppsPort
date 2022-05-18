.class public Lcn/nubia/gallery3d/data/GalleryBitmapPool;
.super Ljava/lang/Object;
.source "GalleryBitmapPool.java"


# static fields
.field private static final CAPACITY_BYTES:I = 0x1400000

.field private static final COMMON_PHOTO_ASPECT_RATIOS:[Landroid/graphics/Point;

.field private static final POOL_INDEX_MISC:I = 0x2

.field private static final POOL_INDEX_NONE:I = -0x1

.field private static final POOL_INDEX_PHOTO:I = 0x1

.field private static final POOL_INDEX_SQUARE:I

.field private static sInstance:Lcn/nubia/gallery3d/data/GalleryBitmapPool;


# instance fields
.field private mCapacityBytes:I

.field private mPools:[Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;

.field private mSharedNodePool:Lcn/nubia/gallery3d/data/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/data/Pools$Pool<",
            "Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/Point;

    .line 50
    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    const/4 v0, 0x1

    aput-object v2, v1, v0

    new-instance v0, Landroid/graphics/Point;

    const/16 v2, 0x10

    const/16 v4, 0x9

    invoke-direct {v0, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v0, v1, v3

    sput-object v1, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->COMMON_PHOTO_ASPECT_RATIOS:[Landroid/graphics/Point;

    .line 65
    new-instance v0, Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    const/high16 v1, 0x1400000

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;-><init>(I)V

    sput-object v0, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->sInstance:Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcn/nubia/gallery3d/data/Pools$SynchronizedPool;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/data/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->mSharedNodePool:Lcn/nubia/gallery3d/data/Pools$Pool;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;

    .line 58
    iput-object v0, p0, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->mPools:[Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;

    .line 59
    new-instance v1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;

    div-int/lit8 v2, p1, 0x3

    iget-object v3, p0, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->mSharedNodePool:Lcn/nubia/gallery3d/data/Pools$Pool;

    invoke-direct {v1, v2, v3}, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;-><init>(ILcn/nubia/gallery3d/data/Pools$Pool;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 60
    iget-object v0, p0, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->mPools:[Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;

    new-instance v1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->mSharedNodePool:Lcn/nubia/gallery3d/data/Pools$Pool;

    invoke-direct {v1, v2, v3}, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;-><init>(ILcn/nubia/gallery3d/data/Pools$Pool;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 61
    iget-object v0, p0, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->mPools:[Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;

    new-instance v1, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;

    iget-object v3, p0, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->mSharedNodePool:Lcn/nubia/gallery3d/data/Pools$Pool;

    invoke-direct {v1, v2, v3}, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;-><init>(ILcn/nubia/gallery3d/data/Pools$Pool;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 62
    iput p1, p0, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->mCapacityBytes:I

    return-void
.end method

.method public static getInstance()Lcn/nubia/gallery3d/data/GalleryBitmapPool;
    .locals 1

    .line 68
    sget-object v0, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->sInstance:Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    return-object v0
.end method

.method private getPoolForDimensions(II)Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getPoolIndexForDimensions(II)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 76
    :cond_0
    iget-object p2, p0, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->mPools:[Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;

    aget-object p1, p2, p1

    return-object p1
.end method

.method private getPoolIndexForDimensions(II)I
    .locals 6

    if-lez p1, :cond_5

    if-gtz p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    return v0

    :cond_1
    if-le p1, p2, :cond_2

    move v5, p2

    move p2, p1

    move p1, v5

    .line 95
    :cond_2
    sget-object v1, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->COMMON_PHOTO_ASPECT_RATIOS:[Landroid/graphics/Point;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 96
    iget v4, v3, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, p1

    iget v3, v3, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, p2

    if-ne v4, v3, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    return p1

    :cond_5
    :goto_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 157
    iget-object v0, p0, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->mPools:[Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 158
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(II)Landroid/graphics/Bitmap;
    .locals 1

    .line 128
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getPoolForDimensions(II)Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 132
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getCapacity()I
    .locals 1

    monitor-enter p0

    .line 107
    :try_start_0
    iget v0, p0, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->mCapacityBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSize()I
    .locals 5

    .line 118
    iget-object v0, p0, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->mPools:[Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 119
    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->getSize()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public put(Landroid/graphics/Bitmap;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getPoolForDimensions(II)Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;

    move-result-object v1

    if-nez v1, :cond_1

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return v0

    .line 149
    :cond_1
    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method
