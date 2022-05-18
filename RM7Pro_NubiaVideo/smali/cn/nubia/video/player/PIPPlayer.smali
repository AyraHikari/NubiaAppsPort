.class public Lcn/nubia/video/player/PIPPlayer;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/PIPPlayer$f;,
        Lcn/nubia/video/player/PIPPlayer$g;
    }
.end annotation


# instance fields
.field private a:Landroid/view/WindowManager;

.field private b:Landroid/view/WindowManager$LayoutParams;

.field private c:Landroid/net/Uri;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Z

.field private h:I

.field private i:Lcn/nubia/video/mediajni/IMediaPlayer;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/graphics/Point;

.field o:Z

.field private p:Landroid/media/AudioManager;

.field private q:Lcn/nubia/video/player/PIPPlayer$f;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Landroid/os/Handler;

.field private w:Landroid/content/BroadcastReceiver;

.field private x:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private y:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/nubia/video/player/PIPPlayer;->g:Z

    .line 3
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcn/nubia/video/player/PIPPlayer;->n:Landroid/graphics/Point;

    .line 4
    iput-boolean v0, p0, Lcn/nubia/video/player/PIPPlayer;->o:Z

    .line 5
    iput-boolean v0, p0, Lcn/nubia/video/player/PIPPlayer;->r:Z

    .line 6
    iput-boolean v0, p0, Lcn/nubia/video/player/PIPPlayer;->s:Z

    .line 7
    iput-boolean v0, p0, Lcn/nubia/video/player/PIPPlayer;->t:Z

    .line 8
    iput-boolean v0, p0, Lcn/nubia/video/player/PIPPlayer;->u:Z

    .line 9
    new-instance v0, Lcn/nubia/video/player/PIPPlayer$c;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/PIPPlayer$c;-><init>(Lcn/nubia/video/player/PIPPlayer;)V

    iput-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->w:Landroid/content/BroadcastReceiver;

    .line 10
    new-instance v0, Lcn/nubia/video/player/PIPPlayer$d;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/PIPPlayer$d;-><init>(Lcn/nubia/video/player/PIPPlayer;)V

    iput-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->x:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 11
    new-instance v0, Lcn/nubia/video/player/PIPPlayer$e;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/PIPPlayer$e;-><init>(Lcn/nubia/video/player/PIPPlayer;)V

    iput-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->y:Ljava/lang/Runnable;

    return-void
.end method

.method private A()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->q:Lcn/nubia/video/player/PIPPlayer$f;

    invoke-static {v0}, Lcn/nubia/video/player/PIPPlayer$f;->a(Lcn/nubia/video/player/PIPPlayer$f;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->q:Lcn/nubia/video/player/PIPPlayer$f;

    invoke-static {v0}, Lcn/nubia/video/player/PIPPlayer$f;->a(Lcn/nubia/video/player/PIPPlayer$f;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcn/nubia/video/player/PIPPlayer$a;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/PIPPlayer$a;-><init>(Lcn/nubia/video/player/PIPPlayer;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const-string v0, "window"

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->a:Landroid/view/WindowManager;

    .line 5
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    .line 6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-le v1, v2, :cond_0

    const/16 v1, 0x7f6

    .line 8
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d3

    .line 9
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 10
    :goto_0
    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer;->n:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 11
    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 12
    iget v1, p0, Lcn/nubia/video/player/PIPPlayer;->l:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 13
    iget v1, p0, Lcn/nubia/video/player/PIPPlayer;->m:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x8

    .line 14
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 15
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer;->q:Lcn/nubia/video/player/PIPPlayer$f;

    invoke-static {v1}, Lcn/nubia/video/player/PIPPlayer$f;->b(Lcn/nubia/video/player/PIPPlayer$f;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/video/player/PIPPlayer;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->q:Lcn/nubia/video/player/PIPPlayer$f;

    invoke-static {v0}, Lcn/nubia/video/player/PIPPlayer$f;->b(Lcn/nubia/video/player/PIPPlayer$f;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/video/player/PIPPlayer$b;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/PIPPlayer$b;-><init>(Lcn/nubia/video/player/PIPPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    :cond_1
    const v0, 0x7f0f0045

    const/4 v1, 0x1

    .line 17
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 18
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22
    invoke-virtual {p0, v0}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method private B()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->p:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string v0, "audio"

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->p:Landroid/media/AudioManager;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->p:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer;->x:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

.method private C()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer;->I()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/nubia/video/player/PIPPlayer;->o:Z

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.nubia.stopPIP"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private D()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->i:Lcn/nubia/video/mediajni/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/nubia/video/player/s/b;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/s/b;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer;->c:Landroid/net/Uri;

    iget-object v2, p0, Lcn/nubia/video/player/PIPPlayer;->i:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v2}, Lcn/nubia/video/mediajni/IMediaPlayer;->getCurrentPosition()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/video/player/PIPPlayer;->i:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v3}, Lcn/nubia/video/mediajni/IMediaPlayer;->getDuration()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/video/player/s/b;->d(Landroid/net/Uri;II)V

    :cond_0
    return-void
.end method

.method private E()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->i:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->getDuration()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer;->q:Lcn/nubia/video/player/PIPPlayer$f;

    invoke-static {v1}, Lcn/nubia/video/player/PIPPlayer$f;->g(Lcn/nubia/video/player/PIPPlayer$f;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 3
    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer;->q:Lcn/nubia/video/player/PIPPlayer$f;

    invoke-static {v1}, Lcn/nubia/video/player/PIPPlayer$f;->h(Lcn/nubia/video/player/PIPPlayer$f;)Landroid/widget/TextView;

    move-result-object v1

    int-to-long v2, v0

    invoke-static {v2, v3}, Lb/a/b/d/e;->R(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->i:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer;->q:Lcn/nubia/video/player/PIPPlayer$f;

    invoke-static {v1}, Lcn/nubia/video/player/PIPPlayer$f;->d(Lcn/nubia/video/player/PIPPlayer$f;)Landroid/widget/TextView;

    move-result-object v1

    int-to-long v2, v0

    invoke-static {v2, v3}, Lb/a/b/d/e;->R(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer;->q:Lcn/nubia/video/player/PIPPlayer$f;

    invoke-static {v1}, Lcn/nubia/video/player/PIPPlayer$f;->g(Lcn/nubia/video/player/PIPPlayer$f;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private F()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->i:Lcn/nubia/video/mediajni/IMediaPlayer;

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer;->c:Landroid/net/Uri;

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 4
    iget-boolean v2, p0, Lcn/nubia/video/player/PIPPlayer;->s:Z

    if-nez v2, :cond_0

    .line 5
    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer;->i:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v1}, Lcn/nubia/video/mediajni/IMediaPlayer;->getCurrentPosition()I

    move-result v1

    :cond_0
    const-string v2, "seektime"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    iget v1, p0, Lcn/nubia/video/player/PIPPlayer;->f:I

    const-string v2, "playertype"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    iget v1, p0, Lcn/nubia/video/player/PIPPlayer;->h:I

    const-string v2, "audiotrackindex"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer;->d:Ljava/lang/String;

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    iget-boolean v1, p0, Lcn/nubia/video/player/PIPPlayer;->t:Z

    const-string v2, "video_list_start_player"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11
    const-class v1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer;->i:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v1}, Lcn/nubia/video/mediajni/IMediaPlayer;->stop()V

    .line 16
    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer;->i:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v1}, Lcn/nubia/video/mediajni/IMediaPlayer;->reset()V

    .line 17
    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer;->i:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v1}, Lcn/nubia/video/mediajni/IMediaPlayer;->release()V

    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lcn/nubia/video/player/PIPPlayer;->i:Lcn/nubia/video/mediajni/IMediaPlayer;

    .line 19
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer;->v()V

    .line 20
    invoke-virtual {p0, v0}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    .line 21
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_1
    return-void
.end method

.method private G(Z)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isRunning"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "runningReason"

    if-eqz p1, :cond_0

    const-string p1, "play video"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "stopped"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p1, "content://cn.nubia.video.player.RunningStatusProvider"

    .line 5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private H()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->p:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer;->x:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->p:Landroid/media/AudioManager;

    :cond_0
    return-void
.end method

.method private I()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/PIPPlayer;->o:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/nubia/video/player/PIPPlayer;->o:Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/video/player/PIPPlayer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/video/player/PIPPlayer;->s:Z

    return p0
.end method

.method static synthetic b(Lcn/nubia/video/player/PIPPlayer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/player/PIPPlayer;->s:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/video/player/PIPPlayer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/video/player/PIPPlayer;->u:Z

    return p0
.end method

.method static synthetic d(Lcn/nubia/video/player/PIPPlayer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/video/player/PIPPlayer;->g:Z

    return p0
.end method

.method static synthetic e(Lcn/nubia/video/player/PIPPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/player/PIPPlayer;->f:I

    return p0
.end method

.method static synthetic f(Lcn/nubia/video/player/PIPPlayer;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/PIPPlayer;->c:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/video/player/PIPPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/player/PIPPlayer;->h:I

    return p0
.end method

.method static synthetic h(Lcn/nubia/video/player/PIPPlayer;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/PIPPlayer;->b:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/video/player/PIPPlayer;)Landroid/view/WindowManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/PIPPlayer;->a:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic j(Lcn/nubia/video/player/PIPPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer;->x()V

    return-void
.end method

.method static synthetic k(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/PIPPlayer;->i:Lcn/nubia/video/mediajni/IMediaPlayer;

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/video/player/PIPPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer;->z()V

    return-void
.end method

.method static synthetic m(Lcn/nubia/video/player/PIPPlayer;Lcn/nubia/video/mediajni/IMediaPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/PIPPlayer;->i:Lcn/nubia/video/mediajni/IMediaPlayer;

    return-object p1
.end method

.method static synthetic n(Lcn/nubia/video/player/PIPPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer;->F()V

    return-void
.end method

.method static synthetic o(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/player/PIPPlayer$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/PIPPlayer;->q:Lcn/nubia/video/player/PIPPlayer$f;

    return-object p0
.end method

.method static synthetic p(Lcn/nubia/video/player/PIPPlayer;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/PIPPlayer;->y:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic q(Lcn/nubia/video/player/PIPPlayer;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/PIPPlayer;->v:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic r(Lcn/nubia/video/player/PIPPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer;->E()V

    return-void
.end method

.method static synthetic s(Lcn/nubia/video/player/PIPPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer;->w()V

    return-void
.end method

.method static synthetic t(Lcn/nubia/video/player/PIPPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/player/PIPPlayer;->e:I

    return p0
.end method

.method private u()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43700000    # 240.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/video/player/PIPPlayer;->j:I

    const/high16 v1, 0x43340000    # 180.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 3
    iput v1, p0, Lcn/nubia/video/player/PIPPlayer;->k:I

    .line 4
    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer;->n:Landroid/graphics/Point;

    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Point;->x:I

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->v:Landroid/os/Handler;

    .line 6
    new-instance v0, Lcn/nubia/video/player/PIPPlayer$f;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/PIPPlayer$f;-><init>(Lcn/nubia/video/player/PIPPlayer;)V

    iput-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->q:Lcn/nubia/video/player/PIPPlayer$f;

    .line 7
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer;->C()V

    .line 8
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer;->B()V

    return-void
.end method

.method private v()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer;->D()V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->i:Lcn/nubia/video/mediajni/IMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->stop()V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->i:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->reset()V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->i:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->release()V

    .line 6
    iput-object v1, p0, Lcn/nubia/video/player/PIPPlayer;->i:Lcn/nubia/video/mediajni/IMediaPlayer;

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->q:Lcn/nubia/video/player/PIPPlayer$f;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcn/nubia/video/player/PIPPlayer$f;->b(Lcn/nubia/video/player/PIPPlayer$f;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 9
    iget-object v2, p0, Lcn/nubia/video/player/PIPPlayer;->q:Lcn/nubia/video/player/PIPPlayer$f;

    invoke-static {v2}, Lcn/nubia/video/player/PIPPlayer$f;->b(Lcn/nubia/video/player/PIPPlayer$f;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->q:Lcn/nubia/video/player/PIPPlayer$f;

    invoke-static {v0, v1}, Lcn/nubia/video/player/PIPPlayer$f;->c(Lcn/nubia/video/player/PIPPlayer$f;Landroid/view/View;)Landroid/view/View;

    .line 11
    :cond_2
    iput-object v1, p0, Lcn/nubia/video/player/PIPPlayer;->a:Landroid/view/WindowManager;

    .line 12
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer;->I()V

    .line 13
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer;->H()V

    return-void
.end method

.method private w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->q:Lcn/nubia/video/player/PIPPlayer$f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/nubia/video/player/PIPPlayer$f;->k()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->i:Lcn/nubia/video/mediajni/IMediaPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->i:Lcn/nubia/video/mediajni/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method private z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->i:Lcn/nubia/video/mediajni/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->resume()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcn/nubia/video/player/PIPPlayer;->G(Z)V

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer;->v()V

    .line 3
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/PIPPlayer;->r:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_8

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcn/nubia/video/player/PIPPlayer;->r:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcn/nubia/video/player/PIPPlayer;->s:Z

    .line 6
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "isGameApk"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcn/nubia/video/player/PIPPlayer;->u:Z

    .line 7
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer;->u()V

    .line 8
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/video/player/PIPPlayer;->c:Landroid/net/Uri;

    const-string v2, "android.intent.extra.TITLE"

    .line 9
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/video/player/PIPPlayer;->d:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "playertype"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcn/nubia/video/player/PIPPlayer;->f:I

    .line 11
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "isslomovideo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcn/nubia/video/player/PIPPlayer;->g:Z

    .line 12
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "audiotrackindex"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcn/nubia/video/player/PIPPlayer;->h:I

    .line 13
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "seektime"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcn/nubia/video/player/PIPPlayer;->e:I

    const-string v2, "video_list_start_player"

    .line 14
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/video/player/PIPPlayer;->t:Z

    .line 15
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "videowidth"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 16
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "videoheight"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lez v1, :cond_7

    if-lez v2, :cond_7

    .line 17
    iget v3, p0, Lcn/nubia/video/player/PIPPlayer;->j:I

    .line 18
    iget v4, p0, Lcn/nubia/video/player/PIPPlayer;->k:I

    if-le v2, v1, :cond_2

    move v7, v4

    move v4, v3

    move v3, v7

    .line 19
    :cond_2
    div-int v5, v1, v3

    div-int v6, v2, v4

    if-le v5, v6, :cond_3

    .line 20
    iput v3, p0, Lcn/nubia/video/player/PIPPlayer;->l:I

    mul-int/2addr v2, v3

    .line 21
    div-int/2addr v2, v1

    iput v2, p0, Lcn/nubia/video/player/PIPPlayer;->m:I

    goto :goto_0

    .line 22
    :cond_3
    iput v4, p0, Lcn/nubia/video/player/PIPPlayer;->m:I

    mul-int/2addr v1, v4

    .line 23
    div-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/video/player/PIPPlayer;->l:I

    .line 24
    :goto_0
    invoke-static {p0}, Lb/a/b/d/e;->C(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 25
    iget v1, p0, Lcn/nubia/video/player/PIPPlayer;->l:I

    invoke-static {p0}, Lcn/nubia/video/commonui/app/c;->c(Landroid/content/Context;)I

    move-result v2

    if-le v1, v2, :cond_4

    invoke-static {p0}, Lcn/nubia/video/commonui/app/c;->d(Landroid/content/Context;)I

    move-result v1

    goto :goto_1

    :cond_4
    iget v1, p0, Lcn/nubia/video/player/PIPPlayer;->l:I

    :goto_1
    iput v1, p0, Lcn/nubia/video/player/PIPPlayer;->l:I

    goto :goto_3

    .line 26
    :cond_5
    iget v1, p0, Lcn/nubia/video/player/PIPPlayer;->l:I

    invoke-static {p0}, Lcn/nubia/video/commonui/app/c;->d(Landroid/content/Context;)I

    move-result v2

    if-le v1, v2, :cond_6

    invoke-static {p0}, Lcn/nubia/video/commonui/app/c;->d(Landroid/content/Context;)I

    move-result v1

    goto :goto_2

    :cond_6
    iget v1, p0, Lcn/nubia/video/player/PIPPlayer;->l:I

    :goto_2
    iput v1, p0, Lcn/nubia/video/player/PIPPlayer;->l:I

    .line 27
    :cond_7
    :goto_3
    invoke-direct {p0, v0}, Lcn/nubia/video/player/PIPPlayer;->G(Z)V

    .line 28
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer;->A()V

    .line 29
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    .line 30
    :cond_8
    :goto_4
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer;->w()V

    .line 31
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public y()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer;->E()V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer;->y:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
