.class public Lcn/nubia/video/player/VideoView;
.super Landroid/view/SurfaceView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/VideoView$m;
    }
.end annotation


# instance fields
.field private A:Lb/a/a/e/e;

.field private B:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/util/Pair<",
            "Ljava/io/InputStream;",
            "Landroid/media/MediaFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field C:Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;

.field D:Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;

.field private E:Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;

.field private F:Lcn/nubia/video/mediajni/IMediaPlayer$OnInfoListener;

.field private G:Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;

.field private H:Lcn/nubia/video/mediajni/IMediaPlayer$OnBufferingUpdateListener;

.field I:Landroid/view/SurfaceHolder$Callback;

.field private J:Landroid/os/Handler;

.field private K:Ljava/lang/Runnable;

.field private L:Ljava/lang/Runnable;

.field M:Z

.field private a:Ljava/lang/String;

.field private b:Landroid/net/Uri;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Landroid/view/SurfaceHolder;

.field private f:Lcn/nubia/video/mediajni/IMediaPlayer;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:I

.field private p:Z

.field private q:Landroid/content/Context;

.field private r:Lcn/nubia/video/player/g;

.field private s:Lcn/nubia/video/player/s/b;

.field private t:Ljava/lang/Object;

.field private u:Lcn/nubia/video/commonui/app/d;

.field private v:I

.field private w:Landroid/widget/Toast;

.field private x:Lcn/nubia/video/player/VideoView$m;

.field private y:Landroid/graphics/Point;

.field private z:Lb/a/a/e/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/video/player/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "VideoView"

    .line 3
    iput-object p2, p0, Lcn/nubia/video/player/VideoView;->a:Ljava/lang/String;

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcn/nubia/video/player/VideoView;->d:I

    const/4 p3, 0x0

    .line 5
    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->e:Landroid/view/SurfaceHolder;

    .line 6
    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    .line 7
    iput p2, p0, Lcn/nubia/video/player/VideoView;->h:I

    .line 8
    iput p2, p0, Lcn/nubia/video/player/VideoView;->i:I

    .line 9
    iput-boolean p2, p0, Lcn/nubia/video/player/VideoView;->p:Z

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->t:Ljava/lang/Object;

    .line 11
    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->u:Lcn/nubia/video/commonui/app/d;

    .line 12
    iput p2, p0, Lcn/nubia/video/player/VideoView;->v:I

    .line 13
    sget-object p3, Lcn/nubia/video/player/VideoView$m;->a:Lcn/nubia/video/player/VideoView$m;

    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->x:Lcn/nubia/video/player/VideoView$m;

    .line 14
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->y:Landroid/graphics/Point;

    .line 15
    new-instance p3, Lcn/nubia/video/player/VideoView$d;

    invoke-direct {p3, p0}, Lcn/nubia/video/player/VideoView$d;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->C:Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;

    .line 16
    new-instance p3, Lcn/nubia/video/player/VideoView$e;

    invoke-direct {p3, p0}, Lcn/nubia/video/player/VideoView$e;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->D:Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;

    .line 17
    new-instance p3, Lcn/nubia/video/player/VideoView$f;

    invoke-direct {p3, p0}, Lcn/nubia/video/player/VideoView$f;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->E:Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;

    .line 18
    new-instance p3, Lcn/nubia/video/player/VideoView$g;

    invoke-direct {p3, p0}, Lcn/nubia/video/player/VideoView$g;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->F:Lcn/nubia/video/mediajni/IMediaPlayer$OnInfoListener;

    .line 19
    new-instance p3, Lcn/nubia/video/player/VideoView$h;

    invoke-direct {p3, p0}, Lcn/nubia/video/player/VideoView$h;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->G:Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;

    .line 20
    new-instance p3, Lcn/nubia/video/player/VideoView$i;

    invoke-direct {p3, p0}, Lcn/nubia/video/player/VideoView$i;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->H:Lcn/nubia/video/mediajni/IMediaPlayer$OnBufferingUpdateListener;

    .line 21
    new-instance p3, Lcn/nubia/video/player/VideoView$j;

    invoke-direct {p3, p0}, Lcn/nubia/video/player/VideoView$j;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->I:Landroid/view/SurfaceHolder$Callback;

    .line 22
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->J:Landroid/os/Handler;

    .line 23
    new-instance p3, Lcn/nubia/video/player/VideoView$k;

    invoke-direct {p3, p0}, Lcn/nubia/video/player/VideoView$k;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->K:Ljava/lang/Runnable;

    .line 24
    new-instance p3, Lcn/nubia/video/player/VideoView$l;

    invoke-direct {p3, p0}, Lcn/nubia/video/player/VideoView$l;-><init>(Lcn/nubia/video/player/VideoView;)V

    iput-object p3, p0, Lcn/nubia/video/player/VideoView;->L:Ljava/lang/Runnable;

    .line 25
    iput-boolean p2, p0, Lcn/nubia/video/player/VideoView;->M:Z

    .line 26
    iput-object p1, p0, Lcn/nubia/video/player/VideoView;->q:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->H()V

    return-void
.end method

.method static synthetic A(Lcn/nubia/video/player/VideoView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/player/VideoView;->n:Z

    return p1
.end method

.method static synthetic B(Lcn/nubia/video/player/VideoView;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/VideoView;->b:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic C(Lcn/nubia/video/player/VideoView;)Lcn/nubia/video/mediajni/IMediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    return-object p0
.end method

.method static synthetic D(Lcn/nubia/video/player/VideoView;)Lcn/nubia/video/player/s/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/VideoView;->s:Lcn/nubia/video/player/s/b;

    return-object p0
.end method

.method private E()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->t:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->u:Lcn/nubia/video/commonui/app/d;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcn/nubia/video/player/VideoView;->u:Lcn/nubia/video/commonui/app/d;

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private F(Lcn/nubia/video/commonui/app/b$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->t:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->u:Lcn/nubia/video/commonui/app/d;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcn/nubia/video/player/VideoView;->u:Lcn/nubia/video/commonui/app/d;

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/video/commonui/app/b$a;->a()Lcn/nubia/video/commonui/app/b;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/VideoView;->u:Lcn/nubia/video/commonui/app/d;

    .line 6
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private H()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->Q()V

    .line 2
    new-instance v0, Lcn/nubia/video/player/s/b;

    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->q:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/video/player/s/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->s:Lcn/nubia/video/player/s/b;

    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->I:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 7
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestFocus()Z

    .line 8
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->B:Ljava/util/Vector;

    return-void
.end method

.method private I()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/video/player/VideoView;->d:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private L(I)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "Unable to open content: "

    .line 1
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->b:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->e:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlayerType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  mUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/video/player/VideoView;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v1}, Lcn/nubia/video/player/VideoView;->P(Z)V

    const/16 v2, 0x64

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 4
    :try_start_0
    iget-object v5, p0, Lcn/nubia/video/player/VideoView;->q:Landroid/content/Context;

    iget-object v6, p0, Lcn/nubia/video/player/VideoView;->b:Landroid/net/Uri;

    invoke-static {v5, p1, v6}, Lcn/nubia/video/player/s/d;->c(Landroid/content/Context;ILandroid/net/Uri;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    .line 5
    invoke-static {}, Lcn/nubia/video/player/s/d;->d()I

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/VideoView;->m:I

    .line 6
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    iget-object v5, p0, Lcn/nubia/video/player/VideoView;->D:Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;

    invoke-interface {p1, v5}, Lcn/nubia/video/mediajni/IMediaPlayer;->setOnPreparedListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;)V

    .line 7
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    iget-object v5, p0, Lcn/nubia/video/player/VideoView;->C:Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {p1, v5}, Lcn/nubia/video/mediajni/IMediaPlayer;->setOnVideoSizeChangedListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 8
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    iget-object v5, p0, Lcn/nubia/video/player/VideoView;->E:Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;

    invoke-interface {p1, v5}, Lcn/nubia/video/mediajni/IMediaPlayer;->setOnCompletionListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;)V

    .line 9
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    iget-object v5, p0, Lcn/nubia/video/player/VideoView;->G:Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;

    invoke-interface {p1, v5}, Lcn/nubia/video/mediajni/IMediaPlayer;->setOnErrorListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;)V

    .line 10
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    iget-object v5, p0, Lcn/nubia/video/player/VideoView;->F:Lcn/nubia/video/mediajni/IMediaPlayer$OnInfoListener;

    invoke-interface {p1, v5}, Lcn/nubia/video/mediajni/IMediaPlayer;->setOnInfoListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnInfoListener;)V

    .line 11
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    iget-object v5, p0, Lcn/nubia/video/player/VideoView;->H:Lcn/nubia/video/mediajni/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {p1, v5}, Lcn/nubia/video/mediajni/IMediaPlayer;->setOnBufferingUpdateListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 12
    iput v4, p0, Lcn/nubia/video/player/VideoView;->l:I

    .line 13
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    iget-object v5, p0, Lcn/nubia/video/player/VideoView;->q:Landroid/content/Context;

    iget-object v6, p0, Lcn/nubia/video/player/VideoView;->b:Landroid/net/Uri;

    iget-object v7, p0, Lcn/nubia/video/player/VideoView;->c:Ljava/util/Map;

    invoke-interface {p1, v5, v6, v7}, Lcn/nubia/video/mediajni/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 14
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    iget-object v5, p0, Lcn/nubia/video/player/VideoView;->e:Landroid/view/SurfaceHolder;

    invoke-interface {p1, v5}, Lcn/nubia/video/mediajni/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 15
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    const/4 v5, 0x3

    invoke-interface {p1, v5}, Lcn/nubia/video/mediajni/IMediaPlayer;->setAudioStreamType(I)V

    .line 16
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {p1, v1}, Lcn/nubia/video/mediajni/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 17
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {p1}, Lcn/nubia/video/mediajni/IMediaPlayer;->prepareAsync()V

    .line 18
    iput v1, p0, Lcn/nubia/video/player/VideoView;->d:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->B:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 20
    :try_start_1
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->b:Landroid/net/Uri;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    iput v3, p0, Lcn/nubia/video/player/VideoView;->d:I

    .line 22
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->G:Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;

    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {p1, v0, v2, v4}, Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;->onError(Lcn/nubia/video/mediajni/IMediaPlayer;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :goto_0
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->B:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    return-void

    :catch_1
    move-exception p1

    .line 24
    :try_start_2
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->b:Landroid/net/Uri;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    iput v3, p0, Lcn/nubia/video/player/VideoView;->d:I

    .line 26
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->G:Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;

    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {p1, v0, v2, v4}, Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;->onError(Lcn/nubia/video/mediajni/IMediaPlayer;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 27
    :goto_1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->B:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 28
    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method private O()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcn/nubia/video/player/VideoView;->N(Z)V

    return-void
.end method

.method private P(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->e:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->U()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {p1}, Lcn/nubia/video/mediajni/IMediaPlayer;->stop()V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {p1}, Lcn/nubia/video/mediajni/IMediaPlayer;->reset()V

    .line 6
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {p1}, Lcn/nubia/video/mediajni/IMediaPlayer;->release()V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    .line 8
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->B:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcn/nubia/video/player/VideoView;->d:I

    .line 10
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->z:Lb/a/a/e/f;

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0, p1}, Lb/a/a/e/f;->a(I)V

    :cond_1
    return-void
.end method

.method private Q()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/nubia/video/player/VideoView;->h:I

    .line 2
    iput v0, p0, Lcn/nubia/video/player/VideoView;->i:I

    .line 3
    iput v0, p0, Lcn/nubia/video/player/VideoView;->m:I

    .line 4
    iput-boolean v0, p0, Lcn/nubia/video/player/VideoView;->n:Z

    .line 5
    iput v0, p0, Lcn/nubia/video/player/VideoView;->d:I

    const/16 v0, 0x8

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method private U()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 2
    iget v1, p0, Lcn/nubia/video/player/VideoView;->d:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 3
    :cond_1
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->s:Lcn/nubia/video/player/s/b;

    iget-object v2, p0, Lcn/nubia/video/player/VideoView;->b:Landroid/net/Uri;

    iget-object v3, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v3}, Lcn/nubia/video/mediajni/IMediaPlayer;->getDuration()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcn/nubia/video/player/s/b;->d(Landroid/net/Uri;II)V

    return-void
.end method

.method private Y(I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "***"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lb/a/b/d/e;->R(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, p1

    invoke-static {v3, v4}, Lb/a/b/d/e;->R(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 5
    :goto_0
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->J:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->w:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->q:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/VideoView;->w:Landroid/widget/Toast;

    .line 9
    :goto_1
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->J:Landroid/os/Handler;

    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->L:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->w:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/video/player/VideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/player/VideoView;->h:I

    return p0
.end method

.method static synthetic b(Lcn/nubia/video/player/VideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/player/VideoView;->h:I

    return p1
.end method

.method static synthetic c(Lcn/nubia/video/player/VideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/player/VideoView;->i:I

    return p0
.end method

.method static synthetic d(Lcn/nubia/video/player/VideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/player/VideoView;->m:I

    return p0
.end method

.method static synthetic e(Lcn/nubia/video/player/VideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/player/VideoView;->m:I

    return p1
.end method

.method static synthetic f(Lcn/nubia/video/player/VideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/player/VideoView;->i:I

    return p1
.end method

.method static synthetic g(Lcn/nubia/video/player/VideoView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/video/player/VideoView;->L(I)V

    return-void
.end method

.method private getScreenSize()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->q:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->y:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method static synthetic h(Lcn/nubia/video/player/VideoView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/VideoView;->q:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/video/player/VideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/player/VideoView;->l:I

    return p1
.end method

.method static synthetic j(Lcn/nubia/video/player/VideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/player/VideoView;->j:I

    return p1
.end method

.method static synthetic k(Lcn/nubia/video/player/VideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/player/VideoView;->k:I

    return p1
.end method

.method static synthetic l(Lcn/nubia/video/player/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/VideoView;->e:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic m(Lcn/nubia/video/player/VideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/player/VideoView;->o:I

    return p1
.end method

.method static synthetic n(Lcn/nubia/video/player/VideoView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/video/player/VideoView;->P(Z)V

    return-void
.end method

.method static synthetic o(Lcn/nubia/video/player/VideoView;)Landroid/widget/Toast;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/VideoView;->w:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic p(Lcn/nubia/video/player/VideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/player/VideoView;->d:I

    return p0
.end method

.method static synthetic q(Lcn/nubia/video/player/VideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/player/VideoView;->v:I

    return p0
.end method

.method static synthetic r(Lcn/nubia/video/player/VideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/player/VideoView;->v:I

    return p1
.end method

.method static synthetic s(Lcn/nubia/video/player/VideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/player/VideoView;->d:I

    return p1
.end method

.method static synthetic t(Lcn/nubia/video/player/VideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->E()V

    return-void
.end method

.method static synthetic u(Lcn/nubia/video/player/VideoView;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/VideoView;->t:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic v(Lcn/nubia/video/player/VideoView;)Lb/a/a/e/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/VideoView;->z:Lb/a/a/e/f;

    return-object p0
.end method

.method static synthetic w(Lcn/nubia/video/player/VideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/player/VideoView;->g:I

    return p0
.end method

.method static synthetic x(Lcn/nubia/video/player/VideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/player/VideoView;->g:I

    return p1
.end method

.method static synthetic y(Lcn/nubia/video/player/VideoView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/VideoView;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic z(Lcn/nubia/video/player/VideoView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/video/player/VideoView;->n:Z

    return p0
.end method


# virtual methods
.method public G()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->x:Lcn/nubia/video/player/VideoView$m;

    sget-object v1, Lcn/nubia/video/player/VideoView$m;->b:Lcn/nubia/video/player/VideoView$m;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcn/nubia/video/player/VideoView$m;->a:Lcn/nubia/video/player/VideoView$m;

    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->x:Lcn/nubia/video/player/VideoView$m;

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->O()V

    :cond_0
    return-void
.end method

.method public J()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public K()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/player/VideoView;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcn/nubia/video/player/VideoView;->setPauseState(Z)V

    .line 3
    invoke-virtual {p0}, Lcn/nubia/video/player/VideoView;->M()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcn/nubia/video/player/VideoView;->setPauseState(Z)V

    .line 5
    iput v0, p0, Lcn/nubia/video/player/VideoView;->o:I

    .line 6
    invoke-virtual {p0}, Lcn/nubia/video/player/VideoView;->R()V

    :goto_0
    return-void
.end method

.method public M()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->pause()V

    const/4 v0, 0x4

    .line 4
    iput v0, p0, Lcn/nubia/video/player/VideoView;->d:I

    .line 5
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->z:Lb/a/a/e/f;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1, v0}, Lb/a/a/e/f;->a(I)V

    :cond_0
    return-void
.end method

.method public N(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->getScreenSize()V

    .line 2
    iput-boolean p1, p0, Lcn/nubia/video/player/VideoView;->M:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->y:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-interface {v0, v1, p1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 8
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    return-void
.end method

.method public R()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->x:Lcn/nubia/video/player/VideoView$m;

    sget-object v1, Lcn/nubia/video/player/VideoView$m;->b:Lcn/nubia/video/player/VideoView$m;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->y:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v2, v2, 0x1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v2, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->J:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->K:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/video/player/VideoView;->p:Z

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->I()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->resume()V

    const/4 v0, 0x3

    .line 7
    iput v0, p0, Lcn/nubia/video/player/VideoView;->d:I

    .line 8
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->z:Lb/a/a/e/f;

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {v1, v0}, Lb/a/a/e/f;->a(I)V

    :cond_2
    return-void
.end method

.method public S(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v0, p1}, Lcn/nubia/video/mediajni/IMediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public T()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->q:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcn/nubia/video/mediajni/IMediaPlayer;->getAudioTrackCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 3
    new-instance v0, Lcn/nubia/video/player/p;

    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->q:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/video/player/p;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0071

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/p;->g(I)V

    return-void

    .line 4
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt v1, v0, :cond_2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio/und"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 7
    new-instance v1, Lcn/nubia/video/commonui/app/b$a;

    iget-object v2, p0, Lcn/nubia/video/player/VideoView;->q:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcn/nubia/video/commonui/app/b$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f00ae

    .line 8
    invoke-virtual {v1, v2}, Lcn/nubia/video/commonui/app/b$a;->k(I)Lcn/nubia/video/commonui/app/b$a;

    .line 9
    iget v2, p0, Lcn/nubia/video/player/VideoView;->v:I

    new-instance v3, Lcn/nubia/video/player/VideoView$a;

    invoke-direct {v3, p0}, Lcn/nubia/video/player/VideoView$a;-><init>(Lcn/nubia/video/player/VideoView;)V

    invoke-virtual {v1, v0, v2, v3}, Lcn/nubia/video/commonui/app/b$a;->j([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;

    .line 10
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->q:Landroid/content/Context;

    const v2, 0x7f0f0036

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcn/nubia/video/player/VideoView$b;

    invoke-direct {v2, p0}, Lcn/nubia/video/player/VideoView$b;-><init>(Lcn/nubia/video/player/VideoView;)V

    invoke-virtual {v1, v0, v2}, Lcn/nubia/video/commonui/app/b$a;->g(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;

    .line 11
    invoke-direct {p0, v1}, Lcn/nubia/video/player/VideoView;->F(Lcn/nubia/video/commonui/app/b$a;)V

    return-void
.end method

.method public V(F)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->getFrameRate()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    const/high16 v2, 0x41f00000    # 30.0f

    int-to-float v0, v0

    div-float/2addr v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    cmpl-float v0, v2, v1

    if-gez v0, :cond_3

    cmpl-float v0, p1, v1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move p1, v2

    .line 3
    :cond_3
    :goto_1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v0, p1}, Lcn/nubia/video/mediajni/IMediaPlayer;->setPlaySpeed(F)Z

    move-result p1

    return p1
.end method

.method public W(Landroid/net/Uri;III)V
    .locals 6

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/video/player/VideoView;->X(Landroid/net/Uri;Ljava/util/Map;III)V

    :cond_0
    return-void
.end method

.method public X(Landroid/net/Uri;Ljava/util/Map;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;III)V"
        }
    .end annotation

    .line 1
    iput p3, p0, Lcn/nubia/video/player/VideoView;->m:I

    .line 2
    iput-object p1, p0, Lcn/nubia/video/player/VideoView;->b:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcn/nubia/video/player/VideoView;->c:Ljava/util/Map;

    .line 4
    iput p4, p0, Lcn/nubia/video/player/VideoView;->o:I

    .line 5
    iput p5, p0, Lcn/nubia/video/player/VideoView;->v:I

    const/4 p1, 0x0

    if-lez p5, :cond_0

    add-int/lit8 p5, p5, -0x1

    .line 6
    iput p5, p0, Lcn/nubia/video/player/VideoView;->v:I

    goto :goto_0

    .line 7
    :cond_0
    iput p1, p0, Lcn/nubia/video/player/VideoView;->v:I

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/video/player/VideoView;->setPauseState(Z)V

    .line 9
    iput-boolean p1, p0, Lcn/nubia/video/player/VideoView;->n:Z

    return-void
.end method

.method public Z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->x:Lcn/nubia/video/player/VideoView$m;

    sget-object v1, Lcn/nubia/video/player/VideoView$m;->b:Lcn/nubia/video/player/VideoView$m;

    if-eq v0, v1, :cond_0

    .line 2
    iput-object v1, p0, Lcn/nubia/video/player/VideoView;->x:Lcn/nubia/video/player/VideoView$m;

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->O()V

    :cond_0
    return-void
.end method

.method public a0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->r:Lcn/nubia/video/player/g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/nubia/video/player/g;

    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->q:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/video/player/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->r:Lcn/nubia/video/player/g;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->r:Lcn/nubia/video/player/g;

    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->b:Landroid/net/Uri;

    invoke-virtual {p0}, Lcn/nubia/video/player/VideoView;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/video/player/g;->u(Landroid/net/Uri;I)V

    return-void
.end method

.method public b0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->r:Lcn/nubia/video/player/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/nubia/video/player/g;->p()V

    :cond_0
    return-void
.end method

.method public c0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->I()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->s:Lcn/nubia/video/player/s/b;

    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/s/b;->c(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    .line 3
    iget v1, p0, Lcn/nubia/video/player/VideoView;->v:I

    if-lez v1, :cond_0

    .line 4
    iget-object v2, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2, v1}, Lcn/nubia/video/mediajni/IMediaPlayer;->setAudioTrack(I)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v1}, Lcn/nubia/video/mediajni/IMediaPlayer;->start()V

    const/4 v1, 0x3

    .line 6
    iput v1, p0, Lcn/nubia/video/player/VideoView;->d:I

    .line 7
    iget-object v2, p0, Lcn/nubia/video/player/VideoView;->z:Lb/a/a/e/f;

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v2, v1}, Lb/a/a/e/f;->a(I)V

    .line 9
    :cond_1
    iget v1, p0, Lcn/nubia/video/player/VideoView;->o:I

    if-lez v1, :cond_2

    .line 10
    invoke-virtual {p0, v1}, Lcn/nubia/video/player/VideoView;->S(I)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/video/player/VideoView;->Y(I)V

    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/video/player/VideoView;->S(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public d0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->E()V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->a:Ljava/lang/String;

    const-string v1, "video release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->U()V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->stop()V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->reset()V

    .line 7
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->release()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcn/nubia/video/player/VideoView;->d:I

    .line 10
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->z:Lb/a/a/e/f;

    if-eqz v1, :cond_0

    .line 11
    invoke-interface {v1, v0}, Lb/a/a/e/f;->a(I)V

    .line 12
    :cond_0
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->Q()V

    return-void
.end method

.method public e0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->supportPlaySpeedShift()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public getAudioTrackCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->q:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcn/nubia/video/mediajni/IMediaPlayer;->getAudioTrackCount(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAudioTrackIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->getAudioTrackIndex()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcn/nubia/video/player/VideoView;->l:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    if-nez v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->getFrameRate()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getPlaySpeed()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->getPlaySpeed()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getPlaySpeedChangeEndTime()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->getPlaySpeedChangeEndTime()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getPlaySpeedChangeStartTime()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->getPlaySpeedChangeStartTime()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getPlayerState()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/VideoView;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayerType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/player/VideoView;->m:I

    return v0
.end method

.method public getRecordTime()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/VideoView;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->getRecordTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getSlomoVideoType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->getSlomoVideoType()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/player/VideoView;->i:I

    return v0
.end method

.method public getVideoRotation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->f:Lcn/nubia/video/mediajni/IMediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->getRotation()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/player/VideoView;->h:I

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/16 v1, 0x4f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_0

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_0
    if-eq p1, v1, :cond_2

    const/16 v0, 0x55

    if-eq p1, v0, :cond_2

    const/16 v0, 0x57

    if-eq p1, v0, :cond_2

    const/16 v0, 0x58

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_2

    :cond_1
    move v0, v3

    goto :goto_1

    .line 2
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/player/VideoView;->A:Lb/a/a/e/e;

    invoke-interface {v0, p1}, Lb/a/a/e/e;->a(I)V

    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_4

    .line 3
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :cond_4
    :goto_2
    return v2
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1
    sget-object v0, Lcn/nubia/video/player/VideoView$c;->a:[I

    iget-object v1, p0, Lcn/nubia/video/player/VideoView;->x:Lcn/nubia/video/player/VideoView$m;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 2
    iget v0, p0, Lcn/nubia/video/player/VideoView;->h:I

    if-nez v0, :cond_0

    iget v2, p0, Lcn/nubia/video/player/VideoView;->i:I

    if-nez v2, :cond_0

    move p1, v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    .line 4
    iget p1, p0, Lcn/nubia/video/player/VideoView;->i:I

    invoke-static {p1, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result p1

    .line 5
    iget p2, p0, Lcn/nubia/video/player/VideoView;->h:I

    if-lez p2, :cond_3

    iget v0, p0, Lcn/nubia/video/player/VideoView;->i:I

    if-lez v0, :cond_3

    mul-int v2, p2, p1

    mul-int v3, v1, v0

    if-ge v2, v3, :cond_1

    mul-int/2addr p2, p1

    .line 6
    div-int v1, p2, v0

    goto :goto_0

    :cond_1
    mul-int v2, p2, p1

    mul-int v3, v1, v0

    if-le v2, v3, :cond_3

    mul-int/2addr v0, v1

    .line 7
    div-int p1, v0, p2

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcn/nubia/video/player/VideoView;->y:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 9
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 10
    :cond_3
    :goto_0
    invoke-virtual {p0, v1, p1}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setDecoder(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/player/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/VideoView;->o:I

    .line 2
    iput p1, p0, Lcn/nubia/video/player/VideoView;->m:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcn/nubia/video/player/VideoView;->v:I

    return-void
.end method

.method public setOnNotifyKeyEventListener(Lb/a/a/e/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/VideoView;->A:Lb/a/a/e/e;

    return-void
.end method

.method public setOnNotifyMediaStateListener(Lb/a/a/e/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/VideoView;->z:Lb/a/a/e/f;

    return-void
.end method

.method public setPauseState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/player/VideoView;->p:Z

    return-void
.end method
