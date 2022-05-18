.class public Lb/a/a/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/e/c$a;,
        Lb/a/a/e/c$f;,
        Lb/a/a/e/c$c;,
        Lb/a/a/e/c$g;,
        Lb/a/a/e/c$e;,
        Lb/a/a/e/c$b;,
        Lb/a/a/e/c$d;
    }
.end annotation


# instance fields
.field private a:Lb/a/a/e/d;

.field private b:Landroid/content/Context;

.field private c:Lb/a/a/e/c$a;

.field private d:Lb/a/a/c/l;

.field private e:Lb/a/a/e/c$g;

.field private f:Lb/a/a/e/c$b;

.field private g:Lb/a/a/e/c$f;

.field private h:Lb/a/a/e/c$d;

.field private i:Lb/a/a/e/c$c;

.field private j:Lb/a/a/e/c$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/e/c;->b:Landroid/content/Context;

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Lb/a/a/e/c$a;

    invoke-direct {v0, p0, p0, p1}, Lb/a/a/e/c$a;-><init>(Lb/a/a/e/c;Lb/a/a/e/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lb/a/a/e/c;->c:Lb/a/a/e/c$a;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    new-instance v0, Lb/a/a/e/c$a;

    invoke-direct {v0, p0, p0, p1}, Lb/a/a/e/c$a;-><init>(Lb/a/a/e/c;Lb/a/a/e/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lb/a/a/e/c;->c:Lb/a/a/e/c$a;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lb/a/a/e/c;->c:Lb/a/a/e/c$a;

    .line 8
    :goto_0
    new-instance p1, Lb/a/a/c/l;

    invoke-direct {p1}, Lb/a/a/c/l;-><init>()V

    iput-object p1, p0, Lb/a/a/e/c;->d:Lb/a/a/c/l;

    .line 9
    new-instance p1, Lb/a/a/e/d;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lb/a/a/e/c;->d:Lb/a/a/c/l;

    invoke-direct {p1, v0, v1}, Lb/a/a/e/d;-><init>(Ljava/lang/Object;Lb/a/a/c/l;)V

    iput-object p1, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    return-void
.end method

.method private I()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private J()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method static synthetic a(Lb/a/a/e/c;)Lb/a/a/e/c$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/e/c;->h:Lb/a/a/e/c$d;

    return-object p0
.end method

.method static synthetic b(Lb/a/a/e/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/a/a/e/c;->I()V

    return-void
.end method

.method static synthetic c(Lb/a/a/e/c;)Lb/a/a/e/c$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/e/c;->f:Lb/a/a/e/c$b;

    return-object p0
.end method

.method static synthetic d(Lb/a/a/e/c;)Lb/a/a/e/c$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/e/c;->g:Lb/a/a/e/c$f;

    return-object p0
.end method

.method static synthetic e(Lb/a/a/e/c;)Lb/a/a/e/c$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/e/c;->j:Lb/a/a/e/c$e;

    return-object p0
.end method

.method static synthetic f(Lb/a/a/e/c;)Lb/a/a/e/c$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/e/c;->e:Lb/a/a/e/c$g;

    return-object p0
.end method

.method static synthetic g(Lb/a/a/e/c;)Lb/a/a/e/c$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/e/c;->i:Lb/a/a/e/c$c;

    return-object p0
.end method

.method static synthetic h(Lb/a/a/e/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/a/a/e/c;->J()V

    return-void
.end method

.method protected static q(Ljava/lang/Object;III)V
    .locals 1

    .line 1
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/a/a/e/c;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lb/a/a/e/c;->c:Lb/a/a/e/c$a;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 4
    iget-object p0, p0, Lb/a/a/e/c;->c:Lb/a/a/e/c$a;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public A(Lb/a/a/a/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/a/e/d;->L(Lb/a/a/a/a;)V

    :cond_0
    return-void
.end method

.method public B(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    invoke-virtual {v0, p1}, Lb/a/a/e/d;->M(I)V

    return-void
.end method

.method public C(Lb/a/a/e/c$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/c;->f:Lb/a/a/e/c$b;

    return-void
.end method

.method public D(Lb/a/a/e/c$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/c;->i:Lb/a/a/e/c$c;

    return-void
.end method

.method public E(Lb/a/a/e/c$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/c;->h:Lb/a/a/e/c$d;

    return-void
.end method

.method public F(Lb/a/a/e/c$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/c;->g:Lb/a/a/e/c$f;

    return-void
.end method

.method public G(Lb/a/a/e/c$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/c;->e:Lb/a/a/e/c$g;

    return-void
.end method

.method public H(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lb/a/a/e/d;->O(II)V

    :cond_0
    return-void
.end method

.method public K(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/a/e/d;->P(I)V

    :cond_0
    return-void
.end method

.method public L(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/a/e/d;->Q(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public M(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/a/e/d;->R(F)V

    :cond_0
    return-void
.end method

.method public N()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/d;->S()V

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/e/c;->c:Lb/a/a/e/c$a;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public O()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/d;->T()V

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/e/c;->c:Lb/a/a/e/c$a;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/d;->u()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/d;->w()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/d;->x()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x1e

    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/d;->v()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public m()I
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lb/a/a/e/c;->l()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lb/a/a/e/c;->l()I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    invoke-virtual {v0}, Lb/a/a/e/d;->z()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    invoke-virtual {v0}, Lb/a/a/e/d;->y()I

    move-result v0

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public n()I
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lb/a/a/e/c;->l()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lb/a/a/e/c;->l()I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    invoke-virtual {v0}, Lb/a/a/e/d;->y()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    invoke-virtual {v0}, Lb/a/a/e/d;->z()I

    move-result v0

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/d;->B()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/d;->C()V

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/e/c;->c:Lb/a/a/e/c$a;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/d;->D()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/d;->E()V

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/e/c;->c:Lb/a/a/e/c$a;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/d;->E()V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/d;->F()V

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/e/c;->c:Lb/a/a/e/c$a;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public v(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/a/e/d;->G(I)V

    :cond_0
    return-void
.end method

.method public w(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Lb/a/a/e/d;->H(Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public x(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/a/e/d;->I(Z)V

    :cond_0
    return-void
.end method

.method public y(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/a/e/d;->J(I)V

    :cond_0
    return-void
.end method

.method public z(Lb/a/c/a/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/c;->a:Lb/a/a/e/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/a/e/d;->K(Lb/a/c/a/c;)V

    :cond_0
    return-void
.end method
