.class public Lcn/nubia/video/player/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/a$b;
    }
.end annotation


# instance fields
.field private a:Landroid/media/AudioManager;

.field private b:Landroid/content/Context;

.field private c:Lcn/nubia/video/player/a$b;

.field private d:I

.field private e:Z

.field private f:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/video/player/a$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcn/nubia/video/player/a;->d:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/nubia/video/player/a;->e:Z

    .line 4
    new-instance v0, Lcn/nubia/video/player/a$a;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/a$a;-><init>(Lcn/nubia/video/player/a;)V

    iput-object v0, p0, Lcn/nubia/video/player/a;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 5
    iput-object p1, p0, Lcn/nubia/video/player/a;->b:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcn/nubia/video/player/a;->c:Lcn/nubia/video/player/a$b;

    return-void
.end method

.method static synthetic a(Lcn/nubia/video/player/a;)Lcn/nubia/video/player/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/a;->c:Lcn/nubia/video/player/a$b;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/video/player/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/video/player/a;->e:Z

    return p0
.end method

.method static synthetic c(Lcn/nubia/video/player/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/player/a;->e:Z

    return p1
.end method

.method static synthetic d(Lcn/nubia/video/player/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/player/a;->d:I

    return p0
.end method

.method static synthetic e(Lcn/nubia/video/player/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/player/a;->d:I

    return p1
.end method

.method static synthetic f(Lcn/nubia/video/player/a;)Landroid/media/AudioManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/a;->a:Landroid/media/AudioManager;

    return-object p0
.end method


# virtual methods
.method public g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/a;->a:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/a;->b:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcn/nubia/video/player/a;->a:Landroid/media/AudioManager;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/a;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/nubia/video/player/a;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

.method public h()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/a;->a:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcn/nubia/video/player/a;->d:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3
    iput-boolean v3, p0, Lcn/nubia/video/player/a;->e:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/a;->a:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcn/nubia/video/player/a;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcn/nubia/video/player/a;->a:Landroid/media/AudioManager;

    :cond_1
    return-void
.end method
