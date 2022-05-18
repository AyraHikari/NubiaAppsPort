.class public Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;
.super Ljava/lang/Object;
.source "AlbumSetSlidingWindow.java"

# interfaces
.implements Lcn/nubia/gallery3d/app/AlbumSetDataLoader$DataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;,
        Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;,
        Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$EntryUpdater;,
        Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;,
        Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$Listener;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_ALBUM_ENTRY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlbumSetSlidingWindow"


# instance fields
.field private mActiveEnd:I

.field private mActiveRequestCount:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mData:[Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

.field private final mHandler:Lcn/nubia/gallery3d/ui/SynchronizedHandler;

.field private mIsActive:Z

.field private final mLabelMaker:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

.field private mListener:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$Listener;

.field private mLoadingLabel:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

.field private final mLoadingText:Ljava/lang/String;

.field private mSize:I

.field private mSlotWidth:I

.field private final mSource:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

.field private final mTextureUploader:Lcn/nubia/gallery3d/glrenderer/TextureUploader;

.field private final mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/app/AlbumSetDataLoader;Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;I)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .line 54
    iput v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .line 56
    iput v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .line 57
    iput v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .line 68
    iput v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 69
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 98
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    .line 99
    new-array p4, p4, [Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iput-object p4, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    .line 100
    invoke-virtual {p2}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result p2

    iput p2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    .line 101
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;

    .line 102
    new-instance p2, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGalleryApp()Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object p4

    invoke-interface {p4}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4, p3}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;-><init>(Landroid/content/Context;Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    .line 103
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f100135

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingText:Ljava/lang/String;

    .line 104
    new-instance p2, Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object p3

    invoke-direct {p2, p3}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    .line 106
    new-instance p2, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$1;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$1;-><init>(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mHandler:Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)Lcn/nubia/gallery3d/util/ThreadPool;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)Lcn/nubia/gallery3d/ui/SynchronizedHandler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mHandler:Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)[Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)Lcn/nubia/gallery3d/glrenderer/TextureUploader;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)I
    .locals 0

    .line 41
    iget p0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    return p0
.end method

.method static synthetic access$606(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)I
    .locals 1

    .line 41
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$Listener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;)Lcn/nubia/gallery3d/ui/AlbumLabelMaker;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    return-object p0
.end method

.method private cancelImagesInSlot(I)V
    .locals 2

    .line 217
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    if-eqz p1, :cond_1

    .line 219
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/BitmapLoader;->cancelLoad()V

    :cond_1
    if-eqz p1, :cond_2

    .line 220
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/BitmapLoader;->cancelLoad()V

    :cond_2
    :goto_0
    return-void
.end method

.method private cancelNonactiveImages()V
    .locals 3

    .line 201
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 204
    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->cancelImagesInSlot(I)V

    .line 205
    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->cancelImagesInSlot(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private freeSlotContent(I)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v0

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    .line 231
    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/BitmapLoader;->recycle()V

    .line 232
    :cond_0
    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/BitmapLoader;->recycle()V

    .line 233
    :cond_1
    iget-object v1, v0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->recycle()V

    .line 234
    :cond_2
    iget-object v1, v0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->recycle()V

    .line 235
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v0

    rem-int/2addr p1, v1

    const/4 v1, 0x0

    aput-object v1, v0, p1

    return-void
.end method

.method private static getDataVersion(Lcn/nubia/gallery3d/data/MediaObject;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaObject;->getDataVersion()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private static identifyCacheFlag(Lcn/nubia/gallery3d/data/MediaSet;)I
    .locals 4

    if-eqz p0, :cond_1

    .line 472
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getSupportedOperations()J

    move-result-wide v0

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getCacheFlag()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static identifyCacheStatus(Lcn/nubia/gallery3d/data/MediaSet;)I
    .locals 4

    if-eqz p0, :cond_1

    .line 481
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getSupportedOperations()J

    move-result-wide v0

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 486
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getCacheStatus()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isLabelChanged(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Ljava/lang/String;II)Z
    .locals 1

    .line 240
    iget-object v0, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    invoke-static {v0, p2}, Lcn/nubia/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    if-ne p2, p3, :cond_1

    iget p1, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    if-eq p1, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private prepareSlotContent(I)V
    .locals 3

    .line 292
    new-instance v0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    invoke-direct {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;-><init>()V

    .line 293
    invoke-direct {p0, v0, p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->updateAlbumSetEntry(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V

    .line 294
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v1

    rem-int/2addr p1, v2

    aput-object v0, v1, p1

    return-void
.end method

.method private requestImagesInSlot(I)V
    .locals 2

    .line 210
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    if-eqz p1, :cond_1

    .line 212
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/BitmapLoader;->startLoad()V

    :cond_1
    if-eqz p1, :cond_2

    .line 213
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/BitmapLoader;->startLoad()V

    :cond_2
    :goto_0
    return-void
.end method

.method private requestNonactiveImages()V
    .locals 3

    .line 192
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 195
    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->requestImagesInSlot(I)V

    .line 196
    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->requestImagesInSlot(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setContentWindow(II)V
    .locals 2

    .line 136
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-ne p1, v0, :cond_0

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-ne p2, v1, :cond_0

    return-void

    .line 138
    :cond_0
    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-ge p1, v1, :cond_5

    if-lt v0, p2, :cond_1

    goto :goto_4

    :cond_1
    :goto_0
    if-ge v0, p1, :cond_2

    .line 148
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_2
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    move v1, p2

    :goto_1
    if-ge v1, v0, :cond_3

    .line 151
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 153
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->setActiveWindow(II)V

    .line 154
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    move v1, p1

    :goto_2
    if-ge v1, v0, :cond_4

    .line 155
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 157
    :cond_4
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_3
    if-ge v0, p2, :cond_7

    .line 158
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-ge v0, v1, :cond_6

    .line 140
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 142
    :cond_6
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->setActiveWindow(II)V

    move v0, p1

    :goto_5
    if-ge v0, p2, :cond_7

    .line 144
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 162
    :cond_7
    iput p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .line 163
    iput p2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    return-void
.end method

.method private static startLoadBitmap(Lcn/nubia/gallery3d/ui/BitmapLoader;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/BitmapLoader;->startLoad()V

    .line 300
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/BitmapLoader;->isRequestInProgress()Z

    move-result p0

    return p0
.end method

.method private updateAlbumSetEntry(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V
    .locals 11

    .line 246
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, p2}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1, p2}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->getCoverItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v1

    .line 248
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v2, p2}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->getTotalCount(I)I

    move-result v7

    .line 249
    iput-object v0, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    .line 250
    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->getDataVersion(Lcn/nubia/gallery3d/data/MediaObject;)J

    move-result-wide v2

    iput-wide v2, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setDataVersion:J

    .line 251
    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->identifyCacheFlag(Lcn/nubia/gallery3d/data/MediaSet;)I

    move-result v2

    iput v2, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->cacheFlag:I

    .line 252
    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->identifyCacheStatus(Lcn/nubia/gallery3d/data/MediaSet;)I

    move-result v2

    iput v2, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->cacheStatus:I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v2

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v3

    :goto_0
    iput-object v3, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcn/nubia/gallery3d/data/Path;

    if-nez v0, :cond_1

    const-string v3, ""

    goto :goto_1

    .line 255
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v6, v3

    .line 256
    invoke-static {v0}, Lcn/nubia/gallery3d/data/DataSourceType;->identifySourceType(Lcn/nubia/gallery3d/data/MediaSet;)I

    move-result v8

    .line 257
    invoke-direct {p0, p1, v6, v7, v8}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->isLabelChanged(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Ljava/lang/String;II)Z

    move-result v3

    const/4 v9, 0x0

    if-eqz v3, :cond_4

    .line 258
    iput-object v6, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    .line 259
    iput v7, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    .line 260
    iput v8, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    .line 261
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 262
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/gallery3d/ui/BitmapLoader;->recycle()V

    .line 263
    invoke-static {p1, v2}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcn/nubia/gallery3d/ui/BitmapLoader;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    .line 264
    iput-object v2, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    :cond_2
    if-eqz v0, :cond_3

    .line 266
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v3

    sget v4, Lcn/nubia/gallery3d/util/MediaSetUtils;->NEWFOLDER_BUCKET_ID:I

    if-eq v3, v4, :cond_3

    .line 267
    new-instance v10, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;

    move-object v3, v10

    move-object v4, p0

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;-><init>(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;ILjava/lang/String;II)V

    invoke-static {p1, v10}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcn/nubia/gallery3d/ui/BitmapLoader;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    :cond_3
    if-eqz v0, :cond_4

    .line 269
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-nez v0, :cond_4

    .line 270
    iput-boolean v9, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isLabelRequired:Z

    .line 274
    :cond_4
    iput-object v1, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Lcn/nubia/gallery3d/data/MediaItem;

    .line 275
    invoke-static {v1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->getDataVersion(Lcn/nubia/gallery3d/data/MediaObject;)J

    move-result-wide v3

    iget-wide v5, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverDataVersion:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_8

    .line 276
    invoke-static {v1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->getDataVersion(Lcn/nubia/gallery3d/data/MediaObject;)J

    move-result-wide v3

    iput-wide v3, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverDataVersion:J

    .line 277
    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPano(Lcn/nubia/gallery3d/data/MediaItem;)Z

    move-result v0

    iput-boolean v0, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isPanorama:Z

    if-nez v1, :cond_5

    move v0, v9

    goto :goto_2

    .line 278
    :cond_5
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getRotation()I

    move-result v0

    :goto_2
    iput v0, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->rotation:I

    if-nez v1, :cond_6

    goto :goto_3

    .line 279
    :cond_6
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v9

    :goto_3
    iput v9, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->mediaType:I

    .line 280
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 281
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/BitmapLoader;->recycle()V

    .line 282
    invoke-static {p1, v2}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$002(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcn/nubia/gallery3d/ui/BitmapLoader;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    .line 283
    iput-object v2, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    :cond_7
    if-eqz v1, :cond_8

    .line 286
    new-instance v0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-direct {v0, p0, p2, v1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;-><init>(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;ILcn/nubia/gallery3d/data/MediaItem;)V

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$002(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcn/nubia/gallery3d/ui/BitmapLoader;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    :cond_8
    return-void
.end method

.method private updateAllImageRequests()V
    .locals 4

    const/4 v0, 0x0

    .line 339
    iput v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 340
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    :goto_0
    if-ge v0, v1, :cond_2

    .line 341
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v3, v2

    rem-int v3, v0, v3

    aget-object v2, v2, v3

    .line 342
    invoke-static {v2}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->startLoadBitmap(Lcn/nubia/gallery3d/ui/BitmapLoader;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 343
    :cond_0
    invoke-static {v2}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->startLoadBitmap(Lcn/nubia/gallery3d/ui/BitmapLoader;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :cond_2
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    if-nez v0, :cond_3

    .line 346
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V

    goto :goto_1

    .line 348
    :cond_3
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->cancelNonactiveImages()V

    :goto_1
    return-void
.end method

.method private updateTextureUploadQueue()V
    .locals 5

    .line 315
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;->clear()V

    .line 319
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    :goto_0
    if-ge v0, v1, :cond_3

    .line 320
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v3, v2

    rem-int v3, v0, v3

    aget-object v2, v2, v3

    .line 321
    iget-object v3, v2, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz v3, :cond_1

    .line 322
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    iget-object v4, v2, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v3, v4}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;->addFgTexture(Lcn/nubia/gallery3d/glrenderer/UploadedTexture;)V

    .line 324
    :cond_1
    iget-object v3, v2, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz v3, :cond_2

    .line 325
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    iget-object v2, v2, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v3, v2}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;->addFgTexture(Lcn/nubia/gallery3d/glrenderer/UploadedTexture;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_3
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 333
    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->uploadBackgroundTextureInSlot(I)V

    .line 334
    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->uploadBackgroundTextureInSlot(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private uploadBackgroundTextureInSlot(I)V
    .locals 2

    .line 304
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    .line 306
    iget-object v0, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    iget-object v1, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;->addBgTexture(Lcn/nubia/gallery3d/glrenderer/UploadedTexture;)V

    .line 309
    :cond_1
    iget-object v0, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    iget-object p1, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;->addBgTexture(Lcn/nubia/gallery3d/glrenderer/UploadedTexture;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public get(I)Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .locals 3

    .line 120
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "invalid slot: %s outsides (%s, %s)"

    .line 121
    invoke-static {v1, v0}, Lcn/nubia/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 3

    .line 570
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 572
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v0

    rem-int/2addr p1, v2

    aget-object p1, v0, p1

    .line 573
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 574
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/BitmapLoader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public isActiveSlot(I)Z
    .locals 1

    .line 132
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onContentChanged(I)V
    .locals 2

    .line 364
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 370
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_3

    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 377
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v0

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    .line 378
    invoke-direct {p0, v0, p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->updateAlbumSetEntry(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V

    .line 379
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 380
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->updateTextureUploadQueue()V

    .line 381
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 382
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$Listener;->onContentChanged()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 373
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const/4 p1, 0x2

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "invalid update: %s is outside (%s, %s)"

    .line 371
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlbumSetSlidingWindow"

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSizeChanged(I)V
    .locals 1

    .line 354
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-eq v0, p1, :cond_2

    .line 355
    iput p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    .line 356
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$Listener;->onSizeChanged(I)V

    .line 357
    :cond_0
    iget p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-le p1, v0, :cond_1

    iput v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .line 358
    :cond_1
    iget p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    if-le p1, v0, :cond_2

    iput v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    :cond_2
    return-void
.end method

.method public onSlotSizeChanged(II)V
    .locals 9

    .line 537
    iget p2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    if-ne p2, p1, :cond_0

    return-void

    .line 539
    :cond_0
    iput p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    const/4 p2, 0x0

    .line 540
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 541
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->setLabelWidth(I)V

    .line 543
    iget-boolean p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-nez p1, :cond_1

    return-void

    .line 545
    :cond_1
    iget p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_0
    if-ge p1, v0, :cond_6

    .line 546
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v1

    rem-int v2, p1, v2

    aget-object v7, v1, v2

    if-nez v7, :cond_2

    goto :goto_1

    .line 550
    :cond_2
    invoke-static {v7}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 551
    invoke-static {v7}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/BitmapLoader;->recycle()V

    .line 552
    invoke-static {v7, p2}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcn/nubia/gallery3d/ui/BitmapLoader;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    .line 553
    iput-object p2, v7, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 555
    :cond_3
    iget-object v1, v7, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    if-eqz v1, :cond_4

    iget-object v1, v7, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    .line 556
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->NEWFOLDER_BUCKET_ID:I

    if-eq v1, v2, :cond_4

    .line 557
    new-instance v8, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;

    iget-object v4, v7, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    iget v5, v7, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    iget v6, v7, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;-><init>(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;ILjava/lang/String;II)V

    invoke-static {v7, v8}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcn/nubia/gallery3d/ui/BitmapLoader;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    .line 560
    :cond_4
    iget-object v1, v7, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    if-eqz v1, :cond_5

    invoke-static {v7}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcn/nubia/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    .line 561
    iput-boolean v1, v7, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isLabelRequired:Z

    :cond_5
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 564
    :cond_6
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 565
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->updateTextureUploadQueue()V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mHandler:Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 388
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->setModelListener(Lcn/nubia/gallery3d/app/AlbumSetDataLoader$DataListener;)V

    const/4 v0, 0x0

    .line 389
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 390
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcn/nubia/gallery3d/glrenderer/TextureUploader;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/TextureUploader;->clear()V

    .line 391
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_0
    if-ge v0, v1, :cond_0

    .line 392
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 397
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, p0}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->setModelListener(Lcn/nubia/gallery3d/app/AlbumSetDataLoader$DataListener;)V

    const/4 v0, 0x1

    .line 398
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 399
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_0
    if-ge v0, v1, :cond_0

    .line 400
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    return-void
.end method

.method public setActiveWindow(II)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-gt p1, p2, :cond_0

    sub-int v2, p2, p1

    .line 167
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v3, v3

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-le p2, v2, :cond_1

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 169
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget v4, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "start = %s, end = %s, length = %s, size = %s"

    .line 168
    invoke-static {v3, v2}, Lcn/nubia/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    :cond_1
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    .line 173
    iput p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .line 174
    iput p2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr p1, p2

    .line 175
    div-int/2addr p1, v0

    array-length p2, v2

    div-int/2addr p2, v0

    sub-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    array-length v0, v2

    sub-int/2addr p2, v0

    .line 176
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 175
    invoke-static {p1, v1, p2}, Lcn/nubia/gallery3d/common/Utils;->clamp(III)I

    move-result p1

    .line 177
    array-length p2, v2

    add-int/2addr p2, p1

    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 178
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->setContentWindow(II)V

    .line 180
    iget-boolean p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz p1, :cond_2

    .line 181
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->updateTextureUploadQueue()V

    .line 182
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    :cond_2
    return-void
.end method

.method public setListener(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    return-void
.end method

.method public size()I
    .locals 1

    .line 128
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    return v0
.end method
