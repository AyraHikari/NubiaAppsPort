.class public Lcn/nubia/gallery3d/app/PhotoDataAdapter;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcn/nubia/gallery3d/app/PhotoPage$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/app/PhotoDataAdapter$CloudImageLoader;,
        Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;,
        Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateContent;,
        Lcn/nubia/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;,
        Lcn/nubia/gallery3d/app/PhotoDataAdapter$UpdateInfo;,
        Lcn/nubia/gallery3d/app/PhotoDataAdapter$SourceListener;,
        Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;,
        Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailListener;,
        Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageListener;,
        Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageJob;,
        Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;,
        Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;,
        Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;,
        Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;
    }
.end annotation


# static fields
.field private static final BIT_FULL_IMAGE:I = 0x2

.field private static final BIT_SCREEN_NAIL:I = 0x1

.field private static final DATA_CACHE_SIZE:I = 0x10

.field private static final IMAGE_CACHE_SIZE:I = 0x7

.field private static final MIN_LOAD_COUNT:I = 0x4

.field private static final MSG_HEIC_LOAD_FINISH:I = 0x7

.field private static final MSG_ITEMNOTFIND:I = 0x6

.field private static final MSG_LOAD_FINISH:I = 0x2

.field private static final MSG_LOAD_START:I = 0x1

.field private static final MSG_RUN_OBJECT:I = 0x3

.field private static final MSG_UPDATE_CLOUD_IMAGE_REQUEST:I = 0x5

.field private static final MSG_UPDATE_IMAGE_REQUESTS:I = 0x4

.field private static final SCREEN_NAIL_MAX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PhotoDataAdapter"

.field private static sImageFetchSeq:[Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;


# instance fields
.field HeicMovePath:Ljava/lang/String;

.field HeicMoveRotation:I

.field private heic0:Landroid/graphics/Bitmap;

.field heic0_has_rotation:Z

.field heic0_load_finish:Z

.field private heic1:Landroid/graphics/Bitmap;

.field heic1_has_rotation:Z

.field heic1_load_finish:Z

.field private heic2:Landroid/graphics/Bitmap;

.field heic2_has_rotation:Z

.field heic2_load_finish:Z

.field heicIsLoading:Z

.field heic_count:I

.field private heic_index:I

.field public is_heic_check:Z

.field loadingFilePath:Ljava/lang/String;

.field private mActiveEnd:I

.field private mActiveStart:I

.field private mCameraIndex:I

.field private final mChanges:[J

.field private mContentEnd:I

.field private mContentStart:I

.field private mCurrentIndex:I

.field private final mData:[Lcn/nubia/gallery3d/data/MediaItem;

.field private mDataListener:Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;

.field private mFocusHintDirection:I

.field private mFocusHintPath:Lcn/nubia/gallery3d/data/Path;

.field private mImageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcn/nubia/gallery3d/data/Path;",
            "Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActive:Z

.field private mIsPanorama:Z

.field private mItemNotFindListener:Lcn/nubia/gallery3d/app/ItemNotFindListener;

.field private mItemPath:Lcn/nubia/gallery3d/data/Path;

.field private mLock:Ljava/lang/Object;

.field private final mMainHandler:Landroid/os/Handler;

.field private mNeedFullImage:Z

.field private mOrientation:Z

.field private final mPaths:[Lcn/nubia/gallery3d/data/Path;

.field private final mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

.field private mReloadTask:Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;

.field private mSize:I

.field private final mSource:Lcn/nubia/gallery3d/data/MediaSet;

.field private final mSourceListener:Lcn/nubia/gallery3d/app/PhotoDataAdapter$SourceListener;

.field private mSourceVersion:J

.field private final mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;

.field private final mTileProvider:Lcn/nubia/gallery3d/ui/TileImageViewAdapter;

.field private final mUploader:Lcn/nubia/gallery3d/glrenderer/TiledTexture$Uploader;

.field mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

.field private mloadHeicTask0:Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;

.field private mloadHeicTask1:Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;

.field private mloadHeicTask2:Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;

.field update_bitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x10

    new-array v0, v0, [Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;

    .line 101
    sput-object v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;

    .line 102
    new-instance v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v1, v0, v2

    move v0, v3

    move v1, v0

    :goto_0
    const/4 v4, 0x7

    if-ge v0, v4, :cond_0

    .line 105
    sget-object v4, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v5, v1, 0x1

    new-instance v6, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v6, v0, v3}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v6, v4, v1

    .line 106
    sget-object v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v4, v5, 0x1

    new-instance v6, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;

    neg-int v7, v0

    invoke-direct {v6, v7, v3}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v6, v1, v5

    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_0

    .line 109
    :cond_0
    sget-object v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v4, v1, 0x1

    new-instance v5, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;

    const/4 v6, 0x2

    invoke-direct {v5, v2, v6}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v5, v0, v1

    .line 110
    sget-object v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v4, 0x1

    new-instance v2, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v2, v3, v6}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v2, v0, v4

    .line 111
    sget-object v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;

    new-instance v2, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v6}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/data/MediaSet;Lcn/nubia/gallery3d/data/Path;IIZ)V
    .locals 7

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;

    invoke-direct {v0}, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcn/nubia/gallery3d/ui/TileImageViewAdapter;

    const/16 v0, 0x10

    new-array v0, v0, [Lcn/nubia/gallery3d/data/MediaItem;

    .line 127
    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mData:[Lcn/nubia/gallery3d/data/MediaItem;

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    .line 129
    iput v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    .line 136
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    .line 138
    iput v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .line 139
    iput v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    const/4 v1, 0x7

    new-array v2, v1, [J

    .line 148
    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    new-array v1, v1, [Lcn/nubia/gallery3d/data/Path;

    .line 151
    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcn/nubia/gallery3d/data/Path;

    const-wide/16 v3, -0x1

    .line 160
    iput-wide v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    .line 161
    iput v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mSize:I

    .line 167
    iput v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I

    const/4 v1, 0x0

    .line 168
    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcn/nubia/gallery3d/data/Path;

    const/4 v5, 0x1

    .line 170
    iput-boolean v5, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mOrientation:Z

    .line 172
    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic1:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic2:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic0:Landroid/graphics/Bitmap;

    .line 173
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mLock:Ljava/lang/Object;

    .line 183
    new-instance v6, Lcn/nubia/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-direct {v6, p0, v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$SourceListener;-><init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;)V

    iput-object v6, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcn/nubia/gallery3d/app/PhotoDataAdapter$SourceListener;

    .line 258
    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mItemNotFindListener:Lcn/nubia/gallery3d/app/ItemNotFindListener;

    .line 339
    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->update_bitmap:Landroid/graphics/Bitmap;

    .line 870
    iput v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic_index:I

    .line 877
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->is_heic_check:Z

    .line 886
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic0_load_finish:Z

    .line 887
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic1_load_finish:Z

    .line 888
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic2_load_finish:Z

    .line 889
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic0_has_rotation:Z

    .line 890
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic1_has_rotation:Z

    .line 891
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic2_has_rotation:Z

    .line 892
    iput v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic_count:I

    .line 938
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heicIsLoading:Z

    const-string v1, ""

    .line 939
    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->loadingFilePath:Ljava/lang/String;

    .line 940
    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->HeicMovePath:Ljava/lang/String;

    .line 941
    iput v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->HeicMoveRotation:I

    .line 194
    invoke-static {p3}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/nubia/gallery3d/data/MediaSet;

    iput-object p3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mSource:Lcn/nubia/gallery3d/data/MediaSet;

    .line 195
    invoke-static {p2}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/gallery3d/ui/PhotoView;

    iput-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    .line 197
    iput-object p4, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcn/nubia/gallery3d/data/Path;

    .line 198
    iput p5, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 199
    iput p6, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    .line 200
    iput-boolean p7, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mIsPanorama:Z

    .line 201
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;

    .line 202
    iput-boolean v5, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mNeedFullImage:Z

    .line 204
    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 205
    new-instance p2, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object p3

    invoke-direct {p2, p3}, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Uploader;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mUploader:Lcn/nubia/gallery3d/glrenderer/TiledTexture$Uploader;

    .line 207
    new-instance p2, Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;-><init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/data/MediaItem;)Z
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->isTemporaryItem(Lcn/nubia/gallery3d/data/MediaItem;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/data/MediaItem;)Lcn/nubia/gallery3d/ui/ScreenNail;
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->newPlaceholderScreenNail(Lcn/nubia/gallery3d/data/MediaItem;)Lcn/nubia/gallery3d/ui/ScreenNail;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/ui/PhotoView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mOrientation:Z

    return p0
.end method

.method static synthetic access$1400(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/data/Path;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcn/nubia/gallery3d/data/Path;

    return-object p0
.end method

.method static synthetic access$1402(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/Path;
    .locals 0

    .line 62
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcn/nubia/gallery3d/data/Path;

    return-object p1
.end method

.method static synthetic access$1600(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/util/Future;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateFullImage(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/util/Future;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateScreenNail(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;

    return-object p0
.end method

.method static synthetic access$1900(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I
    .locals 0

    .line 62
    iget p0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    return-void
.end method

.method static synthetic access$2000(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I
    .locals 0

    .line 62
    iget p0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    return p0
.end method

.method static synthetic access$2002(Lcn/nubia/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    return p1
.end method

.method static synthetic access$2100(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)[Lcn/nubia/gallery3d/data/MediaItem;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mData:[Lcn/nubia/gallery3d/data/MediaItem;

    return-object p0
.end method

.method static synthetic access$2200(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I
    .locals 0

    .line 62
    iget p0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return p0
.end method

.method static synthetic access$2202(Lcn/nubia/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$2400(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcn/nubia/gallery3d/app/PhotoDataAdapter;J)J
    .locals 0

    .line 62
    iput-wide p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I
    .locals 0

    .line 62
    iget p0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mSize:I

    return p0
.end method

.method static synthetic access$2502(Lcn/nubia/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mSize:I

    return p1
.end method

.method static synthetic access$2600(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I
    .locals 0

    .line 62
    iget p0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    return p0
.end method

.method static synthetic access$2602(Lcn/nubia/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$2700(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    return-void
.end method

.method static synthetic access$2800(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    return-void
.end method

.method static synthetic access$2900(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/app/ItemNotFindListener;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mItemNotFindListener:Lcn/nubia/gallery3d/app/ItemNotFindListener;

    return-object p0
.end method

.method static synthetic access$3000(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    return-void
.end method

.method static synthetic access$3200(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mSource:Lcn/nubia/gallery3d/data/MediaSet;

    return-object p0
.end method

.method static synthetic access$3400(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/data/Path;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcn/nubia/gallery3d/data/Path;

    return-object p0
.end method

.method static synthetic access$3402(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/Path;
    .locals 0

    .line 62
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcn/nubia/gallery3d/data/Path;

    return-object p1
.end method

.method static synthetic access$3500(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)I
    .locals 0

    .line 62
    iget p0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I

    return p0
.end method

.method static synthetic access$3600(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/data/Path;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateCloudThumbnail(Lcn/nubia/gallery3d/data/Path;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Ljava/lang/Object;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 62
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic0:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$700(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$802(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 62
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic1:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$902(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 62
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic2:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1306
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1307
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    .line 1308
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1307
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1310
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1314
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private fireDataChange()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, -0x3

    move v2, v0

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-gt v1, v3, :cond_1

    .line 289
    iget v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v3, v1

    invoke-direct {p0, v3}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v5

    .line 290
    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v7, v1, 0x3

    aget-wide v8, v3, v7

    cmp-long v8, v8, v5

    if-eqz v8, :cond_0

    .line 291
    aput-wide v5, v3, v7

    move v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x7

    new-array v2, v1, [I

    new-array v5, v1, [Lcn/nubia/gallery3d/data/Path;

    .line 306
    iget-object v6, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcn/nubia/gallery3d/data/Path;

    invoke-static {v6, v0, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v6, v0

    :goto_1
    if-ge v6, v1, :cond_3

    .line 310
    iget-object v7, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcn/nubia/gallery3d/data/Path;

    iget v8, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v8, v6

    sub-int/2addr v8, v3

    invoke-direct {p0, v8}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_2
    if-ge v3, v1, :cond_8

    .line 315
    iget-object v6, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcn/nubia/gallery3d/data/Path;

    aget-object v6, v6, v3

    const v7, 0x7fffffff

    if-nez v6, :cond_4

    .line 317
    aput v7, v2, v3

    goto :goto_5

    :cond_4
    move v8, v0

    :goto_3
    if-ge v8, v1, :cond_6

    .line 324
    aget-object v9, v5, v8

    if-ne v9, v6, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-ge v8, v1, :cond_7

    add-int/lit8 v7, v8, -0x3

    .line 328
    :cond_7
    aput v7, v2, v3

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 331
    :cond_8
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    iget v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    neg-int v3, v1

    iget v5, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mSize:I

    sub-int/2addr v5, v4

    sub-int/2addr v5, v1

    invoke-virtual {v0, v2, v3, v5}, Lcn/nubia/gallery3d/ui/PhotoView;->notifyDataChange([III)V

    return-void
.end method

.method private getHeicBitmap(ILjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 p3, 0x0

    .line 407
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 410
    :cond_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 412
    invoke-virtual {v0, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 413
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v0, 0x1b

    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 415
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p2, p1, p3}, Landroid/media/MediaMetadataRetriever;->getImageAtIndex(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 417
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->getImageAtIndex(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "PhotoDataAdapter"

    const-string v0, "heic error !!!"

    .line 420
    invoke-static {p2, v0}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p3
.end method

.method private getItem(I)Lcn/nubia/gallery3d/data/MediaItem;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 514
    iget v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-ge p1, v1, :cond_1

    iget-boolean v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 516
    :cond_0
    iget v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v1, :cond_1

    .line 517
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mData:[Lcn/nubia/gallery3d/data/MediaItem;

    rem-int/lit8 p1, p1, 0x10

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getItemInternal(I)Lcn/nubia/gallery3d/data/MediaItem;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 266
    iget v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    iget v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v1, :cond_1

    .line 268
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mData:[Lcn/nubia/gallery3d/data/MediaItem;

    rem-int/lit8 p1, p1, 0x10

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getPath(I)Lcn/nubia/gallery3d/data/Path;
    .locals 0

    .line 280
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getItemInternal(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 282
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    return-object p1
.end method

.method private getVersion(I)J
    .locals 2

    .line 274
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getItemInternal(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 276
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method private isTemporaryItem(Lcn/nubia/gallery3d/data/MediaItem;)Z
    .locals 6

    .line 1132
    iget v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 1134
    :cond_0
    instance-of v0, p1, Lcn/nubia/gallery3d/data/LocalMediaItem;

    if-nez v0, :cond_1

    return v1

    .line 1135
    :cond_1
    check-cast p1, Lcn/nubia/gallery3d/data/LocalMediaItem;

    .line 1136
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/LocalMediaItem;->getBucketId()I

    move-result v0

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-eq v0, v2, :cond_2

    return v1

    .line 1138
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/LocalMediaItem;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    return v1

    .line 1139
    :cond_3
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/LocalMediaItem;->getWidth()I

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 1140
    :cond_4
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/LocalMediaItem;->getHeight()I

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 1142
    :cond_5
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/LocalMediaItem;->getDateInMs()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long p1, v2, v4

    if-lez p1, :cond_6

    return v1

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method private newPlaceholderScreenNail(Lcn/nubia/gallery3d/data/MediaItem;)Lcn/nubia/gallery3d/ui/ScreenNail;
    .locals 2

    .line 1150
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getWidth()I

    move-result v0

    .line 1151
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getHeight()I

    move-result p1

    .line 1152
    new-instance v1, Lcn/nubia/gallery3d/ui/BitmapScreenNail;

    invoke-direct {v1, v0, p1}, Lcn/nubia/gallery3d/ui/BitmapScreenNail;-><init>(II)V

    return-object v1
.end method

.method private startTaskIfNeeded(II)Lcn/nubia/gallery3d/util/Future;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcn/nubia/gallery3d/util/Future<",
            "*>;"
        }
    .end annotation

    .line 1157
    iget v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_6

    iget v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt p1, v0, :cond_0

    goto/16 :goto_1

    .line 1159
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;

    if-nez v0, :cond_1

    return-object v1

    .line 1161
    :cond_1
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mData:[Lcn/nubia/gallery3d/data/MediaItem;

    rem-int/lit8 p1, p1, 0x10

    aget-object p1, v2, p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 1163
    :goto_0
    invoke-static {v3}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 1164
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v3

    if-ne p2, v2, :cond_3

    .line 1166
    iget-object v5, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v5, :cond_3

    iget-wide v5, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_3

    .line 1168
    iget-object p1, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcn/nubia/gallery3d/util/Future;

    return-object p1

    :cond_3
    const/4 v5, 0x2

    if-ne p2, v5, :cond_4

    .line 1169
    iget-object v6, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v6, :cond_4

    iget-wide v6, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    cmp-long v6, v6, v3

    if-nez v6, :cond_4

    .line 1171
    iget-object p1, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcn/nubia/gallery3d/util/Future;

    return-object p1

    :cond_4
    if-ne p2, v2, :cond_5

    .line 1174
    iget-wide v6, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    cmp-long v2, v6, v3

    if-eqz v2, :cond_5

    .line 1175
    iput-wide v3, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 1176
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;

    new-instance v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;

    invoke-direct {v1, p0, p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;-><init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/data/MediaItem;)V

    new-instance v2, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailListener;

    invoke-direct {v2, p0, p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailListener;-><init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/data/MediaItem;)V

    invoke-virtual {p2, v1, v2}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcn/nubia/gallery3d/util/Future;

    .line 1180
    iget-object p1, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcn/nubia/gallery3d/util/Future;

    return-object p1

    :cond_5
    if-ne p2, v5, :cond_6

    .line 1182
    iget-wide v5, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    cmp-long p2, v5, v3

    if-eqz p2, :cond_6

    .line 1183
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v5

    const-wide/16 v7, 0x40

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long p2, v5, v7

    if-eqz p2, :cond_6

    .line 1185
    iput-wide v3, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 1186
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;

    new-instance v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageJob;

    invoke-direct {v1, p0, p1, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageJob;-><init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/data/MediaItem;Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    new-instance v2, Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageListener;

    invoke-direct {v2, p0, p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageListener;-><init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/data/MediaItem;)V

    invoke-virtual {p2, v1, v2}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcn/nubia/gallery3d/util/Future;

    .line 1190
    iget-object p1, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcn/nubia/gallery3d/util/Future;

    return-object p1

    :cond_6
    :goto_1
    return-object v1
.end method

.method private updateCloudThumbnail(Lcn/nubia/gallery3d/data/Path;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1591
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;

    if-nez v0, :cond_0

    return-void

    .line 1594
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_0

    .line 1598
    :cond_1
    new-instance v2, Lcn/nubia/gallery3d/ui/BitmapScreenNail;

    invoke-direct {v2, p2}, Lcn/nubia/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    :goto_0
    const/4 p2, 0x0

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 1601
    iput-boolean v1, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    goto :goto_1

    .line 1603
    :cond_2
    iput-boolean p2, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    .line 1604
    iput-object v2, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    .line 1606
    :goto_1
    iget v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 1607
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 1608
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 1610
    :cond_3
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    return-void
.end method

.method private updateCurrentIndex(I)V
    .locals 2

    .line 523
    iget v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    if-ne v0, p1, :cond_0

    return-void

    .line 524
    :cond_0
    iput p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 525
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 527
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mData:[Lcn/nubia/gallery3d/data/MediaItem;

    rem-int/lit8 v1, p1, 0x10

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 528
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcn/nubia/gallery3d/data/Path;

    .line 530
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    .line 531
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    .line 532
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V

    .line 534
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;

    if-eqz v0, :cond_2

    .line 535
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcn/nubia/gallery3d/data/Path;

    invoke-interface {v0, p1, v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;->onPhotoChanged(ILcn/nubia/gallery3d/data/Path;)V

    .line 538
    :cond_2
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    return-void
.end method

.method private updateFullImage(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/util/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/data/Path;",
            "Lcn/nubia/gallery3d/util/Future<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;

    if-eqz v0, :cond_2

    .line 463
    iget-object v1, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcn/nubia/gallery3d/util/Future;

    if-eq v1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 469
    iput-object v1, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcn/nubia/gallery3d/util/Future;

    .line 470
    invoke-interface {p2}, Lcn/nubia/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/BitmapRegionDecoder;

    iput-object p2, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 471
    iget-object p2, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    if-eqz p2, :cond_1

    .line 472
    iget p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p2

    if-ne p1, p2, :cond_1

    .line 473
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 474
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 477
    :cond_1
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    return-void

    .line 464
    :cond_2
    :goto_0
    invoke-interface {p2}, Lcn/nubia/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/BitmapRegionDecoder;

    if-eqz p1, :cond_3

    .line 465
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_3
    return-void
.end method

.method private updateImageCache()V
    .locals 9

    .line 1196
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1197
    iget v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    :goto_0
    iget v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v1, v2, :cond_5

    .line 1198
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mData:[Lcn/nubia/gallery3d/data/MediaItem;

    rem-int/lit8 v3, v1, 0x10

    aget-object v2, v2, v3

    if-nez v2, :cond_0

    goto :goto_1

    .line 1200
    :cond_0
    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v3

    .line 1201
    iget-object v4, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1202
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 1204
    iget v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v6, 0x1

    if-le v3, v6, :cond_2

    .line 1205
    iget-object v3, v4, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v3, :cond_1

    .line 1206
    iget-object v3, v4, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcn/nubia/gallery3d/util/Future;

    invoke-interface {v3}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 1207
    iput-object v5, v4, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcn/nubia/gallery3d/util/Future;

    .line 1209
    :cond_1
    iput-object v5, v4, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    const-wide/16 v5, -0x1

    .line 1210
    iput-wide v5, v4, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 1212
    :cond_2
    iget-wide v5, v4, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-eqz v3, :cond_4

    .line 1215
    iget-object v3, v4, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    instance-of v3, v3, Lcn/nubia/gallery3d/ui/BitmapScreenNail;

    if-eqz v3, :cond_4

    .line 1216
    iget-object v3, v4, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    check-cast v3, Lcn/nubia/gallery3d/ui/BitmapScreenNail;

    .line 1218
    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/MediaItem;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/MediaItem;->getHeight()I

    move-result v2

    .line 1217
    invoke-virtual {v3, v4, v2}, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->updatePlaceholderSize(II)V

    goto :goto_1

    .line 1222
    :cond_3
    new-instance v2, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;

    invoke-direct {v2, v5}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;-><init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;)V

    .line 1223
    iget-object v4, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1228
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/Path;

    .line 1229
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1230
    iget-object v2, v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcn/nubia/gallery3d/util/Future;

    invoke-interface {v2}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 1231
    :cond_7
    iget-object v2, v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcn/nubia/gallery3d/util/Future;

    invoke-interface {v2}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 1232
    :cond_8
    iget-object v2, v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_6

    iget-object v1, v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    invoke-interface {v1}, Lcn/nubia/gallery3d/ui/ScreenNail;->recycle()V

    goto :goto_2

    .line 1234
    :cond_9
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateScreenNailUploadQueue()V

    return-void
.end method

.method private updateImageRequests()V
    .locals 7

    .line 838
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 840
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 841
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mData:[Lcn/nubia/gallery3d/data/MediaItem;

    rem-int/lit8 v2, v0, 0x10

    aget-object v1, v1, v2

    if-eqz v1, :cond_7

    .line 842
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcn/nubia/gallery3d/data/Path;

    if-eq v1, v2, :cond_1

    goto :goto_4

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    .line 848
    :goto_0
    sget-object v4, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;

    array-length v5, v4

    if-ge v1, v5, :cond_4

    .line 849
    aget-object v4, v4, v1

    iget v4, v4, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;->indexOffset:I

    .line 850
    sget-object v5, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;

    aget-object v5, v5, v1

    iget v5, v5, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;->imageBit:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 851
    iget-boolean v6, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mNeedFullImage:Z

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v4, v0

    .line 852
    invoke-direct {p0, v4, v5}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->startTaskIfNeeded(II)Lcn/nubia/gallery3d/util/Future;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 857
    :cond_4
    :goto_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 858
    iget-object v4, v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcn/nubia/gallery3d/util/Future;

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_6

    iget-object v4, v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcn/nubia/gallery3d/util/Future;

    if-eq v4, v3, :cond_6

    .line 859
    iget-object v4, v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcn/nubia/gallery3d/util/Future;

    invoke-interface {v4}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 860
    iput-object v2, v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcn/nubia/gallery3d/util/Future;

    .line 861
    iput-wide v5, v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 863
    :cond_6
    iget-object v4, v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v4, :cond_5

    iget-object v4, v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcn/nubia/gallery3d/util/Future;

    if-eq v4, v3, :cond_5

    .line 864
    iget-object v4, v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcn/nubia/gallery3d/util/Future;

    invoke-interface {v4}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 865
    iput-object v2, v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcn/nubia/gallery3d/util/Future;

    .line 866
    iput-wide v5, v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method private updateScreenNail(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/util/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/data/Path;",
            "Lcn/nubia/gallery3d/util/Future<",
            "Lcn/nubia/gallery3d/ui/ScreenNail;",
            ">;)V"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 428
    invoke-interface {p2}, Lcn/nubia/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_6

    .line 430
    iget-object v2, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcn/nubia/gallery3d/util/Future;

    if-eq v2, p2, :cond_0

    goto :goto_3

    :cond_0
    const/4 p2, 0x0

    .line 435
    iput-object p2, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcn/nubia/gallery3d/util/Future;

    .line 438
    iget-object p2, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    instance-of p2, p2, Lcn/nubia/gallery3d/ui/BitmapScreenNail;

    if-eqz p2, :cond_1

    .line 439
    iget-object p2, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    check-cast p2, Lcn/nubia/gallery3d/ui/BitmapScreenNail;

    .line 440
    invoke-virtual {p2, v1}, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->combine(Lcn/nubia/gallery3d/ui/ScreenNail;)Lcn/nubia/gallery3d/ui/ScreenNail;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    const/4 p2, 0x1

    .line 444
    iput-boolean p2, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 446
    iput-boolean p2, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    .line 447
    iput-object v1, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    :goto_0
    const/4 p2, -0x3

    :goto_1
    const/4 v1, 0x3

    if-gt p2, v1, :cond_5

    .line 451
    iget v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    if-ne p1, v1, :cond_4

    if-nez p2, :cond_3

    .line 452
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 453
    :cond_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    goto :goto_2

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 457
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    .line 458
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateScreenNailUploadQueue()V

    return-void

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 431
    invoke-interface {v1}, Lcn/nubia/gallery3d/ui/ScreenNail;->recycle()V

    :cond_7
    return-void
.end method

.method private updateScreenNailUploadQueue()V
    .locals 2

    .line 559
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mUploader:Lcn/nubia/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Uploader;->clear()V

    const/4 v0, 0x0

    .line 560
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->uploadScreenNail(I)V

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 562
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->uploadScreenNail(I)V

    neg-int v1, v0

    .line 563
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->uploadScreenNail(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateSlidingWindow()V
    .locals 6

    .line 813
    iget v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v0, v0, -0x3

    iget v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v1, v1, -0x7

    const/4 v2, 0x0

    .line 814
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 813
    invoke-static {v0, v2, v1}, Lcn/nubia/gallery3d/common/Utils;->clamp(III)I

    move-result v0

    .line 815
    iget v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v3, v0, 0x7

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 816
    iget v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-ne v3, v0, :cond_0

    iget v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ne v3, v1, :cond_0

    return-void

    .line 817
    :cond_0
    iput v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .line 818
    iput v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    .line 821
    iget v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v0, v0, -0x8

    iget v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v1, v1, -0x10

    .line 822
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 821
    invoke-static {v0, v2, v1}, Lcn/nubia/gallery3d/common/Utils;->clamp(III)I

    move-result v0

    .line 823
    iget v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v2, v0, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 824
    iget v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    iget v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-gt v2, v3, :cond_1

    iget v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    iget v4, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt v3, v4, :cond_1

    sub-int v2, v0, v2

    .line 825
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_5

    .line 826
    :cond_1
    iget v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    :goto_0
    iget v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge v2, v3, :cond_4

    if-lt v2, v0, :cond_2

    if-lt v2, v1, :cond_3

    .line 828
    :cond_2
    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mData:[Lcn/nubia/gallery3d/data/MediaItem;

    rem-int/lit8 v4, v2, 0x10

    const/4 v5, 0x0

    aput-object v5, v3, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 831
    :cond_4
    iput v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    .line 832
    iput v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    .line 833
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    :cond_5
    return-void
.end method

.method private updateTileProvider()V
    .locals 2

    .line 784
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;

    if-nez v0, :cond_0

    .line 786
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcn/nubia/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->clear()V

    goto :goto_0

    .line 788
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    :goto_0
    return-void
.end method

.method private updateTileProvider(Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;)V
    .locals 5

    .line 793
    iget-object v0, p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    .line 794
    iget-object v1, p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 797
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcn/nubia/gallery3d/ui/TileImageViewAdapter;

    .line 798
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v4

    .line 797
    invoke-virtual {v2, v0, v3, v4}, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcn/nubia/gallery3d/ui/ScreenNail;II)V

    .line 799
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcn/nubia/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V

    .line 800
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcn/nubia/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->isNeedColorSpace()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->setNeedColorSpace(Z)V

    goto :goto_0

    .line 802
    :cond_0
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/ScreenNail;->getWidth()I

    move-result p1

    .line 803
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v1

    .line 804
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcn/nubia/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcn/nubia/gallery3d/ui/ScreenNail;II)V

    goto :goto_0

    .line 807
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcn/nubia/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->clear()V

    :goto_0
    return-void
.end method

.method private uploadScreenNail(I)V
    .locals 1

    .line 542
    iget v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    .line 543
    iget p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt v0, p1, :cond_3

    iget p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt v0, p1, :cond_0

    goto :goto_0

    .line 545
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 548
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;

    if-nez p1, :cond_2

    return-void

    .line 551
    :cond_2
    iget-object p1, p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    .line 552
    instance-of v0, p1, Lcn/nubia/gallery3d/ui/TiledScreenNail;

    if-eqz v0, :cond_3

    .line 553
    check-cast p1, Lcn/nubia/gallery3d/ui/TiledScreenNail;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/TiledScreenNail;->getTexture()Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 554
    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mUploader:Lcn/nubia/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Uploader;->addTexture(Lcn/nubia/gallery3d/glrenderer/TiledTexture;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public HeicScreenNailUpdate(Lcn/nubia/gallery3d/data/Path;Ljava/lang/String;I)V
    .locals 6

    .line 343
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;

    const/4 v1, 0x0

    .line 344
    iput-object v1, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcn/nubia/gallery3d/util/Future;

    .line 345
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeic_index()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_2

    .line 346
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic0:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 347
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeic_index()I

    move-result v1

    invoke-direct {p0, v1, p2, p3}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeicBitmap(ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic0:Landroid/graphics/Bitmap;

    .line 348
    iput-boolean v4, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic0_has_rotation:Z

    .line 350
    :cond_0
    iget-boolean p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic0_has_rotation:Z

    if-nez p2, :cond_1

    .line 352
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic0:Landroid/graphics/Bitmap;

    rsub-int/lit8 v1, p3, 0x0

    invoke-static {p2, v1, v3}, Lcn/nubia/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic0:Landroid/graphics/Bitmap;

    .line 354
    iput-boolean v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic0_has_rotation:Z

    .line 356
    :cond_1
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic0:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v1, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->update_bitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 357
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeic_index()I

    move-result v1

    if-eq v1, v3, :cond_6

    iget v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic_count:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    goto :goto_0

    .line 369
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeic_index()I

    move-result v1

    if-ne v1, v5, :cond_9

    iget v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic_count:I

    if-lt v1, v2, :cond_9

    .line 370
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic2:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    .line 371
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeic_index()I

    move-result v1

    invoke-direct {p0, v1, p2, p3}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeicBitmap(ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic2:Landroid/graphics/Bitmap;

    .line 372
    iput-boolean v4, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic2_has_rotation:Z

    .line 374
    :cond_4
    iget-boolean p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic2_has_rotation:Z

    if-nez p2, :cond_5

    .line 376
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic2:Landroid/graphics/Bitmap;

    rsub-int/lit8 v1, p3, 0x0

    invoke-static {p2, v1, v3}, Lcn/nubia/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic2:Landroid/graphics/Bitmap;

    .line 378
    iput-boolean v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic2_has_rotation:Z

    .line 380
    :cond_5
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic2:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v1, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->update_bitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 358
    :cond_6
    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic1:Landroid/graphics/Bitmap;

    if-nez v1, :cond_7

    .line 359
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeic_index()I

    move-result v1

    invoke-direct {p0, v1, p2, p3}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeicBitmap(ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic1:Landroid/graphics/Bitmap;

    .line 360
    iput-boolean v4, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic1_has_rotation:Z

    .line 362
    :cond_7
    iget-boolean p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic1_has_rotation:Z

    if-nez p2, :cond_8

    .line 364
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic1:Landroid/graphics/Bitmap;

    rsub-int/lit8 v1, p3, 0x0

    invoke-static {p2, v1, v3}, Lcn/nubia/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic1:Landroid/graphics/Bitmap;

    .line 366
    iput-boolean v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic1_has_rotation:Z

    .line 368
    :cond_8
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic1:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v1, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->update_bitmap:Landroid/graphics/Bitmap;

    .line 382
    :cond_9
    :goto_1
    new-instance p2, Lcn/nubia/gallery3d/ui/BitmapScreenNail;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->update_bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p2, v1}, Lcn/nubia/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    const/4 p2, -0x3

    :goto_2
    if-gt p2, v2, :cond_d

    .line 385
    iget v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    if-ne p1, v1, :cond_c

    if-nez p2, :cond_a

    .line 386
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 387
    :cond_a
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p2}, Lcn/nubia/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 388
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeic_index()I

    move-result p2

    if-eqz p2, :cond_d

    .line 389
    iget-boolean p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic0_has_rotation:Z

    if-eqz p2, :cond_b

    .line 390
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;

    new-instance p2, Lcn/nubia/gallery3d/ui/BitmapScreenNail;

    iget-object p3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic0:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p3, v0, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-direct {p2, p3}, Lcn/nubia/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    goto :goto_3

    .line 392
    :cond_b
    iget-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;

    new-instance p2, Lcn/nubia/gallery3d/ui/BitmapScreenNail;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic0:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    sub-int/2addr v4, p3

    invoke-static {v0, v4, v3}, Lcn/nubia/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-direct {p2, p3}, Lcn/nubia/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcn/nubia/gallery3d/ui/ScreenNail;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 400
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_3
    return-void
.end method

.method public ReleaseMediaMetadataRetriever()V
    .locals 2

    .line 990
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_0

    .line 992
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 994
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "PhotoDataAdapter"

    const-string v1, "Retriever release error!!!"

    .line 995
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic0:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1000
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1001
    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic0:Landroid/graphics/Bitmap;

    .line 1003
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1004
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1005
    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic1:Landroid/graphics/Bitmap;

    .line 1007
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1008
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1009
    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic2:Landroid/graphics/Bitmap;

    .line 1011
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->update_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 1012
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1013
    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->update_bitmap:Landroid/graphics/Bitmap;

    :cond_4
    return-void
.end method

.method public forceReload()V
    .locals 4

    .line 1548
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1549
    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->terminate()V

    .line 1550
    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;

    .line 1552
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1553
    iget-object v3, v2, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcn/nubia/gallery3d/util/Future;

    invoke-interface {v3}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 1554
    :cond_1
    iget-object v3, v2, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcn/nubia/gallery3d/util/Future;

    invoke-interface {v3}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 1555
    :cond_2
    iget-object v3, v2, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    invoke-interface {v2}, Lcn/nubia/gallery3d/ui/ScreenNail;->recycle()V

    goto :goto_0

    .line 1557
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1558
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcn/nubia/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->clear()V

    .line 1561
    :cond_4
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    .line 1562
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    .line 1564
    new-instance v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;-><init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;

    .line 1565
    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->start()V

    return-void
.end method

.method public getCurrentIndex()I
    .locals 1

    .line 732
    iget v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method public getDataLoadingState(I)I
    .locals 1

    .line 772
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 773
    instance-of v0, p1, Lcn/nubia/gallery3d/data/LocalImage;

    if-eqz v0, :cond_0

    .line 774
    check-cast p1, Lcn/nubia/gallery3d/data/LocalImage;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/LocalImage;->getDataLoadingState()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getHeicImage(Ljava/lang/String;I)V
    .locals 4

    .line 960
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->isIs_heic_check()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 961
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeic_index()I

    move-result v0

    if-nez v0, :cond_2

    .line 962
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".heic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heicIsLoading:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 963
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heicIsLoading:Z

    .line 964
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;->onHeifLoadStatus(Z)V

    .line 966
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v1, :cond_0

    .line 967
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 969
    :cond_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 970
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 971
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v3, 0x1b

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 972
    iput v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic_count:I

    .line 973
    iput-boolean v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic0_load_finish:Z

    .line 974
    iput-boolean v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic1_load_finish:Z

    .line 975
    iput-boolean v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic2_load_finish:Z

    .line 976
    new-instance v3, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;

    invoke-direct {v3, p0, p1, p2, v2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;-><init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Ljava/lang/String;II)V

    iput-object v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mloadHeicTask0:Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;

    .line 977
    invoke-virtual {v3}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->start()V

    .line 978
    new-instance v2, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;

    invoke-direct {v2, p0, p1, p2, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;-><init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Ljava/lang/String;II)V

    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mloadHeicTask1:Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;

    .line 979
    invoke-virtual {v2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->start()V

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 981
    new-instance v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, p2, v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;-><init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Ljava/lang/String;II)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mloadHeicTask2:Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;

    .line 982
    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->start()V

    goto :goto_0

    .line 984
    :cond_1
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic2_load_finish:Z

    .line 986
    :goto_0
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->loadingFilePath:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public getHeicMovePath()Ljava/lang/String;
    .locals 1

    .line 944
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->HeicMovePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeicMoveRotation()I
    .locals 1

    .line 952
    iget v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->HeicMoveRotation:I

    return v0
.end method

.method public getHeic_index()I
    .locals 1

    .line 872
    iget v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic_index:I

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    .line 707
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcn/nubia/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->getImageHeight()I

    move-result v0

    return v0
.end method

.method public getImageRotation(I)I
    .locals 1

    .line 627
    iget v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 628
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result p1

    :goto_0
    return p1
.end method

.method public getImageSize(ILcn/nubia/gallery3d/ui/PhotoView$Size;)V
    .locals 1

    .line 615
    iget v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 617
    iput p1, p2, Lcn/nubia/gallery3d/ui/PhotoView$Size;->width:I

    .line 618
    iput p1, p2, Lcn/nubia/gallery3d/ui/PhotoView$Size;->height:I

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getWidth()I

    move-result v0

    iput v0, p2, Lcn/nubia/gallery3d/ui/PhotoView$Size;->width:I

    .line 621
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getHeight()I

    move-result p1

    iput p1, p2, Lcn/nubia/gallery3d/ui/PhotoView$Size;->height:I

    :goto_0
    return-void
.end method

.method public getImageWidth()I
    .locals 1

    .line 712
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcn/nubia/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->getImageWidth()I

    move-result v0

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .line 717
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcn/nubia/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->getLevelCount()I

    move-result v0

    return v0
.end method

.method public getLoadingState(I)I
    .locals 2

    .line 693
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 695
    :cond_0
    iget-boolean v1, p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    if-eqz v1, :cond_1

    const/4 p1, 0x2

    return p1

    .line 696
    :cond_1
    iget-object p1, p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;
    .locals 1

    .line 737
    iget v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    .line 738
    iget p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt v0, p1, :cond_0

    iget p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge v0, p1, :cond_0

    .line 739
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mData:[Lcn/nubia/gallery3d/data/MediaItem;

    rem-int/lit8 v0, v0, 0x10

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getScreenNail()Lcn/nubia/gallery3d/ui/ScreenNail;
    .locals 1

    const/4 v0, 0x0

    .line 702
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getScreenNail(I)Lcn/nubia/gallery3d/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method

.method public getScreenNail(I)Lcn/nubia/gallery3d/ui/ScreenNail;
    .locals 4

    .line 593
    iget v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    const/4 v1, 0x0

    if-ltz v0, :cond_5

    .line 594
    iget v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-ge v0, v2, :cond_5

    iget-boolean v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v2, :cond_0

    goto :goto_1

    .line 595
    :cond_0
    iget v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt v0, v2, :cond_1

    iget v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 597
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 600
    :cond_2
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;

    if-nez v2, :cond_3

    return-object v1

    .line 605
    :cond_3
    iget-object v1, v2, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    if-nez v1, :cond_4

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 606
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->newPlaceholderScreenNail(Lcn/nubia/gallery3d/data/MediaItem;)Lcn/nubia/gallery3d/ui/ScreenNail;

    move-result-object v0

    iput-object v0, v2, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    if-nez p1, :cond_4

    .line 607
    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 610
    :cond_4
    iget-object p1, v2, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    return-object p1

    :cond_5
    :goto_1
    return-object v1
.end method

.method public getTile(IIII)Landroid/graphics/Bitmap;
    .locals 1

    .line 722
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcn/nubia/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->getTile(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public isCamera(I)Z
    .locals 1

    .line 639
    iget v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    iget p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isDeletable(I)Z
    .locals 5

    .line 685
    iget v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 688
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 727
    iget v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGif(I)Z
    .locals 2

    .line 658
    iget v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    const/4 v0, 0x0

    .line 659
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 660
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 661
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "image/gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 663
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public isHEIC(I)Z
    .locals 2

    .line 675
    iget v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    const/4 v0, 0x0

    .line 676
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 677
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 678
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "image/heic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 680
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public isIs_heic_check()Z
    .locals 1

    .line 880
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->is_heic_check:Z

    return v0
.end method

.method public isMultiShoot(I)Z
    .locals 2

    .line 668
    iget v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 670
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result p1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public isPanorama(I)Z
    .locals 0

    .line 645
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mIsPanorama:Z

    return p1
.end method

.method public isVideo(I)Z
    .locals 2

    .line 650
    iget v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 653
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public moveTo(I)V
    .locals 3

    if-ltz p1, :cond_6

    .line 568
    iget v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 569
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeic_index()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 570
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->setHeic_index(I)V

    .line 572
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;

    if-eqz v0, :cond_2

    .line 573
    invoke-interface {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;->onHeifLoadStart()V

    .line 575
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic0:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 576
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 577
    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic0:Landroid/graphics/Bitmap;

    .line 579
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 580
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 581
    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic1:Landroid/graphics/Bitmap;

    .line 583
    :cond_4
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 584
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 585
    iput-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic2:Landroid/graphics/Bitmap;

    .line 587
    :cond_5
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->setIs_heic_check(Z)V

    .line 588
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateCurrentIndex(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 3

    const/4 v0, 0x0

    .line 496
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    .line 497
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->terminate()V

    :cond_0
    const/4 v0, 0x0

    .line 498
    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;

    .line 500
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mSource:Lcn/nubia/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcn/nubia/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;->removeContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V

    .line 502
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 503
    iget-object v2, v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcn/nubia/gallery3d/util/Future;

    invoke-interface {v2}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 504
    :cond_2
    iget-object v2, v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcn/nubia/gallery3d/util/Future;

    invoke-interface {v2}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 505
    :cond_3
    iget-object v2, v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

    invoke-interface {v1}, Lcn/nubia/gallery3d/ui/ScreenNail;->recycle()V

    goto :goto_0

    .line 507
    :cond_4
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 508
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcn/nubia/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;->clear()V

    .line 509
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mUploader:Lcn/nubia/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/TiledTexture$Uploader;->clear()V

    .line 510
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->freeResources()V

    return-void
.end method

.method public resume()V
    .locals 2

    const/4 v0, 0x1

    .line 482
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    .line 483
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->prepareResources()V

    .line 484
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mSource:Lcn/nubia/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcn/nubia/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;->addContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V

    .line 485
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    .line 486
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    .line 488
    new-instance v0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;-><init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;

    .line 489
    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->start()V

    .line 491
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    return-void
.end method

.method public setCurrentPhoto(Lcn/nubia/gallery3d/data/Path;I)V
    .locals 1

    .line 746
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcn/nubia/gallery3d/data/Path;

    if-ne v0, p1, :cond_0

    return-void

    .line 747
    :cond_0
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcn/nubia/gallery3d/data/Path;

    .line 748
    iput p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 749
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 750
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    .line 751
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    const/4 p2, 0x0

    .line 754
    invoke-virtual {p0, p2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 755
    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object p2

    if-eq p2, p1, :cond_1

    .line 756
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    :cond_1
    return-void
.end method

.method public setDataListener(Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;

    return-void
.end method

.method public setFocusHintDirection(I)V
    .locals 0

    .line 762
    iput p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I

    return-void
.end method

.method public setFocusHintPath(Lcn/nubia/gallery3d/data/Path;)V
    .locals 0

    .line 767
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcn/nubia/gallery3d/data/Path;

    return-void
.end method

.method public setHeicMovePath(Ljava/lang/String;)V
    .locals 0

    .line 948
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->HeicMovePath:Ljava/lang/String;

    return-void
.end method

.method public setHeicMoveRotation(I)V
    .locals 0

    .line 956
    iput p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->HeicMoveRotation:I

    return-void
.end method

.method public setHeic_index(I)V
    .locals 0

    .line 875
    iput p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic_index:I

    return-void
.end method

.method public setIs_heic_check(Z)V
    .locals 0

    .line 884
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->is_heic_check:Z

    return-void
.end method

.method public setNeedFullImage(Z)V
    .locals 1

    .line 633
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mNeedFullImage:Z

    .line 634
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setOrientation(Z)V
    .locals 0

    .line 780
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mOrientation:Z

    return-void
.end method

.method public setmItemNotFindListener(Lcn/nubia/gallery3d/app/ItemNotFindListener;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mItemNotFindListener:Lcn/nubia/gallery3d/app/ItemNotFindListener;

    return-void
.end method
