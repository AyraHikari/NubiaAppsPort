.class public Lcn/nubia/camera/clone/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/clone/b$b;,
        Lcn/nubia/camera/clone/b$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/media/MediaPlayer;

.field private c:Landroid/media/MediaPlayer;

.field private d:Lcn/nubia/camera/clone/b$b;

.field private e:Lcn/nubia/camera/clone/b$a;

.field private f:Lcn/nubia/camera/ad/a;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcn/nubia/camera/clone/b;->a:Z

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcn/nubia/camera/clone/b;->b:Landroid/media/MediaPlayer;

    .line 19
    iput-object v0, p0, Lcn/nubia/camera/clone/b;->c:Landroid/media/MediaPlayer;

    .line 20
    iput-object v0, p0, Lcn/nubia/camera/clone/b;->d:Lcn/nubia/camera/clone/b$b;

    .line 21
    iput-object v0, p0, Lcn/nubia/camera/clone/b;->e:Lcn/nubia/camera/clone/b$a;

    .line 23
    iput-object v0, p0, Lcn/nubia/camera/clone/b;->f:Lcn/nubia/camera/ad/a;

    .line 26
    iput-object p1, p0, Lcn/nubia/camera/clone/b;->f:Lcn/nubia/camera/ad/a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/clone/b;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 14
    iput-object p1, p0, Lcn/nubia/camera/clone/b;->b:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/clone/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 14
    invoke-direct {p0}, Lcn/nubia/camera/clone/b;->b()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private a(J)V
    .locals 7

    .line 80
    new-instance v6, Lcn/nubia/camera/clone/b$b;

    const-wide/16 v0, 0x3e8

    mul-long v2, p1, v0

    const-wide/16 v4, 0x1f4

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/clone/b$b;-><init>(Lcn/nubia/camera/clone/b;JJ)V

    iput-object v6, p0, Lcn/nubia/camera/clone/b;->d:Lcn/nubia/camera/clone/b$b;

    .line 82
    invoke-virtual {v6}, Lcn/nubia/camera/clone/b$b;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/clone/b;Z)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcn/nubia/camera/clone/b;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcn/nubia/camera/clone/b;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcn/nubia/camera/clone/b;->a:Z

    .line 94
    invoke-direct {p0}, Lcn/nubia/camera/clone/b;->c()V

    .line 95
    iget-object v0, p0, Lcn/nubia/camera/clone/b;->e:Lcn/nubia/camera/clone/b$a;

    if-eqz v0, :cond_1

    .line 96
    invoke-interface {v0, p1}, Lcn/nubia/camera/clone/b$a;->a(Z)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/clone/b;)Landroid/content/SharedPreferences;
    .locals 0

    .line 14
    invoke-direct {p0}, Lcn/nubia/camera/clone/b;->d()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/clone/b;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 14
    iput-object p1, p0, Lcn/nubia/camera/clone/b;->c:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private b()Lcn/nubia/camera/ad/a;
    .locals 1

    .line 86
    iget-object v0, p0, Lcn/nubia/camera/clone/b;->f:Lcn/nubia/camera/ad/a;

    return-object v0
.end method

.method static synthetic c(Lcn/nubia/camera/clone/b;)Landroid/media/MediaPlayer;
    .locals 0

    .line 14
    iget-object p0, p0, Lcn/nubia/camera/clone/b;->b:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcn/nubia/camera/clone/b;->b:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 103
    iget-object v0, p0, Lcn/nubia/camera/clone/b;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 104
    iput-object v1, p0, Lcn/nubia/camera/clone/b;->b:Landroid/media/MediaPlayer;

    .line 107
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/clone/b;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 109
    iget-object v0, p0, Lcn/nubia/camera/clone/b;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 110
    iput-object v1, p0, Lcn/nubia/camera/clone/b;->c:Landroid/media/MediaPlayer;

    .line 113
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/clone/b;->d:Lcn/nubia/camera/clone/b$b;

    invoke-virtual {v0}, Lcn/nubia/camera/clone/b$b;->cancel()V

    .line 114
    iput-object v1, p0, Lcn/nubia/camera/clone/b;->d:Lcn/nubia/camera/clone/b$b;

    return-void
.end method

.method private d()Landroid/content/SharedPreferences;
    .locals 1

    .line 219
    iget-object v0, p0, Lcn/nubia/camera/clone/b;->f:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcn/nubia/camera/clone/b;)Landroid/media/MediaPlayer;
    .locals 0

    .line 14
    iget-object p0, p0, Lcn/nubia/camera/clone/b;->c:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/clone/b;)Lcn/nubia/camera/clone/b$a;
    .locals 0

    .line 14
    iget-object p0, p0, Lcn/nubia/camera/clone/b;->e:Lcn/nubia/camera/clone/b$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, v0}, Lcn/nubia/camera/clone/b;->a(Z)V

    return-void
.end method

.method public a(Lcn/nubia/camera/clone/b$a;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcn/nubia/camera/clone/b;->e:Lcn/nubia/camera/clone/b$a;

    return-void
.end method

.method public a(I)Z
    .locals 3

    .line 60
    iget-boolean v0, p0, Lcn/nubia/camera/clone/b;->a:Z

    const-string v1, "CloneDelayShoot"

    if-eqz v0, :cond_0

    const-string p1, "delayshoot already running, just end delayShoot"

    .line 61
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 62
    invoke-direct {p0, p1}, Lcn/nubia/camera/clone/b;->a(Z)V

    return p1

    :cond_0
    const-string v0, "start delayShoot"

    .line 65
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcn/nubia/camera/clone/b;->e:Lcn/nubia/camera/clone/b$a;

    if-eqz v0, :cond_1

    .line 67
    invoke-interface {v0}, Lcn/nubia/camera/clone/b$a;->a()V

    :cond_1
    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcn/nubia/camera/clone/b;->a:Z

    int-to-long v1, p1

    .line 70
    invoke-direct {p0, v1, v2}, Lcn/nubia/camera/clone/b;->a(J)V

    return v0
.end method
