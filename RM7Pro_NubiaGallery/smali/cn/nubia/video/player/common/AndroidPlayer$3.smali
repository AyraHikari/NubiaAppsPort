.class Lcn/nubia/video/player/common/AndroidPlayer$3;
.super Ljava/lang/Object;
.source "AndroidPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/common/AndroidPlayer;->setOnBufferingUpdateListener(Lcn/nubia/video/player/common/IMediaPlayer$OnBufferingUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/common/AndroidPlayer;

.field final synthetic val$listener:Lcn/nubia/video/player/common/IMediaPlayer$OnBufferingUpdateListener;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/common/AndroidPlayer;Lcn/nubia/video/player/common/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcn/nubia/video/player/common/AndroidPlayer$3;->this$0:Lcn/nubia/video/player/common/AndroidPlayer;

    iput-object p2, p0, Lcn/nubia/video/player/common/AndroidPlayer$3;->val$listener:Lcn/nubia/video/player/common/IMediaPlayer$OnBufferingUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .line 221
    iget-object p1, p0, Lcn/nubia/video/player/common/AndroidPlayer$3;->val$listener:Lcn/nubia/video/player/common/IMediaPlayer$OnBufferingUpdateListener;

    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer$3;->this$0:Lcn/nubia/video/player/common/AndroidPlayer;

    invoke-interface {p1, v0, p2}, Lcn/nubia/video/player/common/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcn/nubia/video/player/common/IMediaPlayer;I)V

    return-void
.end method
