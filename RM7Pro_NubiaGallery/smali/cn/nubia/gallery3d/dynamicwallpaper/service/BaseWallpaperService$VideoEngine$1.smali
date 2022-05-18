.class Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine$1;
.super Ljava/lang/Object;
.source "BaseWallpaperService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->superWallpaperReloadMp4()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine$1;->this$1:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    const-string v0, "Constraints"

    const-string v1, "setDataSource5555:"

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->getInstance()Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->getScene()Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    move-result-object v1

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepared:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine$1;->this$1:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;

    invoke-static {v3}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->access$000(Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;)Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v2, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine$1;->this$1:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;

    invoke-static {v2}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->access$000(Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;)Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    move-result-object v2

    if-eq v2, v1, :cond_0

    .line 111
    iget-object p1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine$1;->this$1:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;

    invoke-static {p1}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->access$100(Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;)V

    goto :goto_0

    .line 113
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine$1;->this$1:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;

    invoke-static {v2}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->access$200(Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :goto_0
    return-void
.end method
