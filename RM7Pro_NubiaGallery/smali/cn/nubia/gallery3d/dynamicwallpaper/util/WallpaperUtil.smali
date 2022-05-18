.class public Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;
.super Ljava/lang/Object;
.source "WallpaperUtil.java"


# static fields
.field private static final CURRENT_WPAPER_NAME:Ljava/lang/String; = "current_wallpaper_name"

.field public static final IS_LAUNCHER_WALLPAPER_PREVIEW_KEY:Ljava/lang/String; = "is_launcher_wallpaper_preview"

.field public static final SKIP_KEYGUARD_SUPER_WALLPAPER_CHANGE:Ljava/lang/String; = "skip_keyguard_super_wallpaper_change"

.field private static final SUPER_WALLPAPER_KEY:Ljava/lang/String; = "super_wallpaper"

.field private static final SUPER_WALLPAPER_SP:Ljava/lang/String; = "super_wallpaper"

.field public static final TAG:Ljava/lang/String; = "superwallpaper"

.field public static filePath:Ljava/lang/String;

.field private static wallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentDynamicWallpaperName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "dynamic_wallpaper"

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "current_wallpaper_name"

    const/4 v1, 0x0

    .line 79
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFilePath()Ljava/lang/String;
    .locals 1

    .line 99
    sget-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getSuperWallpaper(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "super_wallpaper"

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 84
    sget-object v1, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;->none:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static saveDynamicWallpaperName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "dynamic_wallpaper"

    .line 89
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 90
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "current_wallpaper_name"

    .line 91
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 103
    sput-object p0, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->filePath:Ljava/lang/String;

    return-void
.end method

.method public static setLiveWallpaper(Landroid/content/Context;Landroid/app/Activity;I)V
    .locals 6

    .line 41
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->wallpaperManager:Landroid/app/WallpaperManager;

    .line 42
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 43
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 44
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-le v2, v3, :cond_3

    const-string v2, "android.service.wallpaper.CHANGE_LIVE_WALLPAPER"

    .line 45
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT"

    if-eqz v0, :cond_2

    :try_start_1
    const-string v3, "superwallpaper"

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wallpaperInfo :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcn/nubia/gallery3d/dynamicwallpaper/service/VideoWallpaperService;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    new-instance v0, Landroid/content/ComponentName;

    const-class v3, Lcn/nubia/gallery3d/dynamicwallpaper/service/OtherVideoWallpaperService;

    .line 52
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcn/nubia/gallery3d/dynamicwallpaper/service/OtherVideoWallpaperService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Landroid/content/ComponentName;

    const-class v3, Lcn/nubia/gallery3d/dynamicwallpaper/service/VideoWallpaperService;

    .line 56
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 58
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    const-class v3, Lcn/nubia/gallery3d/dynamicwallpaper/service/VideoWallpaperService;

    .line 60
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 63
    :cond_2
    new-instance v0, Landroid/content/ComponentName;

    const-class v3, Lcn/nubia/gallery3d/dynamicwallpaper/service/VideoWallpaperService;

    .line 65
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_0
    const/high16 p0, 0x10000000

    .line 67
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    const-string p0, "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

    .line 69
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    :goto_1
    invoke-virtual {p1, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
