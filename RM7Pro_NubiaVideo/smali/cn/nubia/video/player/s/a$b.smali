.class Lcn/nubia/video/player/s/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/s/a;->setOnCompletionListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;

.field final synthetic b:Lcn/nubia/video/player/s/a;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/s/a;Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/s/a$b;->b:Lcn/nubia/video/player/s/a;

    iput-object p2, p0, Lcn/nubia/video/player/s/a$b;->a:Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/s/a$b;->a:Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;

    iget-object v0, p0, Lcn/nubia/video/player/s/a$b;->b:Lcn/nubia/video/player/s/a;

    invoke-interface {p1, v0}, Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;->onCompletion(Lcn/nubia/video/mediajni/IMediaPlayer;)V

    return-void
.end method
