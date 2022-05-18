.class public Lcn/nubia/gallery3d/app/GalleryAppImpl;
.super Landroid/app/Application;
.source "GalleryAppImpl.java"

# interfaces
.implements Lcn/nubia/gallery3d/app/GalleryApp;


# static fields
.field private static final DOWNLOAD_CAPACITY:J = 0x4000000L

.field private static final DOWNLOAD_FOLDER:Ljava/lang/String; = "download"

.field private static final TAG:Ljava/lang/String; = "GalleryAppImpl"


# instance fields
.field private mActivity:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

.field private mAlbumPreference:Lcn/nubia/gallery3d/util/AlbumPreference;

.field private mBatteryListener:Lcn/nubia/improve/category/BatteryListener;

.field private mCategoryServiceIsRunning:Z

.field private mContentProviderProxy:Lcn/nubia/gallery3d/app/ContentProviderProxy;

.field private mCurrentLanguage:Ljava/lang/String;

.field private mDataManager:Lcn/nubia/gallery3d/data/DataManager;

.field private mDownloadCache:Lcn/nubia/gallery3d/data/DownloadCache;

.field private mIMultiSelectionMode:Lcn/nubia/gallery3d/ui/SelectionManager;

.field private mImageCacheService:Lcn/nubia/gallery3d/data/ImageCacheService;

.field private mItemFlagManager:Lcn/nubia/gallery3d/data/ItemFlagManager;

.field private mLock:Ljava/lang/Object;

.field private mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionDialog:Z

.field private mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mBatteryListener:Lcn/nubia/improve/category/BatteryListener;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mCategoryServiceIsRunning:Z

    return-void
.end method

.method private isDebug()Z
    .locals 2

    .line 200
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public getActivity()Lcn/nubia/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    .line 254
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mActivity:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method public getAlbumPreference()Lcn/nubia/gallery3d/util/AlbumPreference;
    .locals 2

    .line 162
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mAlbumPreference:Lcn/nubia/gallery3d/util/AlbumPreference;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/util/AlbumPreferenceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mAlbumPreference:Lcn/nubia/gallery3d/util/AlbumPreference;

    .line 165
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mAlbumPreference:Lcn/nubia/gallery3d/util/AlbumPreference;

    return-object v0
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getCategoryServiceIsRunning()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mCategoryServiceIsRunning:Z

    return v0
.end method

.method public getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;
    .locals 2

    .line 183
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mContentProviderProxy:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcn/nubia/gallery3d/app/ContentProviderProxy;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/app/ContentProviderProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mContentProviderProxy:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    .line 186
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mContentProviderProxy:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    return-object v0
.end method

.method public getCurrentLanguage()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mCurrentLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getDataManager()Lcn/nubia/gallery3d/data/DataManager;
    .locals 1

    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcn/nubia/gallery3d/data/DataManager;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/data/DataManager;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;

    .line 93
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/DataManager;->initializeSourceMap()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadCache()Lcn/nubia/gallery3d/data/DownloadCache;
    .locals 4

    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mDownloadCache:Lcn/nubia/gallery3d/data/DownloadCache;

    if-nez v0, :cond_2

    .line 119
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 123
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    new-instance v1, Lcn/nubia/gallery3d/data/DownloadCache;

    const-wide/32 v2, 0x4000000

    invoke-direct {v1, p0, v0, v2, v3}, Lcn/nubia/gallery3d/data/DownloadCache;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/io/File;J)V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mDownloadCache:Lcn/nubia/gallery3d/data/DownloadCache;

    goto :goto_0

    .line 124
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to create: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mDownloadCache:Lcn/nubia/gallery3d/data/DownloadCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIMultiSelectionMode()Lcn/nubia/gallery3d/ui/SelectionManager;
    .locals 2

    .line 154
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mIMultiSelectionMode:Lcn/nubia/gallery3d/ui/SelectionManager;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcn/nubia/gallery3d/ui/SelectionManager;

    move-object v1, p0

    check-cast v1, Lcn/nubia/gallery3d/app/GalleryContext;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;-><init>(Lcn/nubia/gallery3d/app/GalleryContext;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mIMultiSelectionMode:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 157
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mIMultiSelectionMode:Lcn/nubia/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method public getImageCacheService()Lcn/nubia/gallery3d/data/ImageCacheService;
    .locals 3

    .line 100
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcn/nubia/gallery3d/data/ImageCacheService;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/ImageCacheService;->isCacheExist()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    new-instance v1, Lcn/nubia/gallery3d/data/ImageCacheService;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/gallery3d/data/ImageCacheService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcn/nubia/gallery3d/data/ImageCacheService;

    .line 106
    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcn/nubia/gallery3d/data/ImageCacheService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getItemFlagManager()Lcn/nubia/gallery3d/data/ItemFlagManager;
    .locals 1

    .line 147
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mItemFlagManager:Lcn/nubia/gallery3d/data/ItemFlagManager;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcn/nubia/gallery3d/data/ItemFlagManager;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/data/ItemFlagManager;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mItemFlagManager:Lcn/nubia/gallery3d/data/ItemFlagManager;

    .line 150
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mItemFlagManager:Lcn/nubia/gallery3d/data/ItemFlagManager;

    return-object v0
.end method

.method public getPaths()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPermissionDialog()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mPermissionDialog:Z

    return v0
.end method

.method public declared-synchronized getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;
    .locals 1

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcn/nubia/gallery3d/util/ThreadPool;

    invoke-direct {v0}, Lcn/nubia/gallery3d/util/ThreadPool;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;

    .line 114
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()V
    .locals 4

    .line 72
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 73
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Landroid/os/StrictMode;->enableDefaults()V

    .line 76
    :cond_0
    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->initialize(Landroid/content/Context;)V

    .line 77
    invoke-static {p0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->setup(Landroid/content/Context;)V

    .line 78
    invoke-static {p0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mCurrentLanguage:Ljava/lang/String;

    .line 79
    invoke-static {}, Lcn/nubia/gallery3d/util/RecycleHelper;->setupRecycledFolder()V

    .line 80
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showPermissionDialog"

    const/4 v3, 0x1

    .line 82
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mPermissionDialog:Z

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mPaths:Ljava/util/ArrayList;

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 191
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 192
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mContentProviderProxy:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->release()Z

    :cond_0
    return-void
.end method

.method public releaseBatteryListener()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mBatteryListener:Lcn/nubia/improve/category/BatteryListener;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Lcn/nubia/improve/category/BatteryListener;->unregister()V

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mBatteryListener:Lcn/nubia/improve/category/BatteryListener;

    :cond_0
    return-void
.end method

.method public setAbstractGalleryActivity(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mActivity:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    return-void
.end method

.method public setCategoryServiceIsRunning(Z)V
    .locals 0

    .line 204
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mCategoryServiceIsRunning:Z

    return-void
.end method

.method public setCurrentLanguage(Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mCurrentLanguage:Ljava/lang/String;

    return-void
.end method

.method public setPaths(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 136
    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPermissionDialog()V
    .locals 3

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mPermissionDialog:Z

    .line 174
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 175
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 176
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "showPermissionDialog"

    .line 177
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setUpBatteryListener()Lcn/nubia/improve/category/BatteryListener;
    .locals 3

    .line 212
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/improve/ImproveConfig;->isSupportCategory(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "GalleryAppImpl"

    if-nez v0, :cond_0

    const-string v0, "txh BSP: disable Category Process"

    .line 213
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 216
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Monkey Test disable Category Process"

    .line 217
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 220
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mBatteryListener:Lcn/nubia/improve/category/BatteryListener;

    if-nez v0, :cond_2

    .line 221
    new-instance v0, Lcn/nubia/improve/category/BatteryListener;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/improve/category/BatteryListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mBatteryListener:Lcn/nubia/improve/category/BatteryListener;

    .line 222
    new-instance v1, Lcn/nubia/gallery3d/app/GalleryAppImpl$1;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/GalleryAppImpl$1;-><init>(Lcn/nubia/gallery3d/app/GalleryAppImpl;)V

    invoke-virtual {v0, v1}, Lcn/nubia/improve/category/BatteryListener;->register(Lcn/nubia/improve/category/BatteryListener$BatteryStateListener;)V

    .line 237
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GalleryAppImpl;->mBatteryListener:Lcn/nubia/improve/category/BatteryListener;

    return-object v0
.end method

.method public startCategoryService(Landroid/content/Context;)V
    .locals 2

    const-string v0, "GalleryAppImpl"

    const-string v1, "txh startCategoryService"

    .line 262
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/improve/category/CategoryService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 267
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopCategoryService(Landroid/content/Context;)V
    .locals 2

    const-string v0, "GalleryAppImpl"

    const-string v1, "txh stopCategoryService"

    .line 272
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/improve/category/CategoryService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method
