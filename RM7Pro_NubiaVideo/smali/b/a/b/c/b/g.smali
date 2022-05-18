.class public Lb/a/b/c/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/c/b/g$f;,
        Lb/a/b/c/b/g$g;,
        Lb/a/b/c/b/g$c;,
        Lb/a/b/c/b/g$h;,
        Lb/a/b/c/b/g$e;,
        Lb/a/b/c/b/g$d;,
        Lb/a/b/c/b/g$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcn/nubia/video/list/app/a;

.field private final c:[Lb/a/b/c/b/m;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/a/b/c/b/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lb/a/b/c/b/g$e;

.field private f:Lb/a/b/c/b/g$d;

.field private g:Lb/a/b/c/b/o;

.field private h:Landroid/os/Handler;

.field private i:J

.field private j:J

.field private k:I

.field private final l:[J

.field private final m:[J

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Lb/a/b/c/b/g$f;


# direct methods
.method public constructor <init>(Lcn/nubia/video/list/app/a;Lb/a/b/c/b/o;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DataLoader"

    .line 2
    iput-object v0, p0, Lb/a/b/c/b/g;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/b/c/b/g;->d:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Lb/a/b/c/b/g$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/a/b/c/b/g$e;-><init>(Lb/a/b/c/b/g;Lb/a/b/c/b/g$a;)V

    iput-object v0, p0, Lb/a/b/c/b/g;->e:Lb/a/b/c/b/g$e;

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lb/a/b/c/b/g;->i:J

    .line 6
    iput-wide v0, p0, Lb/a/b/c/b/g;->j:J

    const/4 v2, 0x0

    .line 7
    iput v2, p0, Lb/a/b/c/b/g;->k:I

    .line 8
    iput v2, p0, Lb/a/b/c/b/g;->n:I

    .line 9
    iput v2, p0, Lb/a/b/c/b/g;->o:I

    .line 10
    iput v2, p0, Lb/a/b/c/b/g;->p:I

    .line 11
    iput v2, p0, Lb/a/b/c/b/g;->q:I

    .line 12
    iput-object p1, p0, Lb/a/b/c/b/g;->b:Lcn/nubia/video/list/app/a;

    .line 13
    iput-object p2, p0, Lb/a/b/c/b/g;->g:Lb/a/b/c/b/o;

    const/16 p1, 0x1f4

    new-array p2, p1, [Lb/a/b/c/b/m;

    .line 14
    iput-object p2, p0, Lb/a/b/c/b/g;->c:[Lb/a/b/c/b/m;

    new-array p2, p1, [J

    .line 15
    iput-object p2, p0, Lb/a/b/c/b/g;->l:[J

    new-array p1, p1, [J

    .line 16
    iput-object p1, p0, Lb/a/b/c/b/g;->m:[J

    .line 17
    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 18
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 19
    new-instance p1, Lb/a/b/c/b/g$a;

    iget-object p2, p0, Lb/a/b/c/b/g;->b:Lcn/nubia/video/list/app/a;

    invoke-interface {p2}, Lcn/nubia/video/list/app/a;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lb/a/b/c/b/g$a;-><init>(Lb/a/b/c/b/g;Landroid/os/Looper;)V

    iput-object p1, p0, Lb/a/b/c/b/g;->h:Landroid/os/Handler;

    return-void
.end method

.method private D(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lb/a/b/c/b/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lb/a/b/c/b/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/b/c/b/g$b;

    invoke-interface {v1, p1}, Lb/a/b/c/b/g$b;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private E(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lb/a/b/c/b/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lb/a/b/c/b/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/b/c/b/g$b;

    invoke-interface {v1, p1}, Lb/a/b/c/b/g$b;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private I(II)V
    .locals 3

    .line 1
    iget v0, p0, Lb/a/b/c/b/g;->p:I

    if-ne p1, v0, :cond_0

    iget v1, p0, Lb/a/b/c/b/g;->q:I

    if-ne p2, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lb/a/b/c/b/g;->q:I

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iput p1, p0, Lb/a/b/c/b/g;->p:I

    .line 5
    iput p2, p0, Lb/a/b/c/b/g;->q:I

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p1, v1, :cond_3

    if-lt v0, p2, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    if-ge v0, p1, :cond_2

    .line 7
    rem-int/lit16 v2, v0, 0x1f4

    invoke-direct {p0, v2}, Lb/a/b/c/b/g;->x(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge p2, v1, :cond_4

    .line 8
    rem-int/lit16 p1, p2, 0x1f4

    invoke-direct {p0, p1}, Lb/a/b/c/b/g;->x(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v0, v1, :cond_4

    .line 9
    rem-int/lit16 p1, v0, 0x1f4

    invoke-direct {p0, p1}, Lb/a/b/c/b/g;->x(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 10
    :cond_4
    iget-object p1, p0, Lb/a/b/c/b/g;->r:Lb/a/b/c/b/g$f;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lb/a/b/c/b/g$f;->a()V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic a(Lb/a/b/c/b/g;)Lb/a/b/c/b/g$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/c/b/g;->f:Lb/a/b/c/b/g$d;

    return-object p0
.end method

.method static synthetic b(Lb/a/b/c/b/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/a/b/c/b/g;->q:I

    return p0
.end method

.method static synthetic c(Lb/a/b/c/b/g;I)I
    .locals 0

    .line 1
    iput p1, p0, Lb/a/b/c/b/g;->q:I

    return p1
.end method

.method static synthetic d(Lb/a/b/c/b/g;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/a/b/c/b/g;->E(I)V

    return-void
.end method

.method static synthetic e(Lb/a/b/c/b/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/a/b/c/b/g;->o:I

    return p0
.end method

.method static synthetic f(Lb/a/b/c/b/g;I)I
    .locals 0

    .line 1
    iput p1, p0, Lb/a/b/c/b/g;->o:I

    return p1
.end method

.method static synthetic g(Lb/a/b/c/b/g;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/c/b/g;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lb/a/b/c/b/g;)[J
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/c/b/g;->l:[J

    return-object p0
.end method

.method static synthetic i(Lb/a/b/c/b/g;)[Lb/a/b/c/b/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/c/b/g;->c:[Lb/a/b/c/b/m;

    return-object p0
.end method

.method static synthetic j(Lb/a/b/c/b/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/a/b/c/b/g;->n:I

    return p0
.end method

.method static synthetic k(Lb/a/b/c/b/g;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/a/b/c/b/g;->D(I)V

    return-void
.end method

.method static synthetic l(Lb/a/b/c/b/g;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/c/b/g;->h:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic m(Lb/a/b/c/b/g;)Lb/a/b/c/b/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/c/b/g;->g:Lb/a/b/c/b/o;

    return-object p0
.end method

.method static synthetic n(Lb/a/b/c/b/g;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb/a/b/c/b/g;->i:J

    return-wide v0
.end method

.method static synthetic o(Lb/a/b/c/b/g;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/a/b/c/b/g;->z(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic p(Lb/a/b/c/b/g;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lb/a/b/c/b/g;->i:J

    return-wide p1
.end method

.method static synthetic q(Lb/a/b/c/b/g;)Lb/a/b/c/b/g$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/c/b/g;->r:Lb/a/b/c/b/g$f;

    return-object p0
.end method

.method static synthetic r(Lb/a/b/c/b/g;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb/a/b/c/b/g;->j:J

    return-wide v0
.end method

.method static synthetic s(Lb/a/b/c/b/g;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lb/a/b/c/b/g;->j:J

    return-wide p1
.end method

.method static synthetic t(Lb/a/b/c/b/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/a/b/c/b/g;->k:I

    return p0
.end method

.method static synthetic u(Lb/a/b/c/b/g;I)I
    .locals 0

    .line 1
    iput p1, p0, Lb/a/b/c/b/g;->k:I

    return p1
.end method

.method static synthetic v(Lb/a/b/c/b/g;)[J
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/c/b/g;->m:[J

    return-object p0
.end method

.method static synthetic w(Lb/a/b/c/b/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/a/b/c/b/g;->p:I

    return p0
.end method

.method private x(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/g;->c:[Lb/a/b/c/b/m;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 2
    iget-object v0, p0, Lb/a/b/c/b/g;->l:[J

    const-wide/16 v1, -0x1

    aput-wide v1, v0, p1

    .line 3
    iget-object v0, p0, Lb/a/b/c/b/g;->m:[J

    aput-wide v1, v0, p1

    return-void
.end method

.method private z(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2
    iget-object p1, p0, Lb/a/b/c/b/g;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public A(I)Lb/a/b/c/b/m;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/a/b/c/b/g;->L()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Lb/a/b/c/b/g;->C(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/a/b/c/b/g;->c:[Lb/a/b/c/b/m;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public B()Lb/a/b/c/b/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/g;->g:Lb/a/b/c/b/o;

    invoke-virtual {v0}, Lb/a/b/c/b/o;->g()Lb/a/b/c/b/m;

    move-result-object v0

    return-object v0
.end method

.method public C(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lb/a/b/c/b/g;->n:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lb/a/b/c/b/g;->o:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public F()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/g;->r:Lb/a/b/c/b/g$f;

    invoke-virtual {v0}, Lb/a/b/c/b/g$f;->b()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/a/b/c/b/g;->r:Lb/a/b/c/b/g$f;

    .line 3
    iget-object v0, p0, Lb/a/b/c/b/g;->g:Lb/a/b/c/b/o;

    iget-object v1, p0, Lb/a/b/c/b/g;->e:Lb/a/b/c/b/g$e;

    invoke-virtual {v0, v1}, Lb/a/b/c/b/o;->o(Lb/a/b/c/b/o$a;)V

    return-void
.end method

.method public G()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/g;->g:Lb/a/b/c/b/o;

    iget-object v1, p0, Lb/a/b/c/b/g;->e:Lb/a/b/c/b/g$e;

    invoke-virtual {v0, v1}, Lb/a/b/c/b/o;->c(Lb/a/b/c/b/o$a;)V

    .line 2
    new-instance v0, Lb/a/b/c/b/g$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/a/b/c/b/g$f;-><init>(Lb/a/b/c/b/g;Lb/a/b/c/b/g$a;)V

    iput-object v0, p0, Lb/a/b/c/b/g;->r:Lb/a/b/c/b/g$f;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public H(II)V
    .locals 4

    .line 1
    iget v0, p0, Lb/a/b/c/b/g;->n:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lb/a/b/c/b/g;->o:I

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-gt p1, p2, :cond_1

    sub-int v1, p2, p1

    .line 2
    iget-object v2, p0, Lb/a/b/c/b/g;->c:[Lb/a/b/c/b/m;

    array-length v2, v2

    if-gt v1, v2, :cond_1

    iget v1, p0, Lb/a/b/c/b/g;->k:I

    if-gt p2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-static {v1}, Lb/a/b/d/e;->c(Z)V

    .line 3
    iget-object v1, p0, Lb/a/b/c/b/g;->c:[Lb/a/b/c/b/m;

    array-length v1, v1

    .line 4
    iput p1, p0, Lb/a/b/c/b/g;->n:I

    .line 5
    iput p2, p0, Lb/a/b/c/b/g;->o:I

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    add-int v2, p1, p2

    .line 6
    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lb/a/b/c/b/g;->k:I

    sub-int/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v0, v3}, Lb/a/b/d/e;->d(III)I

    move-result v0

    add-int/2addr v1, v0

    .line 7
    iget v2, p0, Lb/a/b/c/b/g;->k:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 8
    iget v2, p0, Lb/a/b/c/b/g;->p:I

    if-gt v2, p1, :cond_3

    iget p1, p0, Lb/a/b/c/b/g;->q:I

    if-lt p1, p2, :cond_3

    sub-int p1, v0, v2

    .line 9
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 p2, 0x20

    if-le p1, p2, :cond_4

    .line 10
    :cond_3
    invoke-direct {p0, v0, v1}, Lb/a/b/c/b/g;->I(II)V

    :cond_4
    return-void
.end method

.method public J(Lb/a/b/c/b/g$b;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public K(Lb/a/b/c/b/g$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/b/c/b/g;->f:Lb/a/b/c/b/g$d;

    return-void
.end method

.method public L()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/b/c/b/g;->k:I

    return v0
.end method

.method public y()V
    .locals 0

    return-void
.end method
