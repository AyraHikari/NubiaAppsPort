.class Lcn/nubia/video/player/common/AndroidPlayer$2;
.super Ljava/lang/Object;
.source "AndroidPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/common/AndroidPlayer;->setOnCompletionListener(Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/common/AndroidPlayer;

.field final synthetic val$listener:Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/common/AndroidPlayer;Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcn/nubia/video/player/common/AndroidPlayer$2;->this$0:Lcn/nubia/video/player/common/AndroidPlayer;

    iput-object p2, p0, Lcn/nubia/video/player/common/AndroidPlayer$2;->val$listener:Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 208
    iget-object p1, p0, Lcn/nubia/video/player/common/AndroidPlayer$2;->val$listener:Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;

    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer$2;->this$0:Lcn/nubia/video/player/common/AndroidPlayer;

    invoke-interface {p1, v0}, Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;->onCompletion(Lcn/nubia/video/player/common/IMediaPlayer;)V

    return-void
.end method
