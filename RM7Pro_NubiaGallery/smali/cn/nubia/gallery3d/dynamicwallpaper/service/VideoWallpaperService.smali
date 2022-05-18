.class public Lcn/nubia/gallery3d/dynamicwallpaper/service/VideoWallpaperService;
.super Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;
.source "VideoWallpaperService.java"

# interfaces
.implements Lcn/nubia/gallery3d/dynamicwallpaper/callback/OnSceneChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "VideoWallpaperService"

    return-object v0
.end method

.method public getWallpaperAssetsName()Ljava/lang/String;
    .locals 1

    .line 37
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;->getInstance()Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;->getWallpaperVideoName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "Constraints"

    const-string v1, "VideoWallpaperService onCreate "

    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-super {p0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->onCreate()V

    .line 18
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/VideoWallpaperService;->setString_path(Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p0}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->getCurrentDynamicWallpaperName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    invoke-static {p0}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->getCurrentDynamicWallpaperName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/VideoWallpaperService;->setString_path(Ljava/lang/String;)V

    .line 23
    :cond_1
    :goto_0
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;->getInstance()Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;

    move-result-object v0

    invoke-static {p0}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->getCurrentDynamicWallpaperName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;->setDynamicWallpaper(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->getInstance()Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->setSceneChangeListener(Lcn/nubia/gallery3d/dynamicwallpaper/callback/OnSceneChangeListener;)V

    .line 25
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->getInstance()Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;

    move-result-object v0

    invoke-static {p0}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->getSuperWallpaper(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->setSuperWallpaper(Ljava/lang/String;)Landroid/os/Bundle;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 30
    invoke-super {p0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->onDestroy()V

    const-string v0, "Constraints"

    const-string v1, "VideoWallpaperService onDestroy "

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;->getInstance()Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;->setDynamicWallpaper(Ljava/lang/String;)V

    return-void
.end method

.method public onSceneChange(Z)V
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoWallpaperService onSceneChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/VideoWallpaperService;->mVideoEngine:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Constraints"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/VideoWallpaperService;->mVideoEngine:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/VideoWallpaperService;->mVideoEngine:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->onSceneChange(Z)V

    :cond_0
    return-void
.end method
