.class Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine$2;
.super Ljava/lang/Object;
.source "BaseWallpaperService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 119
    iput-object p1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine$2;->this$1:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 122
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->getInstance()Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->getScene()Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    move-result-object p1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompletion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine$2;->this$1:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;

    invoke-static {v1}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->access$000(Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;)Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "getScene:"

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

    .line 126
    iget-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine$2;->this$1:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;

    invoke-static {v0}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->access$000(Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;)Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    move-result-object v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    sget-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$2;->$SwitchMap$cn$nubia$gallery3d$dynamicwallpaper$bean$Scene:[I

    invoke-virtual {p1}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 139
    :cond_1
    sget-object p1, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->lock:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    goto :goto_0

    .line 136
    :cond_2
    sget-object p1, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->aod:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    goto :goto_0

    .line 132
    :cond_3
    sget-object p1, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->launcher:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    :goto_0
    if-eqz p1, :cond_4

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextScene:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->getInstance()Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;->setScene(Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;)V

    .line 150
    iget-object p1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine$2;->this$1:Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;

    invoke-static {p1}, Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;->access$100(Lcn/nubia/gallery3d/dynamicwallpaper/service/BaseWallpaperService$VideoEngine;)V

    :cond_4
    return-void
.end method
