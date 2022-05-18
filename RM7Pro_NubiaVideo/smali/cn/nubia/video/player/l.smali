.class public Lcn/nubia/video/player/l;
.super Lcn/nubia/video/player/c;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/player/c$e;


# instance fields
.field private j:Lcn/nubia/video/player/n;

.field private k:Lcn/nubia/video/player/e;

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/content/Intent;Lcn/nubia/video/player/e;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/video/player/c;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/nubia/video/player/l;->l:I

    .line 3
    iput v0, p0, Lcn/nubia/video/player/l;->m:I

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcn/nubia/video/player/l;->n:I

    .line 5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/video/player/c;->e:Landroid/net/Uri;

    .line 6
    iput-object p4, p0, Lcn/nubia/video/player/l;->k:Lcn/nubia/video/player/e;

    .line 7
    new-instance p4, Lcn/nubia/video/player/n;

    invoke-direct {p4, p1, p2, p0}, Lcn/nubia/video/player/n;-><init>(Landroid/app/Activity;Landroid/view/View;Lcn/nubia/video/player/c$e;)V

    iput-object p4, p0, Lcn/nubia/video/player/l;->j:Lcn/nubia/video/player/n;

    .line 8
    iget-object p1, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    check-cast p1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    .line 9
    iput v0, p0, Lcn/nubia/video/player/l;->l:I

    .line 10
    iput v0, p0, Lcn/nubia/video/player/l;->m:I

    .line 11
    iput v1, p0, Lcn/nubia/video/player/l;->n:I

    const-string p1, "android.intent.extra.TITLE"

    .line 12
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 13
    iget-object p1, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    iget-object p2, p0, Lcn/nubia/video/player/c;->e:Landroid/net/Uri;

    invoke-static {p1, p2}, Lb/a/b/d/e;->v(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 14
    :cond_0
    invoke-direct {p0, p3}, Lcn/nubia/video/player/l;->u(Landroid/content/Intent;)V

    .line 15
    iget-object p2, p0, Lcn/nubia/video/player/l;->j:Lcn/nubia/video/player/n;

    invoke-virtual {p2, p1}, Lcn/nubia/video/player/n;->x(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    check-cast p1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/video/player/c;->e:Landroid/net/Uri;

    iget p3, p0, Lcn/nubia/video/player/l;->l:I

    iget p4, p0, Lcn/nubia/video/player/l;->m:I

    iget v0, p0, Lcn/nubia/video/player/l;->n:I

    invoke-virtual {p1, p2, p3, p4, v0}, Lcn/nubia/video/player/VideoView;->W(Landroid/net/Uri;III)V

    .line 17
    new-instance p1, Lcn/nubia/video/player/r/b;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcn/nubia/video/player/r/b;-><init>(Lcn/nubia/video/player/r/b$b;)V

    iput-object p1, p0, Lcn/nubia/video/player/c;->f:Lcn/nubia/video/player/r/b;

    .line 18
    new-instance p2, Lcn/nubia/video/player/r/d;

    iget-object p3, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    iget-object p4, p0, Lcn/nubia/video/player/c;->e:Landroid/net/Uri;

    invoke-direct {p2, p3, p4}, Lcn/nubia/video/player/r/d;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {p1, p2}, Lcn/nubia/video/player/r/b;->d(Lcn/nubia/video/player/r/a;)V

    return-void
.end method

.method static synthetic t(Lcn/nubia/video/player/l;)Lcn/nubia/video/player/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/l;->j:Lcn/nubia/video/player/n;

    return-object p0
.end method

.method private u(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/l;->w()V

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/player/l;->v()V

    return-void
.end method

.method private v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    new-instance v1, Lcn/nubia/video/player/l$b;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/l$b;-><init>(Lcn/nubia/video/player/l;)V

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/VideoView;->setOnNotifyKeyEventListener(Lb/a/a/e/e;)V

    return-void
.end method

.method private w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    new-instance v1, Lcn/nubia/video/player/l$a;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/l$a;-><init>(Lcn/nubia/video/player/l;)V

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/VideoView;->setOnNotifyMediaStateListener(Lb/a/a/e/f;)V

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
    iget-object v0, p0, Lcn/nubia/video/player/l;->j:Lcn/nubia/video/player/n;

    invoke-virtual {v0}, Lcn/nubia/video/player/n;->e()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/c;->f:Lcn/nubia/video/player/r/b;

    new-instance v1, Lcn/nubia/video/player/r/e;

    iget-object v2, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcn/nubia/video/player/r/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/r/b;->d(Lcn/nubia/video/player/r/a;)V

    return-void
.end method

.method public i()Lcn/nubia/video/player/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/l;->j:Lcn/nubia/video/player/n;

    return-object v0
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

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
    iget-object v0, p0, Lcn/nubia/video/player/l;->k:Lcn/nubia/video/player/e;

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

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->d0()V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/c;->f:Lcn/nubia/video/player/r/b;

    invoke-virtual {v0}, Lcn/nubia/video/player/r/b;->f()V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/l;->j:Lcn/nubia/video/player/n;

    invoke-virtual {v0}, Lcn/nubia/video/player/n;->s()V

    return-void
.end method

.method public r()V
    .locals 0

    return-void
.end method
