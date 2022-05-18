.class Lcn/nubia/video/player/s/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/s/a;->setOnVideoSizeChangedListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;

.field final synthetic b:Lcn/nubia/video/player/s/a;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/s/a;Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/s/a$e;->b:Lcn/nubia/video/player/s/a;

    iput-object p2, p0, Lcn/nubia/video/player/s/a$e;->a:Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/s/a$e;->a:Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;

    iget-object v0, p0, Lcn/nubia/video/player/s/a$e;->b:Lcn/nubia/video/player/s/a;

    invoke-interface {p1, v0, p2, p3}, Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcn/nubia/video/mediajni/IMediaPlayer;II)V

    return-void
.end method
