.class public Lb/a/a/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/c/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/e/b$b;,
        Lb/a/a/e/b$c;,
        Lb/a/a/e/b$e;,
        Lb/a/a/e/b$g;,
        Lb/a/a/e/b$d;,
        Lb/a/a/e/b$f;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lb/a/a/e/b$d;

.field private c:Lb/a/a/e/b$f;

.field private d:Lb/a/a/e/b$e;

.field private e:Lb/a/a/e/b$g;

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Thread;

.field private h:Lb/a/a/c/l;

.field private i:J

.field private j:I

.field private k:I

.field private l:J

.field private m:J

.field private n:F

.field private o:Z

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Lb/a/a/b/d;

.field private s:Lb/a/a/d/a;

.field private t:Lb/a/a/a/a;

.field private u:Ljava/lang/Object;

.field private v:Ljava/lang/Object;

.field private w:Landroid/content/Context;

.field private x:Lb/a/a/e/b$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ExternalAudioPlayerImpl"

    .line 2
    iput-object v0, p0, Lb/a/a/e/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lb/a/a/e/b;->g:Ljava/lang/Thread;

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lb/a/a/e/b;->i:J

    const/4 v3, 0x0

    .line 5
    iput v3, p0, Lb/a/a/e/b;->j:I

    const/4 v4, -0x1

    .line 6
    iput v4, p0, Lb/a/a/e/b;->k:I

    .line 7
    iput-wide v1, p0, Lb/a/a/e/b;->l:J

    .line 8
    iput-wide v1, p0, Lb/a/a/e/b;->m:J

    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    iput v1, p0, Lb/a/a/e/b;->n:F

    .line 10
    iput-boolean v3, p0, Lb/a/a/e/b;->o:Z

    .line 11
    iput-boolean v3, p0, Lb/a/a/e/b;->p:Z

    .line 12
    iput-object v0, p0, Lb/a/a/e/b;->q:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lb/a/a/e/b;->r:Lb/a/a/b/d;

    .line 14
    iput-object v0, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    .line 15
    iput-object v0, p0, Lb/a/a/e/b;->t:Lb/a/a/a/a;

    .line 16
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lb/a/a/e/b;->u:Ljava/lang/Object;

    .line 17
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lb/a/a/e/b;->v:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lb/a/a/e/b;->w:Landroid/content/Context;

    .line 19
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 20
    new-instance v0, Lb/a/a/e/b$c;

    invoke-direct {v0, p0, p0, p1}, Lb/a/a/e/b$c;-><init>(Lb/a/a/e/b;Lb/a/a/e/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lb/a/a/e/b;->x:Lb/a/a/e/b$c;

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 22
    new-instance v0, Lb/a/a/e/b$c;

    invoke-direct {v0, p0, p0, p1}, Lb/a/a/e/b$c;-><init>(Lb/a/a/e/b;Lb/a/a/e/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lb/a/a/e/b;->x:Lb/a/a/e/b$c;

    goto :goto_0

    .line 23
    :cond_1
    iput-object v0, p0, Lb/a/a/e/b;->x:Lb/a/a/e/b$c;

    .line 24
    :goto_0
    new-instance p1, Lb/a/a/c/l;

    invoke-direct {p1}, Lb/a/a/c/l;-><init>()V

    iput-object p1, p0, Lb/a/a/e/b;->h:Lb/a/a/c/l;

    .line 25
    iput-object p2, p0, Lb/a/a/e/b;->f:Ljava/lang/Object;

    return-void
.end method

.method static synthetic e(Lb/a/a/e/b;)Lb/a/a/e/b$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/e/b;->c:Lb/a/a/e/b$f;

    return-object p0
.end method

.method static synthetic g(Lb/a/a/e/b;)Lb/a/a/e/b$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/e/b;->b:Lb/a/a/e/b$d;

    return-object p0
.end method

.method static synthetic j(Lb/a/a/e/b;)Lb/a/a/e/b$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/e/b;->e:Lb/a/a/e/b$g;

    return-object p0
.end method

.method static synthetic k(Lb/a/a/e/b;)Lb/a/a/e/b$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/e/b;->d:Lb/a/a/e/b$e;

    return-object p0
.end method

.method static synthetic l(Lb/a/a/e/b;)Lb/a/a/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/e/b;->r:Lb/a/a/b/d;

    return-object p0
.end method

.method static synthetic m(Lb/a/a/e/b;)Lb/a/a/d/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    return-object p0
.end method

.method static synthetic n(Lb/a/a/e/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/a/e/b;->p:Z

    return p1
.end method

.method private q(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/b;->t:Lb/a/a/a/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p3}, Lb/a/a/a/a;->A(I)V

    .line 3
    iget-object p3, p0, Lb/a/a/e/b;->t:Lb/a/a/a/a;

    invoke-virtual {p3, p1}, Lb/a/a/a/a;->y(I)V

    .line 4
    iget-object p1, p0, Lb/a/a/e/b;->t:Lb/a/a/a/a;

    invoke-virtual {p1, p2}, Lb/a/a/a/a;->w(I)V

    .line 5
    iget-object p1, p0, Lb/a/a/e/b;->t:Lb/a/a/a/a;

    invoke-virtual {p1}, Lb/a/a/a/a;->l()V

    :cond_0
    return-void
.end method

.method private u(Ljava/lang/Object;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lb/a/a/e/b;->x:Lb/a/a/e/b$c;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lb/a/a/e/b;->x:Lb/a/a/e/b$c;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)I
    .locals 12

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lb/a/a/e/b;->p:Z

    .line 2
    iput-object p1, p0, Lb/a/a/e/b;->q:Ljava/lang/String;

    :try_start_0
    const-string v1, "audio/"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Lb/a/a/d/a;

    iget-object v4, p0, Lb/a/a/e/b;->w:Landroid/content/Context;

    iget-object v5, p0, Lb/a/a/e/b;->q:Ljava/lang/String;

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lb/a/a/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;JZ)V

    iput-object p1, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lb/a/a/d/a;

    iget-object v3, p0, Lb/a/a/e/b;->q:Ljava/lang/String;

    invoke-direct {p1, v3, v1, v2}, Lb/a/a/d/a;-><init>(Ljava/lang/String;J)V

    iput-object p1, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    .line 6
    :goto_0
    iget-object p1, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    invoke-virtual {p1}, Lb/a/a/d/a;->A()Landroid/media/MediaFormat;

    move-result-object p1

    .line 7
    iget-object v3, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    const/4 v4, 0x2

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    const-string v3, "durationUs"

    .line 8
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    iput-wide v5, p0, Lb/a/a/e/b;->i:J

    .line 9
    iget-object v3, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lb/a/a/d/a;->C(Z)V

    .line 10
    iget-object v3, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    iget-wide v5, p0, Lb/a/a/e/b;->m:J

    invoke-virtual {v3, v5, v6}, Lb/a/a/d/a;->I(J)V

    .line 11
    iget-object v3, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    iget v5, p0, Lb/a/a/e/b;->n:F

    invoke-virtual {v3, v5}, Lb/a/a/d/a;->N(F)V

    .line 12
    iget-object v3, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    invoke-virtual {v3, v4}, Lb/a/a/d/a;->K(I)V

    .line 13
    iget-wide v5, p0, Lb/a/a/e/b;->m:J

    cmp-long v1, v5, v1

    if-gtz v1, :cond_1

    .line 14
    iget-wide v1, p0, Lb/a/a/e/b;->i:J

    iput-wide v1, p0, Lb/a/a/e/b;->m:J

    .line 15
    :cond_1
    iget-object v5, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    iget-wide v6, p0, Lb/a/a/e/b;->l:J

    iget-wide v8, p0, Lb/a/a/e/b;->m:J

    iget-wide v10, p0, Lb/a/a/e/b;->i:J

    invoke-virtual/range {v5 .. v11}, Lb/a/a/d/a;->L(JJJ)V

    const-string v1, "channel-count"

    .line 16
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-string v2, "sample-rate"

    .line 17
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    .line 18
    :cond_2
    iget-object p1, p0, Lb/a/a/e/b;->f:Ljava/lang/Object;

    const/16 v1, 0x64

    invoke-direct {p0, p1, v1, v0, v0}, Lb/a/a/e/b;->u(Ljava/lang/Object;III)V

    move p1, v0

    move v1, p1

    .line 19
    :goto_1
    iget-object v2, p0, Lb/a/a/e/b;->t:Lb/a/a/a/a;

    if-eqz v2, :cond_3

    .line 20
    invoke-direct {p0, p1, v1, v4}, Lb/a/a/e/b;->q(III)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_2
    return v0
.end method

.method public B(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/a/e/b;->o:Z

    return-void
.end method

.method public C(I)V
    .locals 3

    int-to-long v0, p1

    .line 1
    iput-wide v0, p0, Lb/a/a/e/b;->m:J

    .line 2
    iget-object v2, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2, v0, v1}, Lb/a/a/d/a;->I(J)V

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/a/e/b;->r:Lb/a/a/b/d;

    if-eqz v0, :cond_1

    iget v1, p0, Lb/a/a/e/b;->k:I

    if-ge p1, v1, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lb/a/a/b/d;->z(I)V

    :cond_1
    return-void
.end method

.method public D(Lb/a/a/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/b;->t:Lb/a/a/a/a;

    return-void
.end method

.method public E(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/e/b;->t:Lb/a/a/a/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1, p1}, Lb/a/a/a/a;->F(II)V

    :cond_0
    return-void
.end method

.method public F(Lb/a/a/e/b$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/b;->b:Lb/a/a/e/b$d;

    return-void
.end method

.method public G(Lb/a/a/e/b$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/b;->d:Lb/a/a/e/b$e;

    return-void
.end method

.method public H(Lb/a/a/e/b$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/b;->c:Lb/a/a/e/b$f;

    return-void
.end method

.method public I(Z)V
    .locals 0

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lb/a/a/e/b;->r:Lb/a/a/b/d;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lb/a/a/b/d;->t()V

    .line 3
    :cond_0
    iget-object p1, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Lb/a/a/d/a;->G()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lb/a/a/e/b;->r:Lb/a/a/b/d;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lb/a/a/b/d;->p()V

    .line 7
    :cond_2
    iget-object p1, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1}, Lb/a/a/d/a;->F()V

    :cond_3
    :goto_0
    return-void
.end method

.method public J(II)V
    .locals 3

    int-to-long v0, p1

    .line 1
    iput-wide v0, p0, Lb/a/a/e/b;->l:J

    int-to-long p1, p2

    .line 2
    iput-wide p1, p0, Lb/a/a/e/b;->m:J

    .line 3
    iget-object v2, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, v0, v1}, Lb/a/a/d/a;->J(J)V

    .line 5
    iget-object v0, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    invoke-virtual {v0, p1, p2}, Lb/a/a/d/a;->I(J)V

    :cond_0
    return-void
.end method

.method public K(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb/a/a/e/b;->k:I

    return-void
.end method

.method public L(F)V
    .locals 1

    .line 1
    iput p1, p0, Lb/a/a/e/b;->n:F

    .line 2
    iget-object v0, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lb/a/a/d/a;->N(F)V

    :cond_0
    return-void
.end method

.method public M(I)V
    .locals 3

    int-to-long v0, p1

    .line 1
    iput-wide v0, p0, Lb/a/a/e/b;->l:J

    .line 2
    iget-object v2, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2, v0, v1}, Lb/a/a/d/a;->J(J)V

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/a/e/b;->r:Lb/a/a/b/d;

    if-eqz v0, :cond_1

    iget v1, p0, Lb/a/a/e/b;->k:I

    if-ge p1, v1, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lb/a/a/b/d;->z(I)V

    :cond_1
    return-void
.end method

.method public N()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lb/a/a/e/b;->o:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lb/a/a/e/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/a/a/e/b$b;-><init>(Lb/a/a/e/b;Lb/a/a/e/b$a;)V

    iput-object v0, p0, Lb/a/a/e/b;->g:Ljava/lang/Thread;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/a/e/b;->h:Lb/a/a/c/l;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lb/a/a/c/l;->c(I)V

    return-void
.end method

.method public O()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/e/b;->h:Lb/a/a/c/l;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lb/a/a/c/l;->c(I)V

    return-void
.end method

.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/e/b;->f:Ljava/lang/Object;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lb/a/a/e/b;->u(Ljava/lang/Object;III)V

    .line 2
    iget-object v0, p0, Lb/a/a/e/b;->a:Ljava/lang/String;

    const-string v1, " encoder error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public c(Landroid/media/MediaFormat;)V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    const-string v0, "audio/"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/e/b;->t:Lb/a/a/a/a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lb/a/a/e/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio complete = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lb/a/a/e/b;->t:Lb/a/a/a/a;

    invoke-virtual {v0, p1}, Lb/a/a/a/a;->d(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lb/a/a/e/b;->h:Lb/a/a/c/l;

    invoke-virtual {p1}, Lb/a/a/c/l;->a()I

    move-result p1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lb/a/a/e/b;->h:Lb/a/a/c/l;

    invoke-virtual {p1, v0}, Lb/a/a/c/l;->c(I)V

    .line 7
    iget-object p1, p0, Lb/a/a/e/b;->f:Ljava/lang/Object;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lb/a/a/e/b;->u(Ljava/lang/Object;III)V

    :cond_1
    return-void
.end method

.method public h(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/e/b;->u:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "audio/"

    .line 2
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lb/a/a/e/b;->j:I

    .line 4
    iget-object v1, p0, Lb/a/a/e/b;->t:Lb/a/a/a/a;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1, p1, p2, p3}, Lb/a/a/a/a;->r(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)Z

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lb/a/a/e/b;->t:Lb/a/a/a/a;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lb/a/a/a/a;->b(I)Z

    move-result p1

    return p1
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/e/b;->j:I

    return v0
.end method

.method public p()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lb/a/a/e/b;->i:J

    long-to-int v0, v0

    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/b;->h:Lb/a/a/c/l;

    invoke-virtual {v0}, Lb/a/a/c/l;->b()Z

    move-result v0

    return v0
.end method

.method public s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/d/a;->E()V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/e/b;->h:Lb/a/a/c/l;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lb/a/a/c/l;->c(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lb/a/a/e/b;->I(Z)V

    .line 3
    iget-object v1, p0, Lb/a/a/e/b;->t:Lb/a/a/a/a;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Lb/a/a/a/a;->I(Z)V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 5

    .line 1
    iget-object v0, p0, Lb/a/a/e/b;->h:Lb/a/a/c/l;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lb/a/a/c/l;->c(I)V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v2, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lb/a/a/d/a;->A()Landroid/media/MediaFormat;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lb/a/a/e/b;->t:Lb/a/a/a/a;

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Lb/a/a/b/d;

    iget-object v3, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    invoke-virtual {v3}, Lb/a/a/d/a;->A()Landroid/media/MediaFormat;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lb/a/a/b/d;-><init>(Landroid/media/MediaFormat;Landroid/view/Surface;)V

    iput-object v2, p0, Lb/a/a/e/b;->r:Lb/a/a/b/d;

    .line 4
    invoke-virtual {v2, v1}, Lb/a/a/b/d;->w(I)V

    .line 5
    iget-object v1, p0, Lb/a/a/e/b;->r:Lb/a/a/b/d;

    invoke-virtual {v1, v0}, Lb/a/a/b/d;->k(Z)V

    .line 6
    iget-object v1, p0, Lb/a/a/e/b;->r:Lb/a/a/b/d;

    invoke-virtual {v1, p0}, Lb/a/a/b/d;->x(Lb/a/a/c/k;)V

    .line 7
    iget-object v1, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    invoke-virtual {v1, v0}, Lb/a/a/d/a;->B(Z)V

    .line 8
    iget-object v1, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    iget-object v2, p0, Lb/a/a/e/b;->r:Lb/a/a/b/d;

    invoke-virtual {v1, v2, p0}, Lb/a/a/d/a;->M(Lb/a/a/c/c;Lb/a/a/c/k;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 10
    :cond_0
    :goto_0
    iget-object v1, p0, Lb/a/a/e/b;->f:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2, v2}, Lb/a/a/e/b;->u(Ljava/lang/Object;III)V

    .line 11
    iget-object v0, p0, Lb/a/a/e/b;->h:Lb/a/a/c/l;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lb/a/a/c/l;->c(I)V

    return-void
.end method

.method public w()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/e/b;->h:Lb/a/a/c/l;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lb/a/a/c/l;->c(I)V

    .line 2
    iget-object v0, p0, Lb/a/a/e/b;->v:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lb/a/a/e/b;->p:Z

    .line 4
    iget-object v1, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lb/a/a/d/a;->P()V

    .line 6
    iput-object v2, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    .line 7
    :cond_0
    iget-object v1, p0, Lb/a/a/e/b;->r:Lb/a/a/b/d;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lb/a/a/b/d;->s()V

    .line 9
    iput-object v2, p0, Lb/a/a/e/b;->r:Lb/a/a/b/d;

    .line 10
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public x()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/a/a/e/b;->w()V

    return-void
.end method

.method public y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/e/b;->h:Lb/a/a/c/l;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lb/a/a/c/l;->c(I)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lb/a/a/e/b;->I(Z)V

    .line 3
    iget-object v1, p0, Lb/a/a/e/b;->t:Lb/a/a/a/a;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Lb/a/a/a/a;->I(Z)V

    :cond_0
    return-void
.end method

.method public z(I)V
    .locals 3

    if-gez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lb/a/a/e/b;->r:Lb/a/a/b/d;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Lb/a/a/e/b;->p:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lb/a/a/b/d;->j()V

    .line 4
    :cond_1
    iget-object v0, p0, Lb/a/a/e/b;->s:Lb/a/a/d/a;

    if-eqz v0, :cond_2

    int-to-long v1, p1

    .line 5
    invoke-virtual {v0, v1, v2}, Lb/a/a/d/a;->H(J)V

    :cond_2
    return-void
.end method
