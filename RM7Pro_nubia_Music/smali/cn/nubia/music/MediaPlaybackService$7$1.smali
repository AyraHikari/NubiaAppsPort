.class Lcn/nubia/music/MediaPlaybackService$7$1;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Lcn/nubia/music/utils/imageloader/ImageLoaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/MediaPlaybackService$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/MediaPlaybackService$7;


# direct methods
.method constructor <init>(Lcn/nubia/music/MediaPlaybackService$7;)V
    .locals 0

    .prologue
    .line 2220
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService$7$1;->a:Lcn/nubia/music/MediaPlaybackService$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2227
    return-void
.end method

.method public onLoadFail(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 2232
    return-void
.end method

.method public onLoadStart()V
    .locals 0

    .prologue
    .line 2223
    return-void
.end method
