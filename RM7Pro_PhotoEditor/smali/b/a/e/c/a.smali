.class public Lb/a/e/c/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/e/b/e;


# instance fields
.field private a:Lb/a/e/d/a;

.field private b:Lb/a/e/a/c;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:I

.field private f:Lb/a/e/b/b;

.field private g:Lb/a/e/b/c;

.field private h:I

.field private i:Lb/a/e/a/d;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/a/e/c/a;->e:I

    iput v0, p0, Lb/a/e/c/a;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/e/c/a;->i:Lb/a/e/a/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/e/c/a;->j:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Landroid/media/MediaFormat;)V
    .locals 2

    iget-object v0, p0, Lb/a/e/c/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lb/a/e/c/a;->j:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lb/a/e/c/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/a/e/c/a;->a:Lb/a/e/d/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/e/c/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/a/e/c/a;->a:Lb/a/e/d/a;

    invoke-virtual {v0, p1}, Lb/a/e/d/a;->g(Landroid/media/MediaFormat;)V

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lb/a/e/c/a;->a:Lb/a/e/d/a;

    invoke-virtual {v0}, Lb/a/e/d/a;->c()Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lb/a/e/c/a;->a:Lb/a/e/d/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/a/e/d/a;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lb/a/e/c/a;->a:Lb/a/e/d/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/a/e/d/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/e/c/a;->a:Lb/a/e/d/a;

    invoke-virtual {v0, p1, p2, p3}, Lb/a/e/d/a;->e(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lb/a/e/c/a;->i:Lb/a/e/a/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/a/e/a/d;->k()V

    iput-object v1, p0, Lb/a/e/c/a;->i:Lb/a/e/a/d;

    :cond_0
    iget-object v0, p0, Lb/a/e/c/a;->b:Lb/a/e/a/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lb/a/e/a/c;->c()V

    iput-object v1, p0, Lb/a/e/c/a;->b:Lb/a/e/a/c;

    :cond_1
    iget-object v0, p0, Lb/a/e/c/a;->a:Lb/a/e/d/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lb/a/e/d/a;->n()V

    iget-object v0, p0, Lb/a/e/c/a;->a:Lb/a/e/d/a;

    invoke-virtual {v0}, Lb/a/e/d/a;->b()V

    iput-object v1, p0, Lb/a/e/c/a;->a:Lb/a/e/d/a;

    :cond_2
    return-void
.end method

.method public g()V
    .locals 4

    iget-object v0, p0, Lb/a/e/c/a;->a:Lb/a/e/d/a;

    if-eqz v0, :cond_1

    iget v1, p0, Lb/a/e/c/a;->e:I

    invoke-virtual {v0, v1}, Lb/a/e/d/a;->j(I)V

    iget-object v0, p0, Lb/a/e/c/a;->a:Lb/a/e/d/a;

    iget v1, p0, Lb/a/e/c/a;->h:I

    invoke-virtual {v0, v1}, Lb/a/e/d/a;->m(I)V

    iget-wide v0, p0, Lb/a/e/c/a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lb/a/e/c/a;->a:Lb/a/e/d/a;

    invoke-virtual {v2, v0, v1}, Lb/a/e/d/a;->i(J)V

    :cond_0
    iget-object v0, p0, Lb/a/e/c/a;->a:Lb/a/e/d/a;

    iget-object v1, p0, Lb/a/e/c/a;->f:Lb/a/e/b/b;

    invoke-virtual {v0, v1}, Lb/a/e/d/a;->k(Lb/a/e/b/b;)V

    iget-object v0, p0, Lb/a/e/c/a;->a:Lb/a/e/d/a;

    iget-object v1, p0, Lb/a/e/c/a;->g:Lb/a/e/b/c;

    invoke-virtual {v0, v1}, Lb/a/e/d/a;->l(Lb/a/e/b/c;)V

    :cond_1
    iget-object v0, p0, Lb/a/e/c/a;->b:Lb/a/e/a/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lb/a/e/a/c;->q(Lb/a/e/b/e;)V

    iget-object v0, p0, Lb/a/e/c/a;->b:Lb/a/e/a/c;

    invoke-virtual {v0}, Lb/a/e/a/c;->s()V

    :cond_2
    iget-object v0, p0, Lb/a/e/c/a;->i:Lb/a/e/a/d;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lb/a/e/a/d;->j()V

    :cond_3
    return-void
.end method

.method public h(J)V
    .locals 0

    iput-wide p1, p0, Lb/a/e/c/a;->d:J

    return-void
.end method

.method public i(Lb/a/e/b/b;)V
    .locals 0

    iput-object p1, p0, Lb/a/e/c/a;->f:Lb/a/e/b/b;

    return-void
.end method

.method public j(Lb/a/e/b/c;)V
    .locals 0

    iput-object p1, p0, Lb/a/e/c/a;->g:Lb/a/e/b/c;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lb/a/e/c/a;->c:Ljava/lang/String;

    new-instance v0, Lb/a/e/d/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lb/a/e/d/a;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lb/a/e/c/a;->a:Lb/a/e/d/a;

    return-void
.end method

.method public l(Lb/a/e/a/e;)V
    .locals 5

    iget-object v0, p0, Lb/a/e/c/a;->b:Lb/a/e/a/c;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lb/a/e/a/c;

    invoke-direct {v0, p1}, Lb/a/e/a/c;-><init>(Lb/a/e/a/e;)V

    iput-object v0, p0, Lb/a/e/c/a;->b:Lb/a/e/a/c;

    const-wide/32 v1, 0xf4240

    invoke-virtual {p1}, Lb/a/e/a/e;->b()I

    move-result p1

    int-to-long v3, p1

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lb/a/e/a/c;->p(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    iget p1, p0, Lb/a/e/c/a;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/a/e/c/a;->e:I

    :cond_0
    return-void
.end method

.method public m(Lb/a/e/a/d;)V
    .locals 1

    iput-object p1, p0, Lb/a/e/c/a;->i:Lb/a/e/a/d;

    iget-object v0, p0, Lb/a/e/c/a;->b:Lb/a/e/a/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/a/e/a/c;->r(Lb/a/e/a/d;)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lb/a/e/c/a;->i:Lb/a/e/a/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/a/e/a/d;->k()V

    iput-object v1, p0, Lb/a/e/c/a;->i:Lb/a/e/a/d;

    :cond_0
    iget-object v0, p0, Lb/a/e/c/a;->b:Lb/a/e/a/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lb/a/e/a/c;->o()V

    iput-object v1, p0, Lb/a/e/c/a;->b:Lb/a/e/a/c;

    :cond_1
    iget-object v0, p0, Lb/a/e/c/a;->a:Lb/a/e/d/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lb/a/e/d/a;->n()V

    iput-object v1, p0, Lb/a/e/c/a;->a:Lb/a/e/d/a;

    :cond_2
    return-void
.end method
