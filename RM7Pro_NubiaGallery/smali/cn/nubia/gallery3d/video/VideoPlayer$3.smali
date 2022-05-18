.class Lcn/nubia/gallery3d/video/VideoPlayer$3;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Lcn/nubia/video/player/common/IMediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/video/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/video/VideoPlayer;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/video/VideoPlayer;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$3;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Lcn/nubia/video/player/common/IMediaPlayer;)V
    .locals 1

    .line 188
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$3;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$402(Lcn/nubia/gallery3d/video/VideoPlayer;Z)Z

    return-void
.end method
