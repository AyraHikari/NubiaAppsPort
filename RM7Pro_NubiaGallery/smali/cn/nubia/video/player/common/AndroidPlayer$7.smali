.class Lcn/nubia/video/player/common/AndroidPlayer$7;
.super Ljava/lang/Object;
.source "AndroidPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/common/AndroidPlayer;->setOnInfoListener(Lcn/nubia/video/player/common/IMediaPlayer$OnInfoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/common/AndroidPlayer;

.field final synthetic val$listener:Lcn/nubia/video/player/common/IMediaPlayer$OnInfoListener;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/common/AndroidPlayer;Lcn/nubia/video/player/common/IMediaPlayer$OnInfoListener;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcn/nubia/video/player/common/AndroidPlayer$7;->this$0:Lcn/nubia/video/player/common/AndroidPlayer;

    iput-object p2, p0, Lcn/nubia/video/player/common/AndroidPlayer$7;->val$listener:Lcn/nubia/video/player/common/IMediaPlayer$OnInfoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 271
    iget-object p1, p0, Lcn/nubia/video/player/common/AndroidPlayer$7;->val$listener:Lcn/nubia/video/player/common/IMediaPlayer$OnInfoListener;

    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer$7;->this$0:Lcn/nubia/video/player/common/AndroidPlayer;

    invoke-interface {p1, v0, p2, p3}, Lcn/nubia/video/player/common/IMediaPlayer$OnInfoListener;->onInfo(Lcn/nubia/video/player/common/IMediaPlayer;II)Z

    move-result p1

    return p1
.end method
