.class Lcn/nubia/video/player/common/AndroidPlayer$1;
.super Ljava/lang/Object;
.source "AndroidPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/common/AndroidPlayer;->setOnPreparedListener(Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/common/AndroidPlayer;

.field final synthetic val$listener:Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/common/AndroidPlayer;Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcn/nubia/video/player/common/AndroidPlayer$1;->this$0:Lcn/nubia/video/player/common/AndroidPlayer;

    iput-object p2, p0, Lcn/nubia/video/player/common/AndroidPlayer$1;->val$listener:Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 196
    iget-object p1, p0, Lcn/nubia/video/player/common/AndroidPlayer$1;->val$listener:Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;

    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer$1;->this$0:Lcn/nubia/video/player/common/AndroidPlayer;

    invoke-interface {p1, v0}, Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;->onPrepared(Lcn/nubia/video/player/common/IMediaPlayer;)V

    return-void
.end method
