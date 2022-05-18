.class public Lcn/nubia/gallery3d/app/AlbumSetDataLoader;
.super Ljava/lang/Object;
.source "AlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;,
        Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateContent;,
        Lcn/nubia/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;,
        Lcn/nubia/gallery3d/app/AlbumSetDataLoader$UpdateInfo;,
        Lcn/nubia/gallery3d/app/AlbumSetDataLoader$MySourceListener;,
        Lcn/nubia/gallery3d/app/AlbumSetDataLoader$DataListener;
    }
.end annotation


# static fields
.field private static final INDEX_NONE:I = -0x1

.field private static final MIN_LOAD_COUNT:I = 0x4

.field private static final MSG_LOAD_FINISH:I = 0x2

.field private static final MSG_LOAD_START:I = 0x1

.field private static final MSG_RUN_OBJECT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AlbumSetDataAdapter"


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mCoverItem:[Lcn/nubia/gallery3d/data/MediaItem;

.field private final mData:[Lcn/nubia/gallery3d/data/MediaSet;

.field private mDataListener:Lcn/nubia/gallery3d/app/AlbumSetDataLoader$DataListener;

.field private final mItemVersion:[J

.field private mLoadingListener:Lcn/nubia/gallery3d/app/LoadingListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mReloadTask:Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;

.field private final mSetVersion:[J

.field private mSize:I

.field private final mSource:Lcn/nubia/gallery3d/data/MediaSet;

.field private final mSourceListener:Lcn/nubia/gallery3d/app/AlbumSetDataLoader$MySourceListener;

.field private mSourceVersion:J

.field private final mTotalCount:[I


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/data/MediaSet;I)V
    .locals 4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I

    .line 65
    iput v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I

    .line 67
    iput v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mContentStart:I

    .line 68
    iput v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I

    const-wide/16 v0, -0x1

    .line 71
    iput-wide v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mSourceVersion:J

    .line 80
    new-instance v2, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$MySourceListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$MySourceListener;-><init>(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;Lcn/nubia/gallery3d/app/AlbumSetDataLoader$1;)V

    iput-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mSourceListener:Lcn/nubia/gallery3d/app/AlbumSetDataLoader$MySourceListener;

    .line 83
    invoke-static {p2}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/gallery3d/data/MediaSet;

    iput-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mSource:Lcn/nubia/gallery3d/data/MediaSet;

    .line 84
    new-array p2, p3, [Lcn/nubia/gallery3d/data/MediaItem;

    iput-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcn/nubia/gallery3d/data/MediaItem;

    .line 85
    new-array p2, p3, [Lcn/nubia/gallery3d/data/MediaSet;

    iput-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mData:[Lcn/nubia/gallery3d/data/MediaSet;

    .line 86
    new-array p2, p3, [I

    iput-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mTotalCount:[I

    .line 87
    new-array p2, p3, [J

    iput-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mItemVersion:[J

    .line 88
    new-array p3, p3, [J

    iput-object p3, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mSetVersion:[J

    .line 89
    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 90
    invoke-static {p3, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 92
    new-instance p2, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$1;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$1;-><init>(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Lcn/nubia/gallery3d/app/LoadingListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mLoadingListener:Lcn/nubia/gallery3d/app/LoadingListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Lcn/nubia/gallery3d/app/AlbumSetDataLoader$DataListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mDataListener:Lcn/nubia/gallery3d/app/AlbumSetDataLoader$DataListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)I
    .locals 0

    .line 41
    iget p0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I

    return p0
.end method

.method static synthetic access$1102(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$1200(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)[Lcn/nubia/gallery3d/data/MediaItem;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcn/nubia/gallery3d/data/MediaItem;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)[J
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mItemVersion:[J

    return-object p0
.end method

.method static synthetic access$1400(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)[Lcn/nubia/gallery3d/data/MediaSet;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mData:[Lcn/nubia/gallery3d/data/MediaSet;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)[I
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mTotalCount:[I

    return-object p0
.end method

.method static synthetic access$1600(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)I
    .locals 0

    .line 41
    iget p0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I

    return p0
.end method

.method static synthetic access$1700(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1800(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mSource:Lcn/nubia/gallery3d/data/MediaSet;

    return-object p0
.end method

.method static synthetic access$1900(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mReloadTask:Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)[J
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mSetVersion:[J

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)I
    .locals 0

    .line 41
    iget p0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mContentStart:I

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)I
    .locals 0

    .line 41
    iget p0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I

    return p0
.end method

.method static synthetic access$602(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I

    return p1
.end method

.method static synthetic access$700(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$702(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;J)J
    .locals 0

    .line 41
    iput-wide p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$900(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)I
    .locals 0

    .line 41
    iget p0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mSize:I

    return p0
.end method

.method static synthetic access$902(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mSize:I

    return p1
.end method

.method private assertIsActive(I)V
    .locals 3

    .line 125
    iget v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const/4 p1, 0x2

    iget v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "%s not in (%s, %s)"

    .line 126
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearSlot(I)V
    .locals 3

    .line 162
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mData:[Lcn/nubia/gallery3d/data/MediaSet;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 163
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcn/nubia/gallery3d/data/MediaItem;

    aput-object v1, v0, p1

    .line 164
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mTotalCount:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 165
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mItemVersion:[J

    const-wide/16 v1, -0x1

    aput-wide v1, v0, p1

    .line 166
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mSetVersion:[J

    aput-wide v1, v0, p1

    return-void
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

    .line 317
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 318
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    .line 319
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 318
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 321
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 325
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private setContentWindow(II)V
    .locals 4

    .line 170
    iget v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mContentStart:I

    if-ne p1, v0, :cond_0

    iget v1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I

    if-ne p2, v1, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcn/nubia/gallery3d/data/MediaItem;

    array-length v1, v1

    .line 174
    iget v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I

    .line 176
    iput p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mContentStart:I

    .line 177
    iput p2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I

    if-ge p1, v2, :cond_3

    if-lt v0, p2, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    if-ge v0, p1, :cond_2

    .line 185
    rem-int v3, v0, v1

    invoke-direct {p0, v3}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->clearSlot(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge p2, v2, :cond_4

    .line 188
    rem-int p1, p2, v1

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->clearSlot(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v0, v2, :cond_4

    .line 181
    rem-int p1, v0, v1

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->clearSlot(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 191
    :cond_4
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mReloadTask:Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->notifyDirty()V

    return-void
.end method


# virtual methods
.method public getActiveStart()I
    .locals 1

    .line 150
    iget v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I

    return v0
.end method

.method public getCoverItem(I)Lcn/nubia/gallery3d/data/MediaItem;
    .locals 2

    .line 140
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->assertIsActive(I)V

    .line 141
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcn/nubia/gallery3d/data/MediaItem;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 2

    .line 133
    iget v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mData:[Lcn/nubia/gallery3d/data/MediaSet;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTotalCount(I)I
    .locals 2

    .line 145
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->assertIsActive(I)V

    .line 146
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mTotalCount:[I

    array-length v1, v0

    rem-int/2addr p1, v1

    aget p1, v0, p1

    return p1
.end method

.method public isActive(I)Z
    .locals 1

    .line 154
    iget v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public pause()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mReloadTask:Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->terminate()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mReloadTask:Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    .line 115
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mSource:Lcn/nubia/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mSourceListener:Lcn/nubia/gallery3d/app/AlbumSetDataLoader$MySourceListener;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;->removeContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mSource:Lcn/nubia/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mSourceListener:Lcn/nubia/gallery3d/app/AlbumSetDataLoader$MySourceListener;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;->addContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V

    .line 120
    new-instance v0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;-><init>(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;Lcn/nubia/gallery3d/app/AlbumSetDataLoader$1;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mReloadTask:Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    .line 121
    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->start()V

    return-void
.end method

.method public setActiveWindow(II)V
    .locals 4

    .line 195
    iget v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-gt p1, p2, :cond_1

    sub-int v1, p2, p1

    .line 197
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcn/nubia/gallery3d/data/MediaItem;

    array-length v2, v2

    if-gt v1, v2, :cond_1

    iget v1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mSize:I

    if-gt p2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 200
    iput p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I

    .line 201
    iput p2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I

    .line 203
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcn/nubia/gallery3d/data/MediaItem;

    array-length v1, v1

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    add-int v2, p1, p2

    .line 207
    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mSize:I

    sub-int/2addr v3, v1

    .line 208
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 207
    invoke-static {v2, v0, v3}, Lcn/nubia/gallery3d/common/Utils;->clamp(III)I

    move-result v0

    add-int/2addr v1, v0

    .line 209
    iget v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 210
    iget v2, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mContentStart:I

    if-gt v2, p1, :cond_3

    iget p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I

    if-lt p1, p2, :cond_3

    sub-int p1, v0, v2

    .line 211
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 p2, 0x4

    if-le p1, p2, :cond_4

    .line 212
    :cond_3
    invoke-direct {p0, v0, v1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->setContentWindow(II)V

    :cond_4
    return-void
.end method

.method public setLoadingListener(Lcn/nubia/gallery3d/app/LoadingListener;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mLoadingListener:Lcn/nubia/gallery3d/app/LoadingListener;

    return-void
.end method

.method public setModelListener(Lcn/nubia/gallery3d/app/AlbumSetDataLoader$DataListener;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mDataListener:Lcn/nubia/gallery3d/app/AlbumSetDataLoader$DataListener;

    return-void
.end method

.method public size()I
    .locals 1

    .line 158
    iget v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->mSize:I

    return v0
.end method
