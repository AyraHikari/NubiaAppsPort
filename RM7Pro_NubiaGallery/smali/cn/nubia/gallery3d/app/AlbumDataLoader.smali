.class public Lcn/nubia/gallery3d/app/AlbumDataLoader;
.super Ljava/lang/Object;
.source "AlbumDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;,
        Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateContent;,
        Lcn/nubia/gallery3d/app/AlbumDataLoader$GetUpdateInfo;,
        Lcn/nubia/gallery3d/app/AlbumDataLoader$UpdateInfo;,
        Lcn/nubia/gallery3d/app/AlbumDataLoader$MySourceListener;,
        Lcn/nubia/gallery3d/app/AlbumDataLoader$DataListener;
    }
.end annotation


# static fields
.field private static final DATA_CACHE_SIZE:I = 0x3e8

.field private static final MAX_LOAD_COUNT:I = 0x40

.field private static final MIN_LOAD_COUNT:I = 0x20

.field private static final MSG_LOAD_FINISH:I = 0x2

.field private static final MSG_LOAD_START:I = 0x1

.field private static final MSG_RUN_OBJECT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AlbumDataAdapter"


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mData:[Lcn/nubia/gallery3d/data/MediaItem;

.field private mDataListener:Lcn/nubia/gallery3d/app/AlbumDataLoader$DataListener;

.field private final mItemVersion:[J

.field private mLoadingListener:Lcn/nubia/gallery3d/app/LoadingListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mReloadTask:Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;

.field private final mSetVersion:[J

.field private mSize:I

.field private final mSource:Lcn/nubia/gallery3d/data/MediaSet;

.field private mSourceListener:Lcn/nubia/gallery3d/app/AlbumDataLoader$MySourceListener;

.field private mSourceVersion:J

.field private final mTotalCount:[I


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/data/MediaSet;)V
    .locals 4

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    .line 64
    iput v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    .line 66
    iput v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mContentStart:I

    .line 67
    iput v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    const-wide/16 v1, -0x1

    .line 70
    iput-wide v1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mSourceVersion:J

    .line 73
    iput v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mSize:I

    .line 76
    new-instance v0, Lcn/nubia/gallery3d/app/AlbumDataLoader$MySourceListener;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcn/nubia/gallery3d/app/AlbumDataLoader$MySourceListener;-><init>(Lcn/nubia/gallery3d/app/AlbumDataLoader;Lcn/nubia/gallery3d/app/AlbumDataLoader$1;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mSourceListener:Lcn/nubia/gallery3d/app/AlbumDataLoader$MySourceListener;

    .line 82
    iput-object p2, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mSource:Lcn/nubia/gallery3d/data/MediaSet;

    const/16 p2, 0x3e8

    new-array v0, p2, [Lcn/nubia/gallery3d/data/MediaItem;

    .line 84
    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mData:[Lcn/nubia/gallery3d/data/MediaItem;

    new-array v0, p2, [J

    .line 85
    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mItemVersion:[J

    new-array v3, p2, [J

    .line 86
    iput-object v3, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mSetVersion:[J

    new-array p2, p2, [I

    .line 87
    iput-object p2, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mTotalCount:[I

    .line 88
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 89
    invoke-static {v3, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 91
    new-instance p2, Lcn/nubia/gallery3d/app/AlbumDataLoader$1;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcn/nubia/gallery3d/app/AlbumDataLoader$1;-><init>(Lcn/nubia/gallery3d/app/AlbumDataLoader;Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/app/AlbumDataLoader;)Lcn/nubia/gallery3d/app/LoadingListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mLoadingListener:Lcn/nubia/gallery3d/app/LoadingListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/gallery3d/app/AlbumDataLoader;)I
    .locals 0

    .line 40
    iget p0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mSize:I

    return p0
.end method

.method static synthetic access$1002(Lcn/nubia/gallery3d/app/AlbumDataLoader;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mSize:I

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/gallery3d/app/AlbumDataLoader;)[J
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mSetVersion:[J

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/gallery3d/app/AlbumDataLoader;)Lcn/nubia/gallery3d/app/AlbumDataLoader$DataListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mDataListener:Lcn/nubia/gallery3d/app/AlbumDataLoader$DataListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/gallery3d/app/AlbumDataLoader;)[I
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mTotalCount:[I

    return-object p0
.end method

.method static synthetic access$1400(Lcn/nubia/gallery3d/app/AlbumDataLoader;)[J
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mItemVersion:[J

    return-object p0
.end method

.method static synthetic access$1500(Lcn/nubia/gallery3d/app/AlbumDataLoader;)[Lcn/nubia/gallery3d/data/MediaItem;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mData:[Lcn/nubia/gallery3d/data/MediaItem;

    return-object p0
.end method

.method static synthetic access$1600(Lcn/nubia/gallery3d/app/AlbumDataLoader;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1700(Lcn/nubia/gallery3d/app/AlbumDataLoader;)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mSource:Lcn/nubia/gallery3d/data/MediaSet;

    return-object p0
.end method

.method static synthetic access$1800(Lcn/nubia/gallery3d/app/AlbumDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/app/AlbumDataLoader;)Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/gallery3d/app/AlbumDataLoader;)I
    .locals 0

    .line 40
    iget p0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    return p0
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/app/AlbumDataLoader;)I
    .locals 0

    .line 40
    iget p0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    return p0
.end method

.method static synthetic access$502(Lcn/nubia/gallery3d/app/AlbumDataLoader;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/gallery3d/app/AlbumDataLoader;)I
    .locals 0

    .line 40
    iget p0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mContentStart:I

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/gallery3d/app/AlbumDataLoader;)I
    .locals 0

    .line 40
    iget p0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    return p0
.end method

.method static synthetic access$702(Lcn/nubia/gallery3d/app/AlbumDataLoader;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    return p1
.end method

.method static synthetic access$800(Lcn/nubia/gallery3d/app/AlbumDataLoader;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$802(Lcn/nubia/gallery3d/app/AlbumDataLoader;J)J
    .locals 0

    .line 40
    iput-wide p1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mSourceVersion:J

    return-wide p1
.end method

.method private assertIsActive(I)V
    .locals 3

    .line 126
    iget v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget v2, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const/4 p1, 0x2

    iget v2, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "%s not in (%s, %s)"

    .line 127
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearSlot(I)V
    .locals 3

    .line 159
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mData:[Lcn/nubia/gallery3d/data/MediaItem;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 160
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mItemVersion:[J

    const-wide/16 v1, -0x1

    aput-wide v1, v0, p1

    .line 161
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mSetVersion:[J

    aput-wide v1, v0, p1

    .line 162
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mTotalCount:[I

    const/4 v1, 0x0

    aput v1, v0, p1

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

    .line 229
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 230
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    .line 231
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 230
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 233
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 237
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private setContentWindow(II)V
    .locals 3

    .line 166
    iget v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mContentStart:I

    if-ne p1, v0, :cond_0

    iget v1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    if-ne p2, v1, :cond_0

    return-void

    .line 167
    :cond_0
    iget v1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iput p1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mContentStart:I

    .line 173
    iput p2, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    .line 174
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p1, v1, :cond_3

    if-lt v0, p2, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    if-ge v0, p1, :cond_2

    .line 183
    rem-int/lit16 v2, v0, 0x3e8

    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->clearSlot(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge p2, v1, :cond_4

    .line 186
    rem-int/lit16 p1, p2, 0x3e8

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->clearSlot(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v0, v1, :cond_4

    .line 179
    rem-int/lit16 p1, v0, 0x3e8

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->clearSlot(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 189
    :cond_4
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->notifyDirty()V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 174
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public get(I)Lcn/nubia/gallery3d/data/MediaItem;
    .locals 2

    .line 133
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 138
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mData:[Lcn/nubia/gallery3d/data/MediaItem;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getActiveStart()I
    .locals 1

    .line 147
    iget v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    return v0
.end method

.method public getTotalCount(I)I
    .locals 2

    .line 142
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->assertIsActive(I)V

    .line 143
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mTotalCount:[I

    array-length v1, v0

    rem-int/2addr p1, v1

    aget p1, v0, p1

    return p1
.end method

.method public isActive(I)Z
    .locals 1

    .line 151
    iget v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

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

    .line 116
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->terminate()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;

    .line 120
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mSource:Lcn/nubia/gallery3d/data/MediaSet;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mSourceListener:Lcn/nubia/gallery3d/app/AlbumDataLoader$MySourceListener;

    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;->removeContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mSource:Lcn/nubia/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mSourceListener:Lcn/nubia/gallery3d/app/AlbumDataLoader$MySourceListener;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;->addContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V

    .line 111
    new-instance v0, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;-><init>(Lcn/nubia/gallery3d/app/AlbumDataLoader;Lcn/nubia/gallery3d/app/AlbumDataLoader$1;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;

    .line 112
    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->start()V

    return-void
.end method

.method public setActiveWindow(II)V
    .locals 4

    .line 193
    iget v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-gt p1, p2, :cond_1

    sub-int v1, p2, p1

    .line 195
    iget-object v2, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mData:[Lcn/nubia/gallery3d/data/MediaItem;

    array-length v2, v2

    if-gt v1, v2, :cond_1

    iget v1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mSize:I

    if-gt p2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 198
    iget-object v1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mData:[Lcn/nubia/gallery3d/data/MediaItem;

    array-length v1, v1

    .line 199
    iput p1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    .line 200
    iput p2, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    add-int v2, p1, p2

    .line 205
    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mSize:I

    sub-int/2addr v3, v1

    .line 206
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 205
    invoke-static {v2, v0, v3}, Lcn/nubia/gallery3d/common/Utils;->clamp(III)I

    move-result v0

    add-int/2addr v1, v0

    .line 207
    iget v2, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 208
    iget v2, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mContentStart:I

    if-gt v2, p1, :cond_3

    iget p1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    if-lt p1, p2, :cond_3

    sub-int p1, v0, v2

    .line 209
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 p2, 0x20

    if-le p1, p2, :cond_4

    .line 210
    :cond_3
    invoke-direct {p0, v0, v1}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->setContentWindow(II)V

    :cond_4
    return-void
.end method

.method public setDataListener(Lcn/nubia/gallery3d/app/AlbumDataLoader$DataListener;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mDataListener:Lcn/nubia/gallery3d/app/AlbumDataLoader$DataListener;

    return-void
.end method

.method public setLoadingListener(Lcn/nubia/gallery3d/app/LoadingListener;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mLoadingListener:Lcn/nubia/gallery3d/app/LoadingListener;

    return-void
.end method

.method public size()I
    .locals 1

    .line 155
    iget v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader;->mSize:I

    return v0
.end method
