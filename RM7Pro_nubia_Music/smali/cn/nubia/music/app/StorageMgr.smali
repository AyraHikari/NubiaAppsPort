.class public final Lcn/nubia/music/app/StorageMgr;
.super Ljava/lang/Object;
.source "StorageMgr.java"


# static fields
.field private static mExternalCacheDir:Ljava/io/File;

.field private static mExternalStorageMgr:Ljava/io/File;

.field private static mExternalStorageState:Ljava/lang/String;

.field private static mInited:Z

.field private static mIsExternalStorageRemovable:Z

.field private static mSecondaryStorageMgr:Ljava/io/File;

.field private static mSecondaryStorageState:Ljava/lang/String;

.field public static test:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcn/nubia/music/app/StorageMgr;->mInited:Z

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/app/StorageMgr;->mExternalCacheDir:Ljava/io/File;

    .line 92
    :cond_0
    sget-object v0, Lcn/nubia/music/app/StorageMgr;->mExternalCacheDir:Ljava/io/File;

    return-object v0
.end method

.method public static getExternalStorageMgr()Ljava/io/File;
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcn/nubia/music/app/StorageMgr;->mInited:Z

    if-nez v0, :cond_0

    .line 26
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/app/StorageMgr;->mExternalStorageMgr:Ljava/io/File;

    .line 28
    :cond_0
    sget-object v0, Lcn/nubia/music/app/StorageMgr;->mExternalStorageMgr:Ljava/io/File;

    return-object v0
.end method

.method public static getExternalStorageRemovable()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcn/nubia/music/app/StorageMgr;->mInited:Z

    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    sput-boolean v0, Lcn/nubia/music/app/StorageMgr;->mIsExternalStorageRemovable:Z

    .line 65
    :cond_0
    sget-boolean v0, Lcn/nubia/music/app/StorageMgr;->mIsExternalStorageRemovable:Z

    return v0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcn/nubia/music/app/StorageMgr;->mInited:Z

    if-nez v0, :cond_0

    .line 75
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/app/StorageMgr;->mExternalStorageState:Ljava/lang/String;

    .line 77
    :cond_0
    sget-object v0, Lcn/nubia/music/app/StorageMgr;->mExternalStorageState:Ljava/lang/String;

    return-object v0
.end method

.method public static getSecondaryStorageMgr()Ljava/io/File;
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcn/nubia/music/app/StorageMgr;->mInited:Z

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-static {v0}, Lcn/nubia/music/utils/EnvironmentProxy;->getSecondaryStorageMgrInThread(Z)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/app/StorageMgr;->mSecondaryStorageMgr:Ljava/io/File;

    .line 41
    :cond_0
    sget-object v0, Lcn/nubia/music/app/StorageMgr;->mSecondaryStorageMgr:Ljava/io/File;

    return-object v0
.end method

.method public static getSecondaryStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcn/nubia/music/app/StorageMgr;->mInited:Z

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/nubia/music/utils/EnvironmentProxy;->getSecondaryStorageStateInThread(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/app/StorageMgr;->mSecondaryStorageState:Ljava/lang/String;

    .line 53
    :cond_0
    sget-object v0, Lcn/nubia/music/app/StorageMgr;->mSecondaryStorageState:Ljava/lang/String;

    return-object v0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/app/StorageMgr;->setExternalCacheDir(Ljava/io/File;)V

    .line 99
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->updateStorageState()V

    .line 100
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/music/app/StorageMgr;->mInited:Z

    .line 101
    return-void
.end method

.method private static setExternalCacheDir(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 85
    sput-object p0, Lcn/nubia/music/app/StorageMgr;->mExternalCacheDir:Ljava/io/File;

    .line 86
    return-void
.end method

.method private static setExternalStorageMgr(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 32
    sput-object p0, Lcn/nubia/music/app/StorageMgr;->mExternalStorageMgr:Ljava/io/File;

    .line 33
    return-void
.end method

.method private static setExternalStorageRemovable(Z)V
    .locals 0

    .prologue
    .line 69
    sput-boolean p0, Lcn/nubia/music/app/StorageMgr;->mIsExternalStorageRemovable:Z

    .line 70
    return-void
.end method

.method private static setExternalStorageState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    sput-object p0, Lcn/nubia/music/app/StorageMgr;->mExternalStorageState:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private static setSecondaryStorageMgr(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 45
    sput-object p0, Lcn/nubia/music/app/StorageMgr;->mSecondaryStorageMgr:Ljava/io/File;

    .line 46
    return-void
.end method

.method private static setSecondaryStorageState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    sput-object p0, Lcn/nubia/music/app/StorageMgr;->mSecondaryStorageState:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public static updateStorageState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 105
    invoke-static {v1}, Lcn/nubia/music/utils/EnvironmentProxy;->getSecondaryStorageMgrInThread(Z)Ljava/io/File;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcn/nubia/music/app/StorageMgr;->setSecondaryStorageMgr(Ljava/io/File;)V

    .line 106
    invoke-static {v1}, Lcn/nubia/music/utils/EnvironmentProxy;->getSecondaryStorageStateInThread(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/app/StorageMgr;->setSecondaryStorageState(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    invoke-static {v0}, Lcn/nubia/music/app/StorageMgr;->setExternalStorageRemovable(Z)V

    .line 108
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/app/StorageMgr;->setExternalStorageState(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/app/StorageMgr;->setExternalStorageMgr(Ljava/io/File;)V

    .line 110
    return-void
.end method
