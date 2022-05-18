.class Lcn/nubia/music/MediaPlaybackService$7;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/MediaPlaybackService;->createRemoteViewNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RemoteViews;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/nubia/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcn/nubia/music/MediaPlaybackService;Landroid/widget/RemoteViews;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2217
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService$7;->c:Lcn/nubia/music/MediaPlaybackService;

    iput-object p2, p0, Lcn/nubia/music/MediaPlaybackService$7;->a:Landroid/widget/RemoteViews;

    iput-object p3, p0, Lcn/nubia/music/MediaPlaybackService$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2220
    sget-object v0, Lcn/nubia/music/utils/imageloader/ImageLoader;->INSTANCE:Lcn/nubia/music/utils/imageloader/ImageLoader;

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$7;->c:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$4300(Lcn/nubia/music/MediaPlaybackService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService$7;->a:Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcn/nubia/music/MediaPlaybackService$7;->b:Ljava/lang/String;

    invoke-static {}, Lcn/nubia/music/utils/imageloader/DisplayOptionsCreator;->getDefaultAlbumForChannel()Lcn/nubia/music/utils/imageloader/DisplayOptions;

    move-result-object v4

    new-instance v5, Lcn/nubia/music/MediaPlaybackService$7$1;

    invoke-direct {v5, p0}, Lcn/nubia/music/MediaPlaybackService$7$1;-><init>(Lcn/nubia/music/MediaPlaybackService$7;)V

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/music/utils/imageloader/ImageLoader;->displayRemoteNotification(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V

    .line 2234
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$7;->c:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$2900(Lcn/nubia/music/MediaPlaybackService;)V

    .line 2235
    return-void
.end method
