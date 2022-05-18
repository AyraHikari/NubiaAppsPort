.class public Lcn/nubia/video/player/nubiaplayer/a;
.super Lcn/nubia/video/player/c;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/player/c$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/nubiaplayer/a$c;
    }
.end annotation


# instance fields
.field private j:Lcn/nubia/video/player/nubiaplayer/c;

.field private k:Lcn/nubia/video/player/e;

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Lcn/nubia/video/player/nubiaplayer/f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/content/Intent;Lcn/nubia/video/player/e;)V
    .locals 10

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/video/player/c;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/a;->m:I

    .line 3
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/a;->n:I

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/a;->o:I

    const-string v2, ""

    .line 5
    iput-object v2, p0, Lcn/nubia/video/player/nubiaplayer/a;->p:Ljava/lang/String;

    .line 6
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/a;->q:Z

    const/4 v3, 0x0

    .line 7
    iput-object v3, p0, Lcn/nubia/video/player/nubiaplayer/a;->r:Lcn/nubia/video/player/nubiaplayer/f;

    .line 8
    iget-object v4, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    check-cast v4, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v4}, Lcn/nubia/video/player/PlayerActivity;->n()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/video/player/c;->e:Landroid/net/Uri;

    .line 9
    iput-object p4, p0, Lcn/nubia/video/player/nubiaplayer/a;->k:Lcn/nubia/video/player/e;

    .line 10
    iput-object v2, p0, Lcn/nubia/video/player/nubiaplayer/a;->p:Ljava/lang/String;

    .line 11
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/a;->m:I

    .line 12
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/a;->n:I

    .line 13
    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/a;->o:I

    .line 14
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p4

    if-eqz p4, :cond_0

    const-string v4, "is_game_highlights"

    .line 15
    invoke-virtual {p4, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/video/player/nubiaplayer/a;->p:Ljava/lang/String;

    const-string v2, "playertype"

    .line 16
    invoke-virtual {p4, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcn/nubia/video/player/nubiaplayer/a;->m:I

    const-string v2, "seektime"

    .line 17
    invoke-virtual {p4, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcn/nubia/video/player/nubiaplayer/a;->n:I

    const-string v2, "audiotrackindex"

    .line 18
    invoke-virtual {p4, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcn/nubia/video/player/nubiaplayer/a;->o:I

    .line 19
    :cond_0
    iget-object p4, p0, Lcn/nubia/video/player/nubiaplayer/a;->p:Ljava/lang/String;

    const-string v1, "cn.nubia.gamehighlights"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcn/nubia/video/player/nubiaplayer/a;->q:Z

    .line 20
    new-instance p4, Lcn/nubia/video/player/nubiaplayer/c;

    iget-object v6, p0, Lcn/nubia/video/player/c;->e:Landroid/net/Uri;

    move-object v4, p4

    move-object v5, p1

    move-object v7, p2

    move-object v8, p0

    invoke-direct/range {v4 .. v9}, Lcn/nubia/video/player/nubiaplayer/c;-><init>(Landroid/app/Activity;Landroid/net/Uri;Landroid/view/View;Lcn/nubia/video/player/c$c;Z)V

    iput-object p4, p0, Lcn/nubia/video/player/nubiaplayer/a;->j:Lcn/nubia/video/player/nubiaplayer/c;

    const-string p1, "secure_camera"

    .line 21
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p4, p1}, Lcn/nubia/video/player/nubiaplayer/c;->O0(Z)V

    .line 22
    iget-object p1, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    check-cast p1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    .line 23
    new-instance p1, Lcn/nubia/video/player/r/b;

    new-instance p2, Lcn/nubia/video/player/nubiaplayer/a$c;

    invoke-direct {p2, p0, v3}, Lcn/nubia/video/player/nubiaplayer/a$c;-><init>(Lcn/nubia/video/player/nubiaplayer/a;Lcn/nubia/video/player/nubiaplayer/a$a;)V

    invoke-direct {p1, p2}, Lcn/nubia/video/player/r/b;-><init>(Lcn/nubia/video/player/r/b$b;)V

    iput-object p1, p0, Lcn/nubia/video/player/c;->f:Lcn/nubia/video/player/r/b;

    .line 24
    invoke-direct {p0, p3}, Lcn/nubia/video/player/nubiaplayer/a;->z(Landroid/content/Intent;)V

    .line 25
    iget-object p1, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    iget-object p2, p0, Lcn/nubia/video/player/c;->e:Landroid/net/Uri;

    invoke-static {p1, p2}, Lb/a/b/d/e;->v(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 26
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/a;->j:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-virtual {p2, p1}, Lcn/nubia/video/player/nubiaplayer/c;->L0(Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    check-cast p1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/video/player/c;->e:Landroid/net/Uri;

    iget p3, p0, Lcn/nubia/video/player/nubiaplayer/a;->m:I

    iget p4, p0, Lcn/nubia/video/player/nubiaplayer/a;->n:I

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/a;->o:I

    invoke-virtual {p1, p2, p3, p4, v0}, Lcn/nubia/video/player/VideoView;->W(Landroid/net/Uri;III)V

    return-void
.end method

.method private A()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/a;->r:Lcn/nubia/video/player/nubiaplayer/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/nubia/video/player/nubiaplayer/f;->j()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/a;->r:Lcn/nubia/video/player/nubiaplayer/f;

    :cond_0
    return-void
.end method

.method private B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/a$b;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/nubiaplayer/a$b;-><init>(Lcn/nubia/video/player/nubiaplayer/a;)V

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/VideoView;->setOnNotifyKeyEventListener(Lb/a/a/e/e;)V

    return-void
.end method

.method private C()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/a$a;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/nubiaplayer/a$a;-><init>(Lcn/nubia/video/player/nubiaplayer/a;)V

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/VideoView;->setOnNotifyMediaStateListener(Lb/a/a/e/f;)V

    return-void
.end method

.method static synthetic t(Lcn/nubia/video/player/nubiaplayer/a;)Lcn/nubia/video/player/nubiaplayer/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/a;->j:Lcn/nubia/video/player/nubiaplayer/c;

    return-object p0
.end method

.method static synthetic u(Lcn/nubia/video/player/nubiaplayer/a;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method static synthetic v(Lcn/nubia/video/player/nubiaplayer/a;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method static synthetic w(Lcn/nubia/video/player/nubiaplayer/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/player/c;->d:Z

    return p1
.end method

.method static synthetic x(Lcn/nubia/video/player/nubiaplayer/a;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method static synthetic y(Lcn/nubia/video/player/nubiaplayer/a;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method private z(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/a;->C()V

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/a;->B()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->J()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/nubia/video/player/c;->s()V

    .line 3
    invoke-virtual {p0}, Lcn/nubia/video/player/c;->o()V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/a;->j:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-virtual {v0}, Lcn/nubia/video/player/nubiaplayer/c;->e()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/c;->f:Lcn/nubia/video/player/r/b;

    new-instance v1, Lcn/nubia/video/player/r/e;

    iget-object v2, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcn/nubia/video/player/r/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/r/b;->d(Lcn/nubia/video/player/r/a;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/a;->l:Z

    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/nubia/video/player/c;->c()V

    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/nubia/video/player/c;->d()V

    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/nubia/video/player/c;->e()V

    .line 2
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/a;->onFinish()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/a;->k:Lcn/nubia/video/player/e;

    invoke-interface {v0}, Lcn/nubia/video/player/e;->c()V

    return-void
.end method

.method public h(IIIIZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/player/c;->l()V

    .line 2
    new-instance v0, Lcn/nubia/video/player/nubiaplayer/f;

    iget-object v1, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/video/player/nubiaplayer/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/a;->r:Lcn/nubia/video/player/nubiaplayer/f;

    .line 3
    new-instance v0, Lb/a/b/b/d;

    invoke-direct {v0}, Lb/a/b/b/d;-><init>()V

    int-to-long v1, p1

    .line 4
    iput-wide v1, v0, Lb/a/b/b/d;->a:J

    int-to-long p1, p2

    .line 5
    iput-wide p1, v0, Lb/a/b/b/d;->b:J

    int-to-long p1, p4

    .line 6
    iput-wide p1, v0, Lb/a/b/b/d;->e:J

    int-to-long p1, p3

    .line 7
    iput-wide p1, v0, Lb/a/b/b/d;->d:J

    .line 8
    iget-object p1, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->e0()Z

    move-result p1

    iput-boolean p1, v0, Lb/a/b/b/d;->c:Z

    .line 9
    iget-object p1, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getFrameRate()I

    .line 10
    iget-object p1, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getVideoRotation()I

    .line 11
    iget-object p1, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getDuration()I

    move-result p1

    iput p1, v0, Lb/a/b/b/d;->f:I

    if-lez p1, :cond_0

    .line 12
    iget-object p1, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getRecordTime()J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-lez p1, :cond_0

    .line 13
    iget-object p1, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getRecordTime()J

    move-result-wide p1

    iget-wide p3, v0, Lb/a/b/b/d;->b:J

    iget-wide v1, v0, Lb/a/b/b/d;->a:J

    sub-long/2addr p3, v1

    mul-long/2addr p1, p3

    iget p3, v0, Lb/a/b/b/d;->f:I

    int-to-long p3, p3

    div-long/2addr p1, p3

    iput-wide p1, v0, Lb/a/b/b/d;->g:J

    .line 14
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/a;->r:Lcn/nubia/video/player/nubiaplayer/f;

    invoke-virtual {p1, v0}, Lcn/nubia/video/player/nubiaplayer/f;->k(Lb/a/b/b/d;)V

    .line 15
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/a;->r:Lcn/nubia/video/player/nubiaplayer/f;

    iget-object p2, p0, Lcn/nubia/video/player/c;->e:Landroid/net/Uri;

    invoke-virtual {p1, p2, p5}, Lcn/nubia/video/player/nubiaplayer/f;->o(Landroid/net/Uri;Z)V

    return-void
.end method

.method public i()Lcn/nubia/video/player/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/a;->j:Lcn/nubia/video/player/nubiaplayer/c;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/a;->l:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/c;->d:Z

    return v0
.end method

.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/a;->k:Lcn/nubia/video/player/e;

    invoke-interface {v0}, Lcn/nubia/video/player/e;->onFinish()V

    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/nubia/video/player/c;->p()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/nubia/video/player/c;->d:Z

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->b0()V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->d0()V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/c;->f:Lcn/nubia/video/player/r/b;

    invoke-virtual {v0}, Lcn/nubia/video/player/r/b;->f()V

    .line 6
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/a;->A()V

    .line 7
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/a;->j:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-virtual {v0}, Lcn/nubia/video/player/nubiaplayer/c;->C0()V

    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/a;->j:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-virtual {v0}, Lcn/nubia/video/player/nubiaplayer/c;->n()V

    return-void
.end method
