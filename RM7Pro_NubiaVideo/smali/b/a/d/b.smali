.class public Lb/a/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/c/k;
.implements Lb/a/a/c/e;


# instance fields
.field private A:Ljava/lang/Object;

.field private a:Lb/a/a/f/a;

.field private b:Lb/a/a/b/e;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field private i:Lb/a/a/b/e;

.field private j:Lb/a/a/c/f;

.field private k:Lb/a/a/c/h;

.field private l:Lb/a/a/c/g;

.field private m:I

.field private n:I

.field private o:J

.field private p:F

.field private q:F

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Lb/a/a/b/f;

.field private w:Lb/a/a/b/b;

.field private x:Landroid/view/Surface;

.field private y:Lb/a/a/a/a;

.field private z:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/a/d/b;->a:Lb/a/a/f/a;

    .line 3
    iput-object v0, p0, Lb/a/d/b;->b:Lb/a/a/b/e;

    .line 4
    iput-object v0, p0, Lb/a/d/b;->c:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lb/a/d/b;->d:J

    .line 6
    iput-wide v1, p0, Lb/a/d/b;->e:J

    .line 7
    iput-wide v1, p0, Lb/a/d/b;->f:J

    .line 8
    iput-wide v1, p0, Lb/a/d/b;->g:J

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lb/a/d/b;->h:I

    .line 10
    iput-object v0, p0, Lb/a/d/b;->i:Lb/a/a/b/e;

    .line 11
    iput v1, p0, Lb/a/d/b;->m:I

    const/16 v2, 0x1e

    .line 12
    iput v2, p0, Lb/a/d/b;->n:I

    const-wide/32 v2, 0x8235

    .line 13
    iput-wide v2, p0, Lb/a/d/b;->o:J

    const/high16 v2, 0x3f800000    # 1.0f

    .line 14
    iput v2, p0, Lb/a/d/b;->p:F

    .line 15
    iput v2, p0, Lb/a/d/b;->q:F

    .line 16
    iput-boolean v1, p0, Lb/a/d/b;->r:Z

    .line 17
    iput-boolean v1, p0, Lb/a/d/b;->s:Z

    .line 18
    iput-boolean v1, p0, Lb/a/d/b;->t:Z

    .line 19
    iput-boolean v1, p0, Lb/a/d/b;->u:Z

    .line 20
    iput-object v0, p0, Lb/a/d/b;->v:Lb/a/a/b/f;

    .line 21
    iput-object v0, p0, Lb/a/d/b;->w:Lb/a/a/b/b;

    .line 22
    iput-object v0, p0, Lb/a/d/b;->y:Lb/a/a/a/a;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/a/d/b;->z:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/a/d/b;->A:Ljava/lang/Object;

    .line 25
    iput-boolean v1, p0, Lb/a/d/b;->r:Z

    .line 26
    iput-boolean v1, p0, Lb/a/d/b;->s:Z

    .line 27
    iput-boolean v1, p0, Lb/a/d/b;->t:Z

    .line 28
    new-instance v0, Lb/a/a/b/f;

    invoke-direct {v0}, Lb/a/a/b/f;-><init>()V

    iput-object v0, p0, Lb/a/d/b;->v:Lb/a/a/b/f;

    .line 29
    new-instance v0, Lb/a/a/b/b;

    invoke-direct {v0}, Lb/a/a/b/b;-><init>()V

    iput-object v0, p0, Lb/a/d/b;->w:Lb/a/a/b/b;

    return-void
.end method

.method private l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/d/b;->i:Lb/a/a/b/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/b/e;->p()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lb/a/d/b;->i:Lb/a/a/b/e;

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/d/b;->A:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lb/a/d/b;->b:Lb/a/a/b/e;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lb/a/a/b/e;->d(Z)V

    .line 4
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

.method public a()V
    .locals 2

    const-string v0, "VideoEditor"

    const-string v1, " encoder error"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lb/a/d/b;->l:Lb/a/a/c/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Lb/a/a/c/g;->s(I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public c(Landroid/media/MediaFormat;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOutputFormatChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoEditor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lb/a/d/b;->a:Lb/a/a/f/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lb/a/a/f/a;->f(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/d/b;->a:Lb/a/a/f/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/f/a;->b()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e(Lb/a/a/c/j;)V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    const-string v0, "video/"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lb/a/d/b;->r:Z

    :cond_0
    const-string v0, "audio/"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lb/a/d/b;->y:Lb/a/a/a/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lb/a/a/a/a;->I(Z)V

    .line 5
    iput-boolean v1, p0, Lb/a/d/b;->s:Z

    .line 6
    :cond_1
    iget-object v0, p0, Lb/a/d/b;->a:Lb/a/a/f/a;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, p1}, Lb/a/a/f/a;->e(Ljava/lang/String;)V

    .line 8
    :cond_2
    iget-boolean p1, p0, Lb/a/d/b;->r:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lb/a/d/b;->s:Z

    if-eqz p1, :cond_3

    .line 9
    iput-boolean v1, p0, Lb/a/d/b;->t:Z

    :cond_3
    return-void
.end method

.method public g(Landroid/view/Surface;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/d/b;->x:Landroid/view/Surface;

    return-void
.end method

.method public h(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lb/a/d/b;->z:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "mixaudio/"

    .line 2
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p3, p0, Lb/a/d/b;->i:Lb/a/a/b/e;

    if-eqz p3, :cond_4

    .line 4
    invoke-virtual {p3, p1, p2}, Lb/a/a/b/e;->e(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v1, p0, Lb/a/d/b;->u:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lb/a/d/b;->t:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lb/a/d/b;->a:Lb/a/a/f/a;

    if-eqz v1, :cond_4

    .line 6
    invoke-virtual {v1}, Lb/a/a/f/a;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "audio/"

    .line 7
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v3, p0, Lb/a/d/b;->g:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    :cond_1
    const-string v1, "video/"

    .line 8
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v3, p0, Lb/a/d/b;->f:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4

    :cond_2
    const-string v1, "audio/"

    .line 9
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v3, p0, Lb/a/d/b;->e:J

    cmp-long v3, v1, v3

    if-gtz v3, :cond_3

    .line 10
    iput-wide v1, p0, Lb/a/d/b;->g:J

    .line 11
    iget-object v1, p0, Lb/a/d/b;->a:Lb/a/a/f/a;

    invoke-virtual {v1, p1, p2, p3}, Lb/a/a/f/a;->d(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "video/"

    .line 12
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v3, p0, Lb/a/d/b;->e:J

    cmp-long v3, v1, v3

    if-gtz v3, :cond_4

    .line 13
    iput-wide v1, p0, Lb/a/d/b;->f:J

    .line 14
    iget-object v1, p0, Lb/a/d/b;->a:Lb/a/a/f/a;

    invoke-virtual {v1, p1, p2, p3}, Lb/a/a/f/a;->d(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 15
    :cond_4
    :goto_0
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
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/d/b;->i:Lb/a/a/b/e;

    if-eqz v0, :cond_0

    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lb/a/d/b;->i:Lb/a/a/b/e;

    invoke-virtual {p1, p2}, Lb/a/a/b/e;->k(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public j()V
    .locals 2

    const-string v0, "VideoEditor"

    const-string v1, "cancel editor "

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lb/a/d/b;->r:Z

    .line 3
    iput-boolean v0, p0, Lb/a/d/b;->s:Z

    .line 4
    iput-boolean v0, p0, Lb/a/d/b;->t:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lb/a/d/b;->u:Z

    .line 6
    invoke-virtual {p0}, Lb/a/d/b;->z()V

    .line 7
    iget-object v0, p0, Lb/a/d/b;->y:Lb/a/a/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/a/a/a/a;->E(Lb/a/a/c/k;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public k()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/d/b;->x:Landroid/view/Surface;

    return-object v0
.end method

.method public m()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lb/a/a/b/e;

    iget-object v1, p0, Lb/a/d/b;->w:Lb/a/a/b/b;

    invoke-direct {v0, v1}, Lb/a/a/b/e;-><init>(Lb/a/a/b/b;)V

    iput-object v0, p0, Lb/a/d/b;->i:Lb/a/a/b/e;

    .line 2
    invoke-virtual {v0, p0}, Lb/a/a/b/e;->r(Lb/a/a/c/k;)V

    .line 3
    iget v0, p0, Lb/a/d/b;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/d/b;->h:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public n(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lb/a/d/b;->d:J

    return-void
.end method

.method public o(Lb/a/a/a/a;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lb/a/d/b;->y:Lb/a/a/a/a;

    .line 2
    iget-object v0, p0, Lb/a/d/b;->w:Lb/a/a/b/b;

    invoke-virtual {p1}, Lb/a/a/a/a;->i()I

    move-result p1

    invoke-virtual {v0, p1}, Lb/a/a/b/b;->g(I)V

    .line 3
    iget p1, p0, Lb/a/d/b;->q:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lb/a/d/b;->w:Lb/a/a/b/b;

    iget-object v0, p0, Lb/a/d/b;->y:Lb/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a;->j()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lb/a/d/b;->q:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lb/a/a/b/b;->f(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lb/a/d/b;->w:Lb/a/a/b/b;

    const v0, 0xfa00

    invoke-virtual {p1, v0}, Lb/a/a/b/b;->f(I)V

    .line 6
    :goto_0
    iget-object p1, p0, Lb/a/d/b;->y:Lb/a/a/a/a;

    invoke-virtual {p1, p0}, Lb/a/a/a/a;->E(Lb/a/a/c/k;)V

    return-void
.end method

.method public p(Lb/a/a/c/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/d/b;->j:Lb/a/a/c/f;

    return-void
.end method

.method public q(Lb/a/a/c/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/d/b;->l:Lb/a/a/c/g;

    return-void
.end method

.method public r(Lb/a/a/c/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/d/b;->k:Lb/a/a/c/h;

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lb/a/d/b;->c:Ljava/lang/String;

    .line 2
    new-instance v0, Lb/a/a/f/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lb/a/a/f/a;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lb/a/d/b;->a:Lb/a/a/f/a;

    return-void
.end method

.method public t(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lb/a/d/b;->p:F

    .line 2
    iput p2, p0, Lb/a/d/b;->q:F

    return-void
.end method

.method public u(I)V
    .locals 1

    const/high16 v0, 0x700000

    if-le p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lb/a/d/b;->v:Lb/a/a/b/f;

    invoke-virtual {v0, p1}, Lb/a/a/b/f;->i(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lb/a/d/b;->v:Lb/a/a/b/f;

    invoke-virtual {p1, v0}, Lb/a/a/b/f;->i(I)V

    :goto_0
    return-void
.end method

.method public v(I)V
    .locals 6

    .line 1
    iput p1, p0, Lb/a/d/b;->n:I

    int-to-long v0, p1

    const-wide/32 v2, 0xf4240

    .line 2
    div-long v0, v2, v0

    int-to-long v4, p1

    rem-long/2addr v2, v4

    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lb/a/d/b;->o:J

    .line 3
    iget-object v0, p0, Lb/a/d/b;->v:Lb/a/a/b/f;

    invoke-virtual {v0, p1}, Lb/a/a/b/f;->j(I)V

    return-void
.end method

.method public w(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/d/b;->v:Lb/a/a/b/f;

    invoke-virtual {v0, p1, p2}, Lb/a/a/b/f;->k(II)V

    return-void
.end method

.method public x()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lb/a/a/b/e;

    iget-object v1, p0, Lb/a/d/b;->v:Lb/a/a/b/f;

    invoke-direct {v0, v1}, Lb/a/a/b/e;-><init>(Lb/a/a/b/f;)V

    iput-object v0, p0, Lb/a/d/b;->b:Lb/a/a/b/e;

    .line 2
    iget-wide v1, p0, Lb/a/d/b;->o:J

    invoke-virtual {v0, v1, v2}, Lb/a/a/b/e;->q(J)V

    .line 3
    iget-object v0, p0, Lb/a/d/b;->b:Lb/a/a/b/e;

    invoke-virtual {v0, p0}, Lb/a/a/b/e;->s(Lb/a/a/c/e;)V

    .line 4
    iget-object v0, p0, Lb/a/d/b;->b:Lb/a/a/b/e;

    invoke-virtual {v0, p0}, Lb/a/a/b/e;->r(Lb/a/a/c/k;)V

    .line 5
    iget v0, p0, Lb/a/d/b;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/d/b;->h:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public y()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lb/a/d/b;->u:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lb/a/d/b;->i:Lb/a/a/b/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lb/a/a/b/e;->u()V

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/d/b;->a:Lb/a/a/f/a;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    iget v3, p0, Lb/a/d/b;->h:I

    invoke-virtual {v0, v3}, Lb/a/a/f/a;->i(I)V

    .line 6
    iget-object v0, p0, Lb/a/d/b;->a:Lb/a/a/f/a;

    iget v3, p0, Lb/a/d/b;->m:I

    invoke-virtual {v0, v3}, Lb/a/a/f/a;->l(I)V

    .line 7
    iget-wide v3, p0, Lb/a/d/b;->d:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    long-to-float v0, v3

    .line 8
    iget v3, p0, Lb/a/d/b;->p:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    div-float/2addr v0, v3

    float-to-long v3, v0

    iput-wide v3, p0, Lb/a/d/b;->e:J

    .line 9
    iget-object v0, p0, Lb/a/d/b;->a:Lb/a/a/f/a;

    invoke-virtual {v0, v3, v4}, Lb/a/a/f/a;->h(J)V

    .line 10
    :cond_1
    iget-object v0, p0, Lb/a/d/b;->a:Lb/a/a/f/a;

    iget-object v3, p0, Lb/a/d/b;->j:Lb/a/a/c/f;

    invoke-virtual {v0, v3}, Lb/a/a/f/a;->j(Lb/a/a/c/f;)V

    .line 11
    iget-object v0, p0, Lb/a/d/b;->a:Lb/a/a/f/a;

    iget-object v3, p0, Lb/a/d/b;->k:Lb/a/a/c/h;

    invoke-virtual {v0, v3}, Lb/a/a/f/a;->k(Lb/a/a/c/h;)V

    .line 12
    :cond_2
    iget-object v0, p0, Lb/a/d/b;->b:Lb/a/a/b/e;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0, v1, v2}, Lb/a/a/b/e;->t(J)V

    .line 14
    iget-object v0, p0, Lb/a/d/b;->b:Lb/a/a/b/e;

    invoke-virtual {v0}, Lb/a/a/b/e;->u()V

    :cond_3
    return-void
.end method

.method public z()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/d/b;->A:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lb/a/d/b;->l()V

    .line 3
    iget-object v1, p0, Lb/a/d/b;->b:Lb/a/a/b/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lb/a/a/b/e;->p()V

    .line 5
    iput-object v2, p0, Lb/a/d/b;->b:Lb/a/a/b/e;

    .line 6
    :cond_0
    iget-object v1, p0, Lb/a/d/b;->a:Lb/a/a/f/a;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lb/a/a/f/a;->m()V

    .line 8
    iput-object v2, p0, Lb/a/d/b;->a:Lb/a/a/f/a;

    .line 9
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
