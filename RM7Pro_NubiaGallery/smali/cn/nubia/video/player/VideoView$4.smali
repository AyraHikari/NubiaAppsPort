.class Lcn/nubia/video/player/VideoView$4;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Lcn/nubia/video/player/common/IMediaPlayer$OnInfoListener;


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

    .line 265
    iput-object p1, p0, Lcn/nubia/video/player/VideoView$4;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcn/nubia/video/player/common/IMediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
