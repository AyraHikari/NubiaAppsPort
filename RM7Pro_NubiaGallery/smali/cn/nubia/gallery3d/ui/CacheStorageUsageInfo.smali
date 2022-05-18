.class public Lcn/nubia/gallery3d/ui/CacheStorageUsageInfo;
.super Ljava/lang/Object;
.source "CacheStorageUsageInfo.java"


# instance fields
.field private mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

.field private mContext:Landroid/content/Context;

.field private mTargetCacheBytes:J

.field private mTotalBytes:J

.field private mUsedBytes:J

.field private mUsedCacheBytes:J

.field private mUserChangeDelta:J


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/CacheStorageUsageInfo;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 46
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/CacheStorageUsageInfo;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getExpectedUsedBytes()J
    .locals 4

    .line 76
    iget-wide v0, p0, Lcn/nubia/gallery3d/ui/CacheStorageUsageInfo;->mUsedBytes:J

    iget-wide v2, p0, Lcn/nubia/gallery3d/ui/CacheStorageUsageInfo;->mUsedCacheBytes:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcn/nubia/gallery3d/ui/CacheStorageUsageInfo;->mTargetCacheBytes:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcn/nubia/gallery3d/ui/CacheStorageUsageInfo;->mUserChangeDelta:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getFreeBytes()J
    .locals 4

    .line 85
    iget-wide v0, p0, Lcn/nubia/gallery3d/ui/CacheStorageUsageInfo;->mTotalBytes:J

    iget-wide v2, p0, Lcn/nubia/gallery3d/ui/CacheStorageUsageInfo;->mUsedBytes:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcn/nubia/gallery3d/ui/CacheStorageUsageInfo;->mTotalBytes:J

    return-wide v0
.end method

.method public getUsedBytes()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcn/nubia/gallery3d/ui/CacheStorageUsageInfo;->mUsedBytes:J

    return-wide v0
.end method

.method public increaseTargetCacheSize(J)V
    .locals 2

    .line 50
    iget-wide v0, p0, Lcn/nubia/gallery3d/ui/CacheStorageUsageInfo;->mUserChangeDelta:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/CacheStorageUsageInfo;->mUserChangeDelta:J

    return-void
.end method

.method public loadStorageInfo(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)V
    .locals 9

    .line 54
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/CacheStorageUsageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    .line 56
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/CacheStorageUsageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    .line 59
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 60
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p1

    int-to-long v1, p1

    .line 62
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p1

    int-to-long v3, p1

    .line 63
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result p1

    int-to-long v5, p1

    mul-long v7, v1, v5

    .line 65
    iput-wide v7, p0, Lcn/nubia/gallery3d/ui/CacheStorageUsageInfo;->mTotalBytes:J

    sub-long/2addr v5, v3

    mul-long/2addr v1, v5

    .line 66
    iput-wide v1, p0, Lcn/nubia/gallery3d/ui/CacheStorageUsageInfo;->mUsedBytes:J

    .line 67
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/CacheStorageUsageInfo;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/DataManager;->getTotalUsedCacheSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/CacheStorageUsageInfo;->mUsedCacheBytes:J

    .line 68
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/CacheStorageUsageInfo;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/DataManager;->getTotalTargetCacheSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/CacheStorageUsageInfo;->mTargetCacheBytes:J

    return-void
.end method
