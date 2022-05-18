.class public Lb/a/a/e/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Landroid/view/Surface;

.field private e:Lb/a/a/e/c;

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Landroid/content/Context;

.field private k:Lb/a/a/e/f;

.field l:Lb/a/a/e/c$f;

.field m:Lb/a/a/e/c$g;

.field n:Lb/a/a/e/c$d;

.field private o:Lb/a/a/e/c$b;

.field private p:Lb/a/a/e/c$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VirtualVideoPlayer"

    .line 2
    iput-object v0, p0, Lb/a/a/e/h;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lb/a/a/e/h;->c:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lb/a/a/e/h;->d:Landroid/view/Surface;

    .line 5
    iput-object v1, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    .line 6
    iput v0, p0, Lb/a/a/e/h;->g:I

    .line 7
    iput v0, p0, Lb/a/a/e/h;->h:I

    .line 8
    iput-boolean v0, p0, Lb/a/a/e/h;->i:Z

    .line 9
    new-instance v0, Lb/a/a/e/h$a;

    invoke-direct {v0, p0}, Lb/a/a/e/h$a;-><init>(Lb/a/a/e/h;)V

    iput-object v0, p0, Lb/a/a/e/h;->l:Lb/a/a/e/c$f;

    .line 10
    new-instance v0, Lb/a/a/e/h$b;

    invoke-direct {v0, p0}, Lb/a/a/e/h$b;-><init>(Lb/a/a/e/h;)V

    iput-object v0, p0, Lb/a/a/e/h;->m:Lb/a/a/e/c$g;

    .line 11
    new-instance v0, Lb/a/a/e/h$c;

    invoke-direct {v0, p0}, Lb/a/a/e/h$c;-><init>(Lb/a/a/e/h;)V

    iput-object v0, p0, Lb/a/a/e/h;->n:Lb/a/a/e/c$d;

    .line 12
    new-instance v0, Lb/a/a/e/h$d;

    invoke-direct {v0, p0}, Lb/a/a/e/h$d;-><init>(Lb/a/a/e/h;)V

    iput-object v0, p0, Lb/a/a/e/h;->o:Lb/a/a/e/c$b;

    .line 13
    new-instance v0, Lb/a/a/e/h$e;

    invoke-direct {v0, p0}, Lb/a/a/e/h$e;-><init>(Lb/a/a/e/h;)V

    iput-object v0, p0, Lb/a/a/e/h;->p:Lb/a/a/e/c$c;

    .line 14
    iput-object p1, p0, Lb/a/a/e/h;->j:Landroid/content/Context;

    .line 15
    new-instance v0, Lb/a/a/e/c;

    invoke-direct {v0, p1}, Lb/a/a/e/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    return-void
.end method

.method static synthetic a(Lb/a/a/e/h;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/a/a/e/h;->c:I

    return p0
.end method

.method static synthetic b(Lb/a/a/e/h;I)I
    .locals 0

    .line 1
    iput p1, p0, Lb/a/a/e/h;->c:I

    return p1
.end method

.method static synthetic c(Lb/a/a/e/h;)Lb/a/a/e/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/e/h;->k:Lb/a/a/e/f;

    return-object p0
.end method

.method static synthetic d(Lb/a/a/e/h;I)I
    .locals 0

    .line 1
    iput p1, p0, Lb/a/a/e/h;->g:I

    return p1
.end method

.method static synthetic e(Lb/a/a/e/h;I)I
    .locals 0

    .line 1
    iput p1, p0, Lb/a/a/e/h;->h:I

    return p1
.end method

.method static synthetic f(Lb/a/a/e/h;I)I
    .locals 0

    .line 1
    iput p1, p0, Lb/a/a/e/h;->f:I

    return p1
.end method

.method private n()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lb/a/a/e/h;->c:I

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
.method public A(Lb/a/a/e/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/h;->k:Lb/a/a/e/f;

    return-void
.end method

.method public B(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lb/a/a/e/c;->H(II)V

    :cond_0
    return-void
.end method

.method public C(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/a/e/c;->M(F)V

    :cond_0
    return-void
.end method

.method public D(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/a/e/c;->K(I)V

    :cond_0
    return-void
.end method

.method public E(Landroid/view/Surface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/h;->d:Landroid/view/Surface;

    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/h;->b:Ljava/lang/String;

    return-void
.end method

.method public G()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lb/a/a/e/h;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    invoke-virtual {v0}, Lb/a/a/e/c;->N()V

    :cond_0
    return-void
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lb/a/a/e/h;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    invoke-virtual {v0}, Lb/a/a/e/c;->i()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lb/a/a/e/h;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    invoke-virtual {v0}, Lb/a/a/e/c;->j()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/a/e/h;->i:Z

    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    if-nez v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lb/a/a/e/c;->k()I

    move-result v0

    :goto_0
    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/e/h;->h:I

    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lb/a/a/e/c;->l()I

    move-result v0

    :goto_0
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/e/h;->g:I

    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/c;->o()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized p()V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/a/e/h;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/a/a/e/h;->d:Landroid/view/Surface;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lb/a/a/e/c;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0x64

    const/4 v2, -0x1

    .line 4
    :try_start_1
    iget-object v3, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    iget-boolean v4, p0, Lb/a/a/e/h;->i:Z

    invoke-virtual {v3, v4}, Lb/a/a/e/c;->x(Z)V

    .line 5
    iget-object v3, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    iget-object v4, p0, Lb/a/a/e/h;->l:Lb/a/a/e/c$f;

    invoke-virtual {v3, v4}, Lb/a/a/e/c;->F(Lb/a/a/e/c$f;)V

    .line 6
    iget-object v3, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    iget-object v4, p0, Lb/a/a/e/h;->n:Lb/a/a/e/c$d;

    invoke-virtual {v3, v4}, Lb/a/a/e/c;->E(Lb/a/a/e/c$d;)V

    .line 7
    iget-object v3, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    iget-object v4, p0, Lb/a/a/e/h;->m:Lb/a/a/e/c$g;

    invoke-virtual {v3, v4}, Lb/a/a/e/c;->G(Lb/a/a/e/c$g;)V

    .line 8
    iget-object v3, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    iget-object v4, p0, Lb/a/a/e/h;->o:Lb/a/a/e/c$b;

    invoke-virtual {v3, v4}, Lb/a/a/e/c;->C(Lb/a/a/e/c$b;)V

    .line 9
    iget-object v3, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    iget-object v4, p0, Lb/a/a/e/h;->p:Lb/a/a/e/c$c;

    invoke-virtual {v3, v4}, Lb/a/a/e/c;->D(Lb/a/a/e/c$c;)V

    .line 10
    iget-object v3, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    iget-object v4, p0, Lb/a/a/e/h;->j:Landroid/content/Context;

    iget-object v5, p0, Lb/a/a/e/h;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lb/a/a/e/c;->w(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    iget-object v3, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    iget-object v4, p0, Lb/a/a/e/h;->d:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Lb/a/a/e/c;->L(Landroid/view/Surface;)V

    .line 12
    iget-object v3, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    invoke-virtual {v3}, Lb/a/a/e/c;->r()V

    const/4 v3, 0x1

    .line 13
    iput v3, p0, Lb/a/a/e/h;->c:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :catch_0
    move-exception v3

    .line 15
    :try_start_2
    iget-object v4, p0, Lb/a/a/e/h;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lb/a/a/e/h;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    iput v2, p0, Lb/a/a/e/h;->c:I

    .line 17
    iget-object v2, p0, Lb/a/a/e/h;->p:Lb/a/a/e/c$c;

    iget-object v3, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    invoke-interface {v2, v3, v1, v0}, Lb/a/a/e/c$c;->a(Lb/a/a/e/c;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catch_1
    move-exception v3

    .line 19
    :try_start_3
    iget-object v4, p0, Lb/a/a/e/h;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lb/a/a/e/h;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    iput v2, p0, Lb/a/a/e/h;->c:I

    .line 21
    iget-object v2, p0, Lb/a/a/e/h;->p:Lb/a/a/e/c$c;

    iget-object v3, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    invoke-interface {v2, v3, v1, v0}, Lb/a/a/e/c$c;->a(Lb/a/a/e/c;II)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    .line 23
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public q()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lb/a/a/e/h;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lb/a/a/e/c;->p()V

    :cond_0
    const/4 v0, 0x4

    .line 4
    iput v0, p0, Lb/a/a/e/h;->c:I

    .line 5
    iget-object v1, p0, Lb/a/a/e/h;->k:Lb/a/a/e/f;

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1, v0}, Lb/a/a/e/f;->a(I)V

    :cond_1
    return-void
.end method

.method public r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/c;->O()V

    .line 3
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    invoke-virtual {v0}, Lb/a/a/e/c;->s()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lb/a/a/e/h;->c:I

    .line 6
    iget-object v1, p0, Lb/a/a/e/h;->k:Lb/a/a/e/f;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lb/a/a/e/h;->d:Landroid/view/Surface;

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v1, v0}, Lb/a/a/e/f;->a(I)V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/c;->t()V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/c;->u()V

    :cond_0
    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lb/a/a/e/h;->c:I

    .line 4
    iget-object v1, p0, Lb/a/a/e/h;->k:Lb/a/a/e/f;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1, v0}, Lb/a/a/e/f;->a(I)V

    :cond_1
    return-void
.end method

.method public u(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lb/a/a/e/h;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    invoke-virtual {v0, p1}, Lb/a/a/e/c;->v(I)V

    :cond_0
    return-void
.end method

.method public v(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/a/e/h;->i:Z

    return-void
.end method

.method public w(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/a/e/c;->y(I)V

    :cond_0
    return-void
.end method

.method public x(Lb/a/c/a/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/a/e/c;->z(Lb/a/c/a/c;)V

    :cond_0
    return-void
.end method

.method public y(Lb/a/a/a/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/a/e/c;->A(Lb/a/a/a/a;)V

    :cond_0
    return-void
.end method

.method public z(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/h;->e:Lb/a/a/e/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/a/e/c;->B(I)V

    :cond_0
    return-void
.end method
