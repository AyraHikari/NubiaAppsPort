.class Lcn/nubia/music/MediaPlaybackService$6$1;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Lcn/nubia/music/utils/imageloader/ImageLoaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/MediaPlaybackService$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/MediaPlaybackService$6;


# direct methods
.method constructor <init>(Lcn/nubia/music/MediaPlaybackService$6;)V
    .locals 0

    .prologue
    .line 2130
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService$6$1;->a:Lcn/nubia/music/MediaPlaybackService$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 2136
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$6$1;->a:Lcn/nubia/music/MediaPlaybackService$6;

    iget-object v0, v0, Lcn/nubia/music/MediaPlaybackService$6;->c:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$2900(Lcn/nubia/music/MediaPlaybackService;)V

    .line 2137
    return-void
.end method

.method public onLoadFail(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 2141
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$6$1;->a:Lcn/nubia/music/MediaPlaybackService$6;

    iget-object v0, v0, Lcn/nubia/music/MediaPlaybackService$6;->c:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$2900(Lcn/nubia/music/MediaPlaybackService;)V

    .line 2142
    return-void
.end method

.method public onLoadStart()V
    .locals 0

    .prologue
    .line 2133
    return-void
.end method
