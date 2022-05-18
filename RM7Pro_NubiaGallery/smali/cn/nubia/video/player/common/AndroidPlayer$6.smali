.class Lcn/nubia/video/player/common/AndroidPlayer$6;
.super Ljava/lang/Object;
.source "AndroidPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/common/AndroidPlayer;->setOnErrorListener(Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/common/AndroidPlayer;

.field final synthetic val$listener:Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/common/AndroidPlayer;Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcn/nubia/video/player/common/AndroidPlayer$6;->this$0:Lcn/nubia/video/player/common/AndroidPlayer;

    iput-object p2, p0, Lcn/nubia/video/player/common/AndroidPlayer$6;->val$listener:Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 259
    iget-object p1, p0, Lcn/nubia/video/player/common/AndroidPlayer$6;->val$listener:Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;

    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer$6;->this$0:Lcn/nubia/video/player/common/AndroidPlayer;

    invoke-interface {p1, v0, p2, p3}, Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;->onError(Lcn/nubia/video/player/common/IMediaPlayer;II)Z

    move-result p1

    return p1
.end method
