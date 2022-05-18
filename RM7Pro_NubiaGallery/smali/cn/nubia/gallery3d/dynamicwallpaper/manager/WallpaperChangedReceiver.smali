.class public Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperChangedReceiver.java"


# static fields
.field private static final HISTORY_PATH:Ljava/lang/String;

.field private static filePath:Ljava/lang/String;

.field private static wallpaperManager:Landroid/app/WallpaperManager;


# instance fields
.field in:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Pictures/Histories"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;->HISTORY_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;->in:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;->HISTORY_PATH:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 41
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p2

    sput-object p2, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;->wallpaperManager:Landroid/app/WallpaperManager;

    .line 42
    invoke-virtual {p2}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 44
    invoke-virtual {p2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcn/nubia/gallery3d/dynamicwallpaper/service/VideoWallpaperService;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcn/nubia/gallery3d/dynamicwallpaper/service/OtherVideoWallpaperService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 45
    :cond_0
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->saveDynamicWallpaperName(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->getFilePath()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;->filePath:Ljava/lang/String;

    const-string p2, "Constraints"

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Save wallpaper path"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver$1;

    invoke-direct {v0, p0, p1}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver$1;-><init>(Lcn/nubia/gallery3d/dynamicwallpaper/manager/WallpaperChangedReceiver;Landroid/content/Context;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 90
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method
