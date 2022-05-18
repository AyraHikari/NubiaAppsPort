.class Lcn/nubia/music/MediaPlaybackService$6;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/MediaPlaybackService;->createChannelNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Notification$Builder;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/nubia/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcn/nubia/music/MediaPlaybackService;Landroid/app/Notification$Builder;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2127
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService$6;->c:Lcn/nubia/music/MediaPlaybackService;

    iput-object p2, p0, Lcn/nubia/music/MediaPlaybackService$6;->a:Landroid/app/Notification$Builder;

    iput-object p3, p0, Lcn/nubia/music/MediaPlaybackService$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2130
    sget-object v0, Lcn/nubia/music/utils/imageloader/ImageLoader;->INSTANCE:Lcn/nubia/music/utils/imageloader/ImageLoader;

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$6;->c:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$4300(Lcn/nubia/music/MediaPlaybackService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService$6;->a:Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcn/nubia/music/MediaPlaybackService$6;->b:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/music/MediaPlaybackService$6;->c:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v4}, Lcn/nubia/music/MediaPlaybackService;->access$5300(Lcn/nubia/music/MediaPlaybackService;)Landroid/app/Notification;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {}, Lcn/nubia/music/utils/imageloader/DisplayOptionsCreator;->getDefaultAlbumForChannel()Lcn/nubia/music/utils/imageloader/DisplayOptions;

    move-result-object v6

    new-instance v7, Lcn/nubia/music/MediaPlaybackService$6$1;

    invoke-direct {v7, p0}, Lcn/nubia/music/MediaPlaybackService$6$1;-><init>(Lcn/nubia/music/MediaPlaybackService$6;)V

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/music/utils/imageloader/ImageLoader;->displayChannelNotification(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;Landroid/app/Notification;ILcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V

    .line 2144
    return-void
.end method
