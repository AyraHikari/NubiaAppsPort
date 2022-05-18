.class public Lcn/nubia/video/player/i;
.super Lcn/nubia/video/player/c;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/player/c$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/i$c;
    }
.end annotation


# instance fields
.field private j:Lcn/nubia/video/player/k;

.field private k:Lcn/nubia/video/player/e;

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/content/Intent;Lcn/nubia/video/player/e;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/video/player/c;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/nubia/video/player/i;->m:I

    .line 3
    iput v0, p0, Lcn/nubia/video/player/i;->n:I

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcn/nubia/video/player/i;->o:I

    const-string v2, ""

    .line 5
    iput-object v2, p0, Lcn/nubia/video/player/i;->p:Ljava/lang/String;

    .line 6
    iput-boolean v0, p0, Lcn/nubia/video/player/i;->q:Z

    .line 7
    iput-object p4, p0, Lcn/nubia/video/player/i;->k:Lcn/nubia/video/player/e;

    .line 8
    iput-object v2, p0, Lcn/nubia/video/player/i;->p:Ljava/lang/String;

    .line 9
    iput v0, p0, Lcn/nubia/video/player/i;->m:I

    .line 10
    iput v0, p0, Lcn/nubia/video/player/i;->n:I

    .line 11
    iput v1, p0, Lcn/nubia/video/player/i;->o:I

    .line 12
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p4

    if-eqz p4, :cond_0

    const-string v3, "is_game_highlights"

    .line 13
    invoke-virtual {p4, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/video/player/i;->p:Ljava/lang/String;

    const-string v2, "playertype"

    .line 14
    invoke-virtual {p4, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcn/nubia/video/player/i;->m:I

    const-string v2, "seektime"

    .line 15
    invoke-virtual {p4, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/i;->n:I

    const-string v0, "audiotrackindex"

    .line 16
    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcn/nubia/video/player/i;->o:I

    .line 17
    :cond_0
    iget-object p4, p0, Lcn/nubia/video/player/i;->p:Ljava/lang/String;

    const-string v0, "cn.nubia.gamehighlights"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    iput-boolean p4, p0, Lcn/nubia/video/player/i;->q:Z

    .line 18
    new-instance v0, Lcn/nubia/video/player/k;

    invoke-direct {v0, p1, p2, p0, p4}, Lcn/nubia/video/player/k;-><init>(Landroid/app/Activity;Landroid/view/View;Lcn/nubia/video/player/c$d;Z)V

    iput-object v0, p0, Lcn/nubia/video/player/i;->j:Lcn/nubia/video/player/k;

    .line 19
    iget-object p1, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    check-cast p1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    .line 20
    new-instance p1, Lcn/nubia/video/player/r/b;

    new-instance p2, Lcn/nubia/video/player/i$c;

    const/4 p4, 0x0

    invoke-direct {p2, p0, p4}, Lcn/nubia/video/player/i$c;-><init>(Lcn/nubia/video/player/i;Lcn/nubia/video/player/i$a;)V

    invoke-direct {p1, p2}, Lcn/nubia/video/player/r/b;-><init>(Lcn/nubia/video/player/r/b$b;)V

    iput-object p1, p0, Lcn/nubia/video/player/c;->f:Lcn/nubia/video/player/r/b;

    .line 21
    iget-object p1, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    check-cast p1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1}, Lcn/nubia/video/player/PlayerActivity;->n()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/c;->e:Landroid/net/Uri;

    .line 22
    invoke-direct {p0, p3}, Lcn/nubia/video/player/i;->u(Landroid/content/Intent;)V

    .line 23
    iget-object p1, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    iget-object p2, p0, Lcn/nubia/video/player/c;->e:Landroid/net/Uri;

    invoke-static {p1, p2}, Lb/a/b/d/e;->v(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 24
    iget-object p2, p0, Lcn/nubia/video/player/i;->j:Lcn/nubia/video/player/k;

    invoke-virtual {p2, p1}, Lcn/nubia/video/player/k;->C(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    check-cast p1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/video/player/c;->e:Landroid/net/Uri;

    iget p3, p0, Lcn/nubia/video/player/i;->m:I

    iget p4, p0, Lcn/nubia/video/player/i;->n:I

    iget v0, p0, Lcn/nubia/video/player/i;->o:I

    invoke-virtual {p1, p2, p3, p4, v0}, Lcn/nubia/video/player/VideoView;->W(Landroid/net/Uri;III)V

    return-void
.end method

.method static synthetic t(Lcn/nubia/video/player/i;)Lcn/nubia/video/player/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/i;->j:Lcn/nubia/video/player/k;

    return-object p0
.end method

.method private u(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/i;->w()V

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/player/i;->v()V

    return-void
.end method

.method private v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    new-instance v1, Lcn/nubia/video/player/i$b;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/i$b;-><init>(Lcn/nubia/video/player/i;)V

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/VideoView;->setOnNotifyKeyEventListener(Lb/a/a/e/e;)V

    return-void
.end method

.method private w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    new-instance v1, Lcn/nubia/video/player/i$a;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/i$a;-><init>(Lcn/nubia/video/player/i;)V

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
    iget-object v0, p0, Lcn/nubia/video/player/i;->j:Lcn/nubia/video/player/k;

    invoke-virtual {v0}, Lcn/nubia/video/player/k;->e()V

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
    iput-boolean p1, p0, Lcn/nubia/video/player/i;->l:Z

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
    invoke-virtual {p0}, Lcn/nubia/video/player/i;->onFinish()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/i;->k:Lcn/nubia/video/player/e;

    invoke-interface {v0}, Lcn/nubia/video/player/e;->c()V

    return-void
.end method

.method public g(I)V
    .locals 0

    return-void
.end method

.method public i()Lcn/nubia/video/player/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/i;->j:Lcn/nubia/video/player/k;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/i;->l:Z

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
    iget-object v0, p0, Lcn/nubia/video/player/i;->k:Lcn/nubia/video/player/e;

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
    iget-object v0, p0, Lcn/nubia/video/player/i;->j:Lcn/nubia/video/player/k;

    invoke-virtual {v0}, Lcn/nubia/video/player/k;->v()V

    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/i;->j:Lcn/nubia/video/player/k;

    invoke-virtual {v0}, Lcn/nubia/video/player/k;->n()V

    return-void
.end method
