.class Lcn/nubia/video/player/s/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/s/a;->setOnPreparedListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;

.field final synthetic b:Lcn/nubia/video/player/s/a;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/s/a;Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/s/a$a;->b:Lcn/nubia/video/player/s/a;

    iput-object p2, p0, Lcn/nubia/video/player/s/a$a;->a:Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/s/a$a;->a:Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;

    iget-object v0, p0, Lcn/nubia/video/player/s/a$a;->b:Lcn/nubia/video/player/s/a;

    invoke-interface {p1, v0}, Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;->onPrepared(Lcn/nubia/video/mediajni/IMediaPlayer;)V

    return-void
.end method
