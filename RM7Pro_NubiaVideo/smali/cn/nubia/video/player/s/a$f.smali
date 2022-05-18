.class Lcn/nubia/video/player/s/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/s/a;->setOnErrorListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;

.field final synthetic b:Lcn/nubia/video/player/s/a;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/s/a;Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/s/a$f;->b:Lcn/nubia/video/player/s/a;

    iput-object p2, p0, Lcn/nubia/video/player/s/a$f;->a:Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/s/a$f;->a:Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;

    iget-object v0, p0, Lcn/nubia/video/player/s/a$f;->b:Lcn/nubia/video/player/s/a;

    invoke-interface {p1, v0, p2, p3}, Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;->onError(Lcn/nubia/video/mediajni/IMediaPlayer;II)Z

    move-result p1

    return p1
.end method
