.class public Lcn/nubia/music/app/download/PathManager;
.super Ljava/lang/Object;
.source "PathManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/app/download/PathManager$PathTag;
    }
.end annotation


# static fields
.field private static final ALBUM_THUMBS:Ljava/lang/String; = "albumthumbs"

.field private static final IMAGE:Ljava/lang/String; = "image"

.field private static final LYRIC:Ljava/lang/String; = "lyric"

.field private static NUBIA:Ljava/lang/String; = null

.field private static final RINGS:Ljava/lang/String; = "rings"

.field private static final SONGS:Ljava/lang/String; = "songs"

.field private static final START:Ljava/lang/String; = "start"

.field private static mPathManager:Lcn/nubia/music/app/download/PathManager;


# instance fields
.field private mCachePath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcn/nubia/music/app/download/PathManager$PathTag;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStorePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "NubiaMusic"

    sput-object v0, Lcn/nubia/music/app/download/PathManager;->NUBIA:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->isNubiaManufacturer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    const-string v0, "ZTEMusic"

    sput-object v0, Lcn/nubia/music/app/download/PathManager;->NUBIA:Ljava/lang/String;

    .line 42
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcn/nubia/music/app/download/PathManager;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/app/download/PathManager;->mMap:Ljava/util/Map;

    .line 58
    iget-object v0, p0, Lcn/nubia/music/app/download/PathManager;->mMap:Ljava/util/Map;

    sget-object v1, Lcn/nubia/music/app/download/PathManager$PathTag;->START:Lcn/nubia/music/app/download/PathManager$PathTag;

    const-string v2, "start"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcn/nubia/music/app/download/PathManager;->mMap:Ljava/util/Map;

    sget-object v1, Lcn/nubia/music/app/download/PathManager$PathTag;->SONGS:Lcn/nubia/music/app/download/PathManager$PathTag;

    const-string v2, "songs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcn/nubia/music/app/download/PathManager;->mMap:Ljava/util/Map;

    sget-object v1, Lcn/nubia/music/app/download/PathManager$PathTag;->RINGS:Lcn/nubia/music/app/download/PathManager$PathTag;

    const-string v2, "rings"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcn/nubia/music/app/download/PathManager;->mMap:Ljava/util/Map;

    sget-object v1, Lcn/nubia/music/app/download/PathManager$PathTag;->IMAGE:Lcn/nubia/music/app/download/PathManager$PathTag;

    const-string v2, "image"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcn/nubia/music/app/download/PathManager;->mMap:Ljava/util/Map;

    sget-object v1, Lcn/nubia/music/app/download/PathManager$PathTag;->LYRIC:Lcn/nubia/music/app/download/PathManager$PathTag;

    const-string v2, "lyric"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcn/nubia/music/app/download/PathManager;->mMap:Ljava/util/Map;

    sget-object v1, Lcn/nubia/music/app/download/PathManager$PathTag;->ALBUM_THUMBS:Lcn/nubia/music/app/download/PathManager$PathTag;

    const-string v2, "albumthumbs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method private getFreeSize(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 145
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    .line 147
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 149
    mul-long/2addr v0, v2

    const/16 v2, 0x14

    shr-long/2addr v0, v2

    return-wide v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/nubia/music/app/download/PathManager;
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcn/nubia/music/app/download/PathManager;->mPathManager:Lcn/nubia/music/app/download/PathManager;

    if-nez v0, :cond_0

    .line 48
    const-class v1, Lcn/nubia/music/app/download/PathManager;

    monitor-enter v1

    .line 49
    :try_start_0
    new-instance v0, Lcn/nubia/music/app/download/PathManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/nubia/music/app/download/PathManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/music/app/download/PathManager;->mPathManager:Lcn/nubia/music/app/download/PathManager;

    .line 50
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    sget-object v0, Lcn/nubia/music/app/download/PathManager;->mPathManager:Lcn/nubia/music/app/download/PathManager;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isSDCardMounted()Z
    .locals 2

    .prologue
    .line 72
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSecondStorageMounted()Z
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getSecondaryStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCacheFreeSize()J
    .locals 4

    .prologue
    .line 156
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcn/nubia/music/app/download/PathManager;->mCachePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    .line 158
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 160
    mul-long/2addr v0, v2

    const/16 v2, 0x14

    shr-long/2addr v0, v2

    return-wide v0
.end method

.method public getCachePath(Lcn/nubia/music/app/download/PathManager$PathTag;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getSecondaryStorageMgr()Ljava/io/File;

    move-result-object v0

    .line 99
    invoke-direct {p0}, Lcn/nubia/music/app/download/PathManager;->isSDCardMounted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getExternalStorageMgr()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/music/app/download/PathManager;->NUBIA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcn/nubia/music/app/download/PathManager;->mMap:Ljava/util/Map;

    .line 101
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/app/download/PathManager;->mCachePath:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/app/download/PathManager;->mCachePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 112
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/music/app/download/PathManager;->mCachePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    new-instance v1, Lcn/nubia/music/app/download/PathManager$1;

    invoke-direct {v1, p0, v0}, Lcn/nubia/music/app/download/PathManager$1;-><init>(Lcn/nubia/music/app/download/PathManager;Ljava/io/File;)V

    invoke-static {v1}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    .line 121
    iget-object v0, p0, Lcn/nubia/music/app/download/PathManager;->mCachePath:Ljava/lang/String;

    return-object v0

    .line 103
    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/music/app/download/PathManager;->isSecondStorageMounted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/music/app/download/PathManager;->NUBIA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcn/nubia/music/app/download/PathManager;->mMap:Ljava/util/Map;

    .line 105
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/app/download/PathManager;->mCachePath:Ljava/lang/String;

    goto :goto_0

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/music/app/download/PathManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/music/app/download/PathManager;->NUBIA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcn/nubia/music/app/download/PathManager;->mMap:Ljava/util/Map;

    .line 108
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/app/download/PathManager;->mCachePath:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/app/download/PathManager;->mCachePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getSDCardCachePath(Lcn/nubia/music/app/download/PathManager$PathTag;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/app/download/PathManager;->mCachePath:Ljava/lang/String;

    .line 127
    invoke-direct {p0}, Lcn/nubia/music/app/download/PathManager;->isSDCardMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getExternalStorageMgr()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/music/app/download/PathManager;->NUBIA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcn/nubia/music/app/download/PathManager;->mMap:Ljava/util/Map;

    .line 129
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/app/download/PathManager;->mCachePath:Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/app/download/PathManager;->mCachePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/app/download/PathManager;->mCachePath:Ljava/lang/String;

    return-object v0
.end method

.method public getStorePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    invoke-direct {p0}, Lcn/nubia/music/app/download/PathManager;->isSDCardMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getExternalStorageMgr()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/app/download/PathManager;->mStorePath:Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/app/download/PathManager;->mStorePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/app/download/PathManager;->mStorePath:Ljava/lang/String;

    return-object v0
.end method

.method public hasEnoughCache(Ljava/lang/String;J)Z
    .locals 4

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcn/nubia/music/app/download/PathManager;->getFreeSize(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x14

    sub-long/2addr v0, v2

    cmp-long v0, v0, p2

    if-lez v0, :cond_0

    .line 168
    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
