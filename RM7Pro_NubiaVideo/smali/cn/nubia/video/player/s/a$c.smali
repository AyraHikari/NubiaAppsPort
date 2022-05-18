.class Lcn/nubia/video/player/s/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/s/a;->setOnBufferingUpdateListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnBufferingUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediajni/IMediaPlayer$OnBufferingUpdateListener;

.field final synthetic b:Lcn/nubia/video/player/s/a;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/s/a;Lcn/nubia/video/mediajni/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/s/a$c;->b:Lcn/nubia/video/player/s/a;

    iput-object p2, p0, Lcn/nubia/video/player/s/a$c;->a:Lcn/nubia/video/mediajni/IMediaPlayer$OnBufferingUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/s/a$c;->a:Lcn/nubia/video/mediajni/IMediaPlayer$OnBufferingUpdateListener;

    iget-object v0, p0, Lcn/nubia/video/player/s/a$c;->b:Lcn/nubia/video/player/s/a;

    invoke-interface {p1, v0, p2}, Lcn/nubia/video/mediajni/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcn/nubia/video/mediajni/IMediaPlayer;I)V

    return-void
.end method
