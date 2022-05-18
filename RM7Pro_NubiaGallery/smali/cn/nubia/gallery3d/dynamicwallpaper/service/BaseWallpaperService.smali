.class public abstract Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;
.super Landroid/service/wallpaper/WallpaperService;
.source "BaseWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;
    }
.end annotation


# instance fields
.field private mIsScreenOn:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field public mVideoEngine:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;

.field public string_path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->mIsScreenOn:Z

    return-void
.end method

.method static synthetic access$302(Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->mIsScreenOn:Z

    return p1
.end method

.method private unRegisterReceiver()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract getClassName()Ljava/lang/String;
.end method

.method public getSharePreStringWallPaper()Ljava/lang/String;
    .locals 1

    .line 35
    invoke-static {p0}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->getCurrentDynamicWallpaperName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString_path()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->string_path:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getWallpaperAssetsName()Ljava/lang/String;
.end method

.method public onCreate()V
    .locals 0

    .line 221
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 222
    invoke-virtual {p0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->registerReceiver()V

    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .line 234
    new-instance v0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;-><init>(Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->mVideoEngine:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 227
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    .line 228
    invoke-direct {p0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->unRegisterReceiver()V

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->mVideoEngine:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;

    return-void
.end method

.method public registerReceiver()V
    .locals 2

    .line 199
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 200
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 201
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    new-instance v1, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$1;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$1;-><init>(Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 210
    invoke-virtual {p0, v1, v0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setString_path(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->string_path:Ljava/lang/String;

    return-void
.end method
