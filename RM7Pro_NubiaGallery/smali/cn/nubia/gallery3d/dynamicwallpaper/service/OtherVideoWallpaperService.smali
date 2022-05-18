.class public Lcn/nubia/gallery3d/dynamicwallpaper/service/OtherVideoWallpaperService;
.super Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;
.source "OtherVideoWallpaperService.java"

# interfaces
.implements Lcn/nubia/gallery3d/dynamicwallpaper/callback/OnSceneChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "PreviewVideoWallpaperService"

    return-object v0
.end method

.method public getWallpaperAssetsName()Ljava/lang/String;
    .locals 1

    .line 36
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;->getInstance()Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;->getPreviewWallpaperVideoName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "Constraints"

    const-string v1, "PreviewVideoWallpaperService onCreate "

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-super {p0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->onCreate()V

    .line 17
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/OtherVideoWallpaperService;->setString_path(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p0}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->getCurrentDynamicWallpaperName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    invoke-static {p0}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->getCurrentDynamicWallpaperName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/OtherVideoWallpaperService;->setString_path(Ljava/lang/String;)V

    .line 22
    :cond_1
    :goto_0
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;->getInstance()Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;

    move-result-object v0

    invoke-static {p0}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->getCurrentDynamicWallpaperName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;->setDynamicWallpaper(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->getInstance()Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->setSceneChangeListener(Lcn/nubia/gallery3d/dynamicwallpaper/callback/OnSceneChangeListener;)V

    .line 24
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->getInstance()Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;

    move-result-object v0

    invoke-static {p0}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->getSuperWallpaper(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->setSuperWallpaper(Ljava/lang/String;)Landroid/os/Bundle;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 29
    invoke-super {p0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->onDestroy()V

    const-string v0, "Constraints"

    const-string v1, "PreviewVideoWallpaperService onDestroy "

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;->getInstance()Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;->setDynamicWallpaper(Ljava/lang/String;)V

    return-void
.end method

.method public onSceneChange(Z)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/OtherVideoWallpaperService;->mVideoEngine:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/OtherVideoWallpaperService;->mVideoEngine:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->onSceneChange(Z)V

    :cond_0
    return-void
.end method
