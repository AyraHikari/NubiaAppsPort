.class public Lcn/nubia/video/player/nubiaplayer/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/b/b/c$b;


# instance fields
.field private a:Lcn/nubia/video/commonui/app/f;

.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;

.field private d:Lb/a/b/b/c;

.field private e:Landroid/net/Uri;

.field private f:Lb/a/b/b/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/f;->b:Landroid/content/Context;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/f;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic d(Lcn/nubia/video/player/nubiaplayer/f;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/f;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/video/player/nubiaplayer/f;)Lcn/nubia/video/commonui/app/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/f;->a:Lcn/nubia/video/commonui/app/f;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/video/player/nubiaplayer/f;Lcn/nubia/video/commonui/app/f;)Lcn/nubia/video/commonui/app/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/f;->a:Lcn/nubia/video/commonui/app/f;

    return-object p1
.end method

.method static synthetic g(Lcn/nubia/video/player/nubiaplayer/f;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/f;->i()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcn/nubia/video/player/nubiaplayer/f;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/f;->m(I)V

    return-void
.end method

.method private i()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f;->b:Landroid/content/Context;

    const-string v1, "display"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f;->c:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/f$c;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/nubiaplayer/f$c;-><init>(Lcn/nubia/video/player/nubiaplayer/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private m(I)V
    .locals 2

    .line 1
    new-instance v0, Lcn/nubia/video/player/p;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/video/player/p;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Lcn/nubia/video/player/p;->g(I)V

    return-void
.end method

.method private n(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f;->f:Lb/a/b/b/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lb/a/b/b/d;

    invoke-direct {v0}, Lb/a/b/b/d;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f;->f:Lb/a/b/b/d;

    .line 3
    :cond_0
    new-instance v0, Lb/a/b/b/c;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/f;->b:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/f;->e:Landroid/net/Uri;

    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/f;->f:Lb/a/b/b/d;

    invoke-direct {v0, v1, v2, v3}, Lb/a/b/b/c;-><init>(Landroid/content/Context;Landroid/net/Uri;Lb/a/b/b/d;)V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f;->d:Lb/a/b/b/c;

    .line 4
    invoke-virtual {v0, p0}, Lb/a/b/b/c;->k(Lb/a/b/b/c$b;)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f;->d:Lb/a/b/b/c;

    invoke-virtual {v0, p1}, Lb/a/b/b/c;->l(I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f;->a:Lcn/nubia/video/commonui/app/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f;->a:Lcn/nubia/video/commonui/app/f;

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f;->c:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/f$b;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/player/nubiaplayer/f$b;-><init>(Lcn/nubia/video/player/nubiaplayer/f;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f;->c:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/f$a;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/video/player/nubiaplayer/f$a;-><init>(Lcn/nubia/video/player/nubiaplayer/f;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/f;->l()V

    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iput-object v1, p0, Lcn/nubia/video/player/nubiaplayer/f;->c:Landroid/os/Handler;

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f;->d:Lb/a/b/b/c;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Lb/a/b/b/c;->k(Lb/a/b/b/c$b;)V

    .line 6
    iput-object v1, p0, Lcn/nubia/video/player/nubiaplayer/f;->d:Lb/a/b/b/c;

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f;->a:Lcn/nubia/video/commonui/app/f;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 9
    iput-object v1, p0, Lcn/nubia/video/player/nubiaplayer/f;->a:Lcn/nubia/video/commonui/app/f;

    .line 10
    :cond_2
    iput-object v1, p0, Lcn/nubia/video/player/nubiaplayer/f;->b:Landroid/content/Context;

    return-void
.end method

.method public k(Lb/a/b/b/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/f;->f:Lb/a/b/b/d;

    return-void
.end method

.method public o(Landroid/net/Uri;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/f;->e:Landroid/net/Uri;

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/f;->n(I)V

    return-void
.end method
