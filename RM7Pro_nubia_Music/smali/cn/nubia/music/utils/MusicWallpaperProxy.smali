.class public Lcn/nubia/music/utils/MusicWallpaperProxy;
.super Ljava/lang/Object;
.source "MusicWallpaperProxy.java"


# instance fields
.field private mService:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "wallpaper"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcn/nubia/music/utils/MusicWallpaperProxy;->mService:Landroid/app/WallpaperManager;

    .line 16
    return-void
.end method


# virtual methods
.method public clearMusicWallpaperMem()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/music/utils/MusicWallpaperProxy;->mService:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcn/nubia/music/utils/MusicWallpaperProxy;->mService:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 31
    :cond_0
    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/music/utils/MusicWallpaperProxy;->mService:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcn/nubia/music/utils/MusicWallpaperProxy;->mService:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
