.class public Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;
.super Ljava/lang/Object;
.source "SuperWallpaperManager.java"


# static fields
.field public static final RESULT:Ljava/lang/String; = "result"

.field public static final SCENE:Ljava/lang/String; = "scene"

.field private static final ourInstance:Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;


# instance fields
.field public aod_wallpaper:Z

.field public changeSelf:Z

.field public launcher_wallpaper:Z

.field public lock_wallpaper:Z

.field private mPreviewScene:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

.field private mPreviewSceneChangeListener:Lcn/nubia/gallery3d/dynamicwallpaper/callback/OnSceneChangeListener;

.field private mPreviewWallpaper:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

.field private mScene:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

.field private mSceneChangeListener:Lcn/nubia/gallery3d/dynamicwallpaper/callback/OnSceneChangeListener;

.field private mSuperWallpaper:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

.field public showSuperWallpaper:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;

    invoke-direct {v0}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->ourInstance:Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->launcher:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    iput-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->mScene:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    .line 34
    sget-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;->none:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    iput-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->mSuperWallpaper:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->aod_wallpaper:Z

    .line 40
    iput-boolean v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->lock_wallpaper:Z

    .line 41
    iput-boolean v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->launcher_wallpaper:Z

    .line 43
    iput-boolean v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->changeSelf:Z

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->showSuperWallpaper:Z

    return-void
.end method

.method public static getInstance()Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;
    .locals 1

    .line 48
    sget-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->ourInstance:Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;

    return-object v0
.end method


# virtual methods
.method public getScene()Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;
    .locals 1

    .line 61
    iget-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->mScene:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    return-object v0
.end method

.method public getSuperWallpaper()Ljava/lang/String;
    .locals 2

    .line 89
    iget-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->mSuperWallpaper:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    sget-object v1, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;->none:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->mSuperWallpaper:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideo()Ljava/lang/String;
    .locals 4

    .line 134
    sget-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager$1;->$SwitchMap$cn$nubia$gallery3d$dynamicwallpaper$bean$SuperWallpaper:[I

    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->mSuperWallpaper:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 139
    :cond_0
    new-instance v0, Lcn/nubia/gallery3d/dynamicwallpaper/bean/EarthSuperWallpaper;

    invoke-direct {v0}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/EarthSuperWallpaper;-><init>()V

    goto :goto_0

    .line 136
    :cond_1
    new-instance v0, Lcn/nubia/gallery3d/dynamicwallpaper/bean/RiverSuperWallpaper;

    invoke-direct {v0}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/RiverSuperWallpaper;-><init>()V

    :goto_0
    if-eqz v0, :cond_2

    .line 143
    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->mScene:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    if-eqz v1, :cond_2

    sget-object v3, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->none:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    if-eq v1, v3, :cond_2

    .line 144
    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->mScene:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/BaseSuperWallpaper;->getVideo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v2
.end method

.method public isLoop()Z
    .locals 2

    .line 150
    iget-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->mScene:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    sget-object v1, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->aod:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->mScene:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    sget-object v1, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->launcher:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSuperWallpaperScene(Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;)Z
    .locals 5

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSuperWallpaperScene SuperWallpaper:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->mSuperWallpaper:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Constraints"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scene:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",showSuperWallpaper:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->showSuperWallpaper:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",aod:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->aod_wallpaper:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",lock:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->lock_wallpaper:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",launcher:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->launcher_wallpaper:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-boolean v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->launcher_wallpaper:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->mSuperWallpaper:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    sget-object v2, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;->none:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 104
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->aod_wallpaper:Z

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 105
    iget-boolean v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->lock_wallpaper:Z

    if-eqz v0, :cond_1

    .line 106
    sget-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->launcher:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 110
    :cond_1
    sget-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager$1;->$SwitchMap$cn$nubia$gallery3d$dynamicwallpaper$bean$Scene:[I

    invoke-virtual {p1}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    if-eq p1, v2, :cond_4

    goto :goto_0

    .line 118
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->lock_wallpaper:Z

    if-eqz v0, :cond_3

    .line 119
    sget-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager$1;->$SwitchMap$cn$nubia$gallery3d$dynamicwallpaper$bean$Scene:[I

    invoke-virtual {p1}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    :cond_3
    :goto_0
    move v1, v4

    .line 128
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->showSuperWallpaper:Z

    and-int/2addr p1, v1

    return p1

    :cond_5
    :goto_2
    return v1
.end method

.method public setChangeSelf(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->changeSelf:Z

    return-void
.end method

.method public setScene(Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;)V
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scene:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Constraints"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput-object p1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->mScene:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    return-void
.end method

.method public setSceneChangeListener(Lcn/nubia/gallery3d/dynamicwallpaper/callback/OnSceneChangeListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->mSceneChangeListener:Lcn/nubia/gallery3d/dynamicwallpaper/callback/OnSceneChangeListener;

    return-void
.end method

.method public setSuperWallpaper(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    :try_start_0
    invoke-static {p1}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;->valueOf(Ljava/lang/String;)Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->mSuperWallpaper:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    .line 72
    iput-boolean v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->aod_wallpaper:Z

    .line 73
    iput-boolean v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->lock_wallpaper:Z

    .line 74
    iput-boolean v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->launcher_wallpaper:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    sget-object p1, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;->none:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    iput-object p1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->mSuperWallpaper:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    move p1, v1

    .line 81
    :goto_0
    iget-object v2, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->mSuperWallpaper:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    sget-object v3, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;->none:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->setChangeSelf(Z)V

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "result"

    .line 84
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
