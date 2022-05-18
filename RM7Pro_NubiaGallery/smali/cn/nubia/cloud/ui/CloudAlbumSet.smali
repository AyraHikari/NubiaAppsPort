.class public Lcn/nubia/cloud/ui/CloudAlbumSet;
.super Lcn/nubia/gallery3d/data/MediaSet;
.source "CloudAlbumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;,
        Lcn/nubia/cloud/ui/CloudAlbumSet$AlbumChangeListener;,
        Lcn/nubia/cloud/ui/CloudAlbumSet$Listener;
    }
.end annotation


# static fields
.field private static ALBUMSETID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CloudAlbumSet"


# instance fields
.field private mAlbumChangeListener:Lcn/nubia/cloud/ui/CloudAlbumSet$AlbumChangeListener;

.field private mAlbums:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcn/nubia/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

.field private mCurrentBuckets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/ui/CloudAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private mDatabaseHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

.field private mFirstReloadDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcn/nubia/cloud/ui/CloudAlbumSet$Listener;

.field private mNeedreload:Z

.field private mNewAddedAlbum:Lcn/nubia/cloud/ui/CloudAlbum;

.field private mRemovedAlbums:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcn/nubia/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusListener:Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;

.field private mTempAlbums:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcn/nubia/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V
    .locals 4

    .line 57
    invoke-static {}, Lcn/nubia/cloud/ui/CloudAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/data/MediaSet;-><init>(Lcn/nubia/gallery3d/data/Path;J)V

    .line 31
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mAlbums:Ljava/util/Vector;

    .line 32
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mTempAlbums:Ljava/util/Vector;

    .line 33
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mRemovedAlbums:Ljava/util/Vector;

    .line 34
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mCurrentBuckets:Ljava/util/HashMap;

    .line 35
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mFirstReloadDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    new-instance p1, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;-><init>(Lcn/nubia/cloud/ui/CloudAlbumSet;Lcn/nubia/cloud/ui/CloudAlbumSet$1;)V

    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mStatusListener:Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;

    const-wide/16 v2, 0x0

    .line 40
    iput-wide v2, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->time:J

    .line 41
    iput-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mNewAddedAlbum:Lcn/nubia/cloud/ui/CloudAlbum;

    .line 42
    iput-boolean v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mNeedreload:Z

    .line 47
    iput-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mListener:Lcn/nubia/cloud/ui/CloudAlbumSet$Listener;

    .line 53
    iput-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mAlbumChangeListener:Lcn/nubia/cloud/ui/CloudAlbumSet$AlbumChangeListener;

    .line 54
    iput-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    .line 55
    iput-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mDatabaseHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    .line 58
    iput-object p2, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 59
    new-instance p1, Landroid/os/Handler;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/cloud/ui/CloudAlbumSet;)Ljava/util/HashMap;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mCurrentBuckets:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/cloud/ui/CloudAlbumSet;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/cloud/ui/CloudAlbumSet;)Lcn/nubia/cloud/ui/CloudAlbum;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mNewAddedAlbum:Lcn/nubia/cloud/ui/CloudAlbum;

    return-object p0
.end method

.method static synthetic access$202(Lcn/nubia/cloud/ui/CloudAlbumSet;Lcn/nubia/cloud/ui/CloudAlbum;)Lcn/nubia/cloud/ui/CloudAlbum;
    .locals 0

    .line 28
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mNewAddedAlbum:Lcn/nubia/cloud/ui/CloudAlbum;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/cloud/ui/CloudAlbumSet;)Lcn/nubia/gallery3d/app/GalleryApp;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    return-object p0
.end method

.method static synthetic access$408()I
    .locals 2

    .line 28
    sget v0, Lcn/nubia/cloud/ui/CloudAlbumSet;->ALBUMSETID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcn/nubia/cloud/ui/CloudAlbumSet;->ALBUMSETID:I

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/cloud/ui/CloudAlbumSet;)Ljava/util/Vector;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mAlbums:Ljava/util/Vector;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/cloud/ui/CloudAlbumSet;)Lcn/nubia/cloud/ui/CloudAlbumSet$Listener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mListener:Lcn/nubia/cloud/ui/CloudAlbumSet$Listener;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/cloud/ui/CloudAlbumSet;)Lcn/nubia/cloud/ui/CloudAlbumSet$AlbumChangeListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mAlbumChangeListener:Lcn/nubia/cloud/ui/CloudAlbumSet$AlbumChangeListener;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/cloud/ui/CloudAlbumSet;)Ljava/util/Vector;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mTempAlbums:Ljava/util/Vector;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/cloud/ui/CloudAlbumSet;)Ljava/util/Vector;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mRemovedAlbums:Ljava/util/Vector;

    return-object p0
.end method

.method private addImageToCloudAlbum(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    return-void

    .line 212
    :cond_0
    new-instance v1, Lcn/nubia/improve/xcloud/CloudBucket;

    invoke-direct {v1}, Lcn/nubia/improve/xcloud/CloudBucket;-><init>()V

    .line 213
    invoke-direct {p0, p1, v1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->getBucketName(Ljava/lang/String;Lcn/nubia/improve/xcloud/CloudBucket;)Ljava/lang/String;

    .line 215
    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mCurrentBuckets:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    iget-object v3, v1, Lcn/nubia/improve/xcloud/CloudBucket;->bucketName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mCurrentBuckets:Ljava/util/HashMap;

    iget-object v1, v1, Lcn/nubia/improve/xcloud/CloudBucket;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/ui/CloudAlbum;

    goto :goto_0

    .line 218
    :cond_1
    new-instance v8, Lcn/nubia/cloud/ui/CloudAlbum;

    const-string v2, "/nubiacloud/all/cloud/"

    invoke-static {v2}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v2

    iget-object v3, v1, Lcn/nubia/improve/xcloud/CloudBucket;->bucketPath:Ljava/lang/String;

    .line 219
    invoke-static {v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    sget v5, Lcn/nubia/cloud/ui/CloudAlbumSet;->ALBUMSETID:I

    add-int/lit8 v2, v5, 0x1

    sput v2, Lcn/nubia/cloud/ui/CloudAlbumSet;->ALBUMSETID:I

    iget-object v6, v1, Lcn/nubia/improve/xcloud/CloudBucket;->bucketName:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcn/nubia/cloud/ui/CloudAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 221
    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mCurrentBuckets:Ljava/util/HashMap;

    iget-object v1, v1, Lcn/nubia/improve/xcloud/CloudBucket;->bucketName:Ljava/lang/String;

    invoke-virtual {v2, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "/"

    .line 222
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 223
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcn/nubia/cloud/ui/CloudAlbum;->setCloudPath(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mAlbums:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object v0, v8

    .line 226
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/cloud/ui/CloudAlbum;->addLocalItem(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private getBucketName(Ljava/lang/String;Lcn/nubia/improve/xcloud/CloudBucket;)Ljava/lang/String;
    .locals 3

    const-string v0, "/"

    .line 254
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 255
    iput-object p1, p2, Lcn/nubia/improve/xcloud/CloudBucket;->bucketPath:Ljava/lang/String;

    .line 256
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 256
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 258
    iput-object p1, p2, Lcn/nubia/improve/xcloud/CloudBucket;->bucketName:Ljava/lang/String;

    return-object p1
.end method

.method private getLocalItems()V
    .locals 10

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state=106"

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND deleted!=\'1\'"

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND taskid!=0"

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mDatabaseHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    if-nez v1, :cond_0

    .line 173
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mDatabaseHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    .line 175
    :cond_0
    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mDatabaseHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 175
    invoke-virtual/range {v2 .. v9}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 179
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "cloudpath"

    .line 180
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "localpath"

    .line 181
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 182
    invoke-direct {p0, v1, v2, v3}, Lcn/nubia/cloud/ui/CloudAlbumSet;->addImageToCloudAlbum(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 185
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 186
    throw v1

    .line 188
    :cond_2
    :goto_1
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mRemovedAlbums:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 189
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mAlbums:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/MediaSet;

    .line 190
    move-object v2, v1

    check-cast v2, Lcn/nubia/cloud/ui/CloudAlbum;

    invoke-virtual {v2}, Lcn/nubia/cloud/ui/CloudAlbum;->updateLocalItem()Z

    .line 191
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 192
    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mRemovedAlbums:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 195
    :cond_4
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mRemovedAlbums:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/MediaSet;

    .line 196
    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mAlbums:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 197
    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mCurrentBuckets:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 200
    :cond_5
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/cloud/ui/CloudAlbumSet$2;

    invoke-direct {v1, p0}, Lcn/nubia/cloud/ui/CloudAlbumSet$2;-><init>(Lcn/nubia/cloud/ui/CloudAlbumSet;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getXCloudAlbum()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 121
    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudManager;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/xcloud/CloudManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    .line 123
    :cond_0
    invoke-direct {p0}, Lcn/nubia/cloud/ui/CloudAlbumSet;->getLocalItems()V

    .line 124
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-virtual {v0}, Lcn/nubia/improve/xcloud/CloudManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mStatusListener:Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;

    invoke-virtual {v0, v1}, Lcn/nubia/improve/xcloud/CloudManager;->setListener(Lcn/nubia/improve/xcloud/CloudManager$ListCloudAlbumListener;)V

    .line 126
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    const-string v1, "/apps/nubia_cloud"

    invoke-virtual {v0, v1}, Lcn/nubia/improve/xcloud/CloudManager;->list(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private printAlbums()V
    .locals 5

    .line 240
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mCurrentBuckets:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 242
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 244
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 245
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/ui/CloudAlbum;

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " printAlbums key :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " album cloud path :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcn/nubia/cloud/ui/CloudAlbum;->getCloudPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CloudAlbumSet"

    invoke-static {v2, v1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private reloadCloudData()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 159
    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 158
    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudManager;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/xcloud/CloudManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    .line 161
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-virtual {v0}, Lcn/nubia/improve/xcloud/CloudManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mStatusListener:Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;

    invoke-virtual {v0, v1}, Lcn/nubia/improve/xcloud/CloudManager;->setListener(Lcn/nubia/improve/xcloud/CloudManager$ListCloudAlbumListener;)V

    .line 163
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    const-string v1, "/apps/nubia_cloud"

    invoke-virtual {v0, v1}, Lcn/nubia/improve/xcloud/CloudManager;->list(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addNewItem2CloudAlbum(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 230
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/cloud/ui/CloudAlbumSet;->addImageToCloudAlbum(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 231
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcn/nubia/cloud/ui/CloudAlbumSet$3;

    invoke-direct {p2, p0}, Lcn/nubia/cloud/ui/CloudAlbumSet$3;-><init>(Lcn/nubia/cloud/ui/CloudAlbumSet;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public clearCache()V
    .locals 2

    .line 331
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mTempAlbums:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 332
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mRemovedAlbums:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 333
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mAlbums:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 334
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mCurrentBuckets:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 335
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/cloud/ui/CloudAlbumSet$4;

    invoke-direct {v1, p0}, Lcn/nubia/cloud/ui/CloudAlbumSet$4;-><init>(Lcn/nubia/cloud/ui/CloudAlbumSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public deleteAlbums(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 349
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "."

    .line 350
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    .line 352
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 353
    iget-object v3, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mAlbums:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/data/MediaSet;

    .line 354
    move-object v5, v4

    check-cast v5, Lcn/nubia/cloud/ui/CloudAlbum;

    invoke-virtual {v5}, Lcn/nubia/cloud/ui/CloudAlbum;->getCloudPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 355
    invoke-virtual {v5, v1}, Lcn/nubia/cloud/ui/CloudAlbum;->removePath(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 358
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mRemovedAlbums:Ljava/util/Vector;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 364
    :cond_3
    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mAlbums:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/data/MediaSet;

    .line 365
    move-object v4, v3

    check-cast v4, Lcn/nubia/cloud/ui/CloudAlbum;

    invoke-virtual {v4}, Lcn/nubia/cloud/ui/CloudAlbum;->getCloudPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 366
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mRemovedAlbums:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 372
    :cond_5
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mAlbums:Ljava/util/Vector;

    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mRemovedAlbums:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->removeAll(Ljava/util/Collection;)Z

    .line 374
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcn/nubia/cloud/ui/CloudAlbumSet$5;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/ui/CloudAlbumSet$5;-><init>(Lcn/nubia/cloud/ui/CloudAlbumSet;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getAlbum(I)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 1

    .line 131
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mAlbums:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 132
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mAlbums:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/MediaSet;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 77
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10023a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;
    .locals 1

    .line 64
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mAlbums:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 65
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mAlbums:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/data/MediaSet;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mAlbums:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public isFirstReloadDone()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mFirstReloadDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcn/nubia/cloud/ui/CloudAlbumSet;->reload()J

    :cond_0
    return v0
.end method

.method public needReload()V
    .locals 1

    const/4 v0, 0x1

    .line 383
    iput-boolean v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mNeedreload:Z

    return-void
.end method

.method public reSetForceReloadFlag()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mFirstReloadDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public reload()J
    .locals 8

    .line 91
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mFirstReloadDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->time:J

    .line 93
    invoke-direct {p0}, Lcn/nubia/cloud/ui/CloudAlbumSet;->getXCloudAlbum()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mAlbums:Ljava/util/Vector;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 97
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mAlbums:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    .line 99
    iget-object v4, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mAlbums:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaSet;->reload()J

    move-result-wide v4

    .line 100
    iget-wide v6, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mDataVersion:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 106
    :goto_1
    iget-object v3, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mRemovedAlbums:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 108
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mRemovedAlbums:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    goto :goto_2

    :cond_3
    move v2, v0

    .line 111
    :goto_2
    iget-boolean v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mNeedreload:Z

    if-nez v0, :cond_4

    if-eqz v2, :cond_5

    .line 112
    :cond_4
    iput-boolean v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mNeedreload:Z

    .line 113
    invoke-static {}, Lcn/nubia/cloud/ui/CloudAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mDataVersion:J

    .line 115
    :cond_5
    iget-wide v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mDataVersion:J

    return-wide v0
.end method

.method public reloadData()V
    .locals 2

    const-string v0, "CloudAlbumSet"

    const-string v1, "cloudalbumset reloadData "

    .line 146
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0}, Lcn/nubia/cloud/ui/CloudAlbumSet;->reloadCloudData()V

    .line 148
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/cloud/ui/CloudAlbumSet$1;

    invoke-direct {v1, p0}, Lcn/nubia/cloud/ui/CloudAlbumSet$1;-><init>(Lcn/nubia/cloud/ui/CloudAlbumSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAlbumChangeListener(Lcn/nubia/cloud/ui/CloudAlbumSet$AlbumChangeListener;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mAlbumChangeListener:Lcn/nubia/cloud/ui/CloudAlbumSet$AlbumChangeListener;

    return-void
.end method

.method public setListener(Lcn/nubia/cloud/ui/CloudAlbumSet$Listener;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet;->mListener:Lcn/nubia/cloud/ui/CloudAlbumSet$Listener;

    return-void
.end method
