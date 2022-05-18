.class Lcn/nubia/video/player/VideoView$6;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Lcn/nubia/video/player/common/IMediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/VideoView;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/VideoView;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcn/nubia/video/player/VideoView$6;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Lcn/nubia/video/player/common/IMediaPlayer;I)V
    .locals 0

    .line 315
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$6;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p1, p2}, Lcn/nubia/video/player/VideoView;->access$1302(Lcn/nubia/video/player/VideoView;I)I

    return-void
.end method
