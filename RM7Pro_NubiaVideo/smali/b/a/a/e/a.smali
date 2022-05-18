.class public Lb/a/a/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lb/a/a/e/b;

.field private e:I

.field private f:Z

.field private g:Landroid/content/Context;

.field private h:Lb/a/a/e/f;

.field private i:Lb/a/a/e/b$f;

.field private j:Lb/a/a/e/b$d;

.field private k:Lb/a/a/e/b$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ExternalAudioPlayer"

    .line 2
    iput-object v0, p0, Lb/a/a/e/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lb/a/a/e/a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lb/a/a/e/a;->c:I

    .line 5
    iput-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    .line 6
    iput-boolean v1, p0, Lb/a/a/e/a;->f:Z

    .line 7
    new-instance v0, Lb/a/a/e/a$a;

    invoke-direct {v0, p0}, Lb/a/a/e/a$a;-><init>(Lb/a/a/e/a;)V

    iput-object v0, p0, Lb/a/a/e/a;->i:Lb/a/a/e/b$f;

    .line 8
    new-instance v0, Lb/a/a/e/a$b;

    invoke-direct {v0, p0}, Lb/a/a/e/a$b;-><init>(Lb/a/a/e/a;)V

    iput-object v0, p0, Lb/a/a/e/a;->j:Lb/a/a/e/b$d;

    .line 9
    new-instance v0, Lb/a/a/e/a$c;

    invoke-direct {v0, p0}, Lb/a/a/e/a$c;-><init>(Lb/a/a/e/a;)V

    iput-object v0, p0, Lb/a/a/e/a;->k:Lb/a/a/e/b$e;

    .line 10
    iput-object p1, p0, Lb/a/a/e/a;->g:Landroid/content/Context;

    .line 11
    new-instance v0, Lb/a/a/e/b;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v1}, Lb/a/a/e/b;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    return-void
.end method

.method static synthetic a(Lb/a/a/e/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/a/a/e/a;->c:I

    return p0
.end method

.method static synthetic b(Lb/a/a/e/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lb/a/a/e/a;->c:I

    return p1
.end method

.method static synthetic c(Lb/a/a/e/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lb/a/a/e/a;->e:I

    return p1
.end method

.method static synthetic d(Lb/a/a/e/a;)Lb/a/a/e/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/e/a;->h:Lb/a/a/e/f;

    return-object p0
.end method

.method private g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lb/a/a/e/a;->c:I

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


# virtual methods
.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lb/a/a/e/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    invoke-virtual {v0}, Lb/a/a/e/b;->o()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lb/a/a/e/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    invoke-virtual {v0}, Lb/a/a/e/b;->p()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/b;->s()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/b;->x()V

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/e/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAudioPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/a/a/e/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lb/a/a/e/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lb/a/a/e/a;->f:Z

    invoke-virtual {v0, v1}, Lb/a/a/e/b;->B(Z)V

    .line 6
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    iget-object v1, p0, Lb/a/a/e/a;->i:Lb/a/a/e/b$f;

    invoke-virtual {v0, v1}, Lb/a/a/e/b;->H(Lb/a/a/e/b$f;)V

    .line 7
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    iget-object v1, p0, Lb/a/a/e/a;->j:Lb/a/a/e/b$d;

    invoke-virtual {v0, v1}, Lb/a/a/e/b;->F(Lb/a/a/e/b$d;)V

    .line 8
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    iget-object v1, p0, Lb/a/a/e/a;->k:Lb/a/a/e/b$e;

    invoke-virtual {v0, v1}, Lb/a/a/e/b;->G(Lb/a/a/e/b$e;)V

    .line 9
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    iget-object v1, p0, Lb/a/a/e/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/a/e/b;->A(Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    invoke-virtual {v0}, Lb/a/a/e/b;->v()V

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lb/a/a/e/a;->c:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 12
    iget-object v1, p0, Lb/a/a/e/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lb/a/a/e/a;->c:I

    .line 14
    iget-object v0, p0, Lb/a/a/e/a;->k:Lb/a/a/e/b$e;

    iget-object v1, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lb/a/a/e/b$e;->a(Lb/a/a/e/b;II)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lb/a/a/e/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/a/a/e/b;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    invoke-virtual {v0}, Lb/a/a/e/b;->t()V

    :cond_0
    const/4 v0, 0x4

    .line 4
    iput v0, p0, Lb/a/a/e/a;->c:I

    .line 5
    iget-object v1, p0, Lb/a/a/e/a;->h:Lb/a/a/e/f;

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1, v0}, Lb/a/a/e/f;->a(I)V

    :cond_1
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/b;->O()V

    .line 3
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    invoke-virtual {v0}, Lb/a/a/e/b;->w()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lb/a/a/e/a;->c:I

    .line 6
    iget-object v1, p0, Lb/a/a/e/a;->h:Lb/a/a/e/f;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, v0}, Lb/a/a/e/f;->a(I)V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/b;->y()V

    :cond_0
    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lb/a/a/e/a;->c:I

    .line 4
    iget-object v1, p0, Lb/a/a/e/a;->h:Lb/a/a/e/f;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1, v0}, Lb/a/a/e/f;->a(I)V

    :cond_1
    return-void
.end method

.method public m(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lb/a/a/e/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    invoke-virtual {v0, p1}, Lb/a/a/e/b;->z(I)V

    :cond_0
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/a;->b:Ljava/lang/String;

    return-void
.end method

.method public o(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/a/e/b;->C(I)V

    :cond_0
    return-void
.end method

.method public p(Lb/a/a/a/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    invoke-virtual {v0, p1}, Lb/a/a/e/b;->D(Lb/a/a/a/a;)V

    return-void
.end method

.method public q(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/a/e/b;->E(I)V

    :cond_0
    return-void
.end method

.method public r(Lb/a/a/e/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/a;->h:Lb/a/a/e/f;

    return-void
.end method

.method public s(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lb/a/a/e/b;->J(II)V

    :cond_0
    return-void
.end method

.method public t(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/a/e/b;->K(I)V

    :cond_0
    return-void
.end method

.method public u(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/a/e/b;->L(F)V

    :cond_0
    return-void
.end method

.method public v(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/a/e/b;->M(I)V

    :cond_0
    return-void
.end method

.method public w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lb/a/a/e/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/e/a;->d:Lb/a/a/e/b;

    invoke-virtual {v0}, Lb/a/a/e/b;->N()V

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lb/a/a/e/a;->c:I

    .line 4
    iget-object v1, p0, Lb/a/a/e/a;->h:Lb/a/a/e/f;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1, v0}, Lb/a/a/e/f;->a(I)V

    :cond_0
    return-void
.end method
