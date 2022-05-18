.class public Lcn/nubia/gallery3d/util/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# static fields
.field private static final KEY_CACHE_UP_TO_DATE:Ljava/lang/String; = "cache-up-to-date"

.field private static final TAG:Ljava/lang/String; = "CacheManager"

.field private static sCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/nubia/gallery3d/common/BlobCache;",
            ">;"
        }
    .end annotation
.end field

.field private static sOldCheckDone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Lcn/nubia/gallery3d/util/CacheManager;->sOldCheckDone:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCache(Landroid/content/Context;Ljava/lang/String;III)Lcn/nubia/gallery3d/common/BlobCache;
    .locals 8

    .line 43
    sget-object v0, Lcn/nubia/gallery3d/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-boolean v1, Lcn/nubia/gallery3d/util/CacheManager;->sOldCheckDone:Z

    if-nez v1, :cond_0

    .line 45
    invoke-static {p0}, Lcn/nubia/gallery3d/util/CacheManager;->removeOldFilesIfNecessary(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 46
    sput-boolean v1, Lcn/nubia/gallery3d/util/CacheManager;->sOldCheckDone:Z

    .line 48
    :cond_0
    sget-object v1, Lcn/nubia/gallery3d/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/common/BlobCache;

    if-nez v1, :cond_1

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcn/nubia/gallery3d/util/CacheManager;->getCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :try_start_1
    new-instance p0, Lcn/nubia/gallery3d/common/BlobCache;

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcn/nubia/gallery3d/common/BlobCache;-><init>(Ljava/lang/String;IIZI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :try_start_2
    sget-object p2, Lcn/nubia/gallery3d/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, p0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, p0

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    :try_start_3
    const-string p0, "CacheManager"

    const-string p2, "Cannot instantiate cache!"

    .line 58
    invoke-static {p0, p2, p1}, Lcn/nubia/gallery3d/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    :cond_1
    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 63
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private static getCacheDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 68
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getSdcardStorage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object p0

    :cond_1
    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static removeOldFilesIfNecessary(Landroid/content/Context;)V
    .locals 3

    const-string v0, "cache-up-to-date"

    .line 87
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    .line 90
    :try_start_0
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    if-eqz v2, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcn/nubia/gallery3d/util/CacheManager;->getCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "imgcache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/common/BlobCache;->deleteFiles(Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "rev_geocoding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/common/BlobCache;->deleteFiles(Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "bookmark"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/gallery3d/common/BlobCache;->deleteFiles(Ljava/lang/String;)V

    return-void
.end method
