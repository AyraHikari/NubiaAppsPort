.class Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "BaseWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoEngine"
.end annotation


# static fields
.field public static final NUBIA_THEME_DEVICE_NAME:Ljava/lang/String; = "persist.sys.nubia.theme_devices"


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private playScene:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

.field final synthetic this$0:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->this$0:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;)Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->playScene:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->superWallpaperReloadMp4()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;)Landroid/media/MediaPlayer;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private superWallpaperReloadMp4()V
    .locals 4

    const-string v0, "Constraints"

    .line 89
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->this$0:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->getString_path()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->this$0:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->getString_path()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->this$0:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->getSharePreStringWallPaper()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "filepath is null"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 93
    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->this$0:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->getString_path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->this$0:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->getString_path()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 96
    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->this$0:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->getString_path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->this$0:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->getSharePreStringWallPaper()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 100
    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 101
    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 102
    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 103
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->getInstance()Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->getScene()Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->playScene:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    .line 104
    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine$1;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine$1;-><init>(Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 119
    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine$2;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine$2;-><init>(Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "superWallpaperReloadMp4 exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public is659Project()Z
    .locals 2

    .line 82
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "NX659J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTransparentVersion()Z
    .locals 3

    const-string v0, "persist.sys.nubia.theme_devices"

    .line 76
    invoke-static {v0}, Lcn/nubia/gallery3d/dynamicwallpaper/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTransparentVersion  device_name  == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Constraints"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "6591"

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 48
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    return-void
.end method

.method public onSceneChange(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->this$0:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;

    iget-object p1, p1, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->mVideoEngine:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->onVisibilityChanged(Z)V

    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMediaPlayer.isPlaying:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Constraints"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    .line 68
    iget-object p1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->this$0:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;

    iget-object p1, p1, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->mVideoEngine:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->onVisibilityChanged(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->this$0:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onSurfaceCreated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Constraints"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 178
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 179
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 180
    invoke-virtual {p0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->reloadMp4()V

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->this$0:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "onSurfaceDestroyed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Constraints"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 190
    iget-object p1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    .line 191
    iput-object p1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->this$0:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  onVisibilityChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Constraints"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->reloadMp4()V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_1
    :goto_0
    return-void
.end method

.method public reloadMp4()V
    .locals 4

    .line 163
    :try_start_0
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->getInstance()Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;

    move-result-object v0

    const-string v1, "Constraints"

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reloadMp4 getSuperWallpaper:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->getSuperWallpaper()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->this$0:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService;

    instance-of v1, v0, Lcn/nubia/gallery3d/dynamicwallpaper/service/VideoWallpaperService;

    if-nez v1, :cond_0

    instance-of v0, v0, Lcn/nubia/gallery3d/dynamicwallpaper/service/OtherVideoWallpaperService;

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->superWallpaperReloadMp4()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
