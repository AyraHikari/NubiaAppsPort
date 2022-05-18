.class public Lb/a/a/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/d/a$b;
    }
.end annotation


# static fields
.field private static final y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/media/MediaExtractor;

.field private b:Landroid/media/MediaFormat;

.field private c:Lb/a/a/c/c;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lb/a/a/d/a$b;

.field private g:Z

.field private h:Z

.field private i:Lb/a/a/c/k;

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:I

.field private o:J

.field private p:J

.field private q:J

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:F

.field private w:Landroid/content/Context;

.field private x:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb/a/a/d/a$a;

    invoke-direct {v0}, Lb/a/a/d/a$a;-><init>()V

    sput-object v0, Lb/a/a/d/a;->y:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JZ)V
    .locals 6

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lb/a/a/d/a;->b:Landroid/media/MediaFormat;

    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Lb/a/a/d/a;->g:Z

    .line 27
    iput-boolean v1, p0, Lb/a/a/d/a;->h:Z

    .line 28
    iput-object v0, p0, Lb/a/a/d/a;->i:Lb/a/a/c/k;

    const-wide/16 v2, 0x0

    .line 29
    iput-wide v2, p0, Lb/a/a/d/a;->j:J

    const-wide/16 v4, -0x1

    .line 30
    iput-wide v4, p0, Lb/a/a/d/a;->k:J

    .line 31
    iput-wide v4, p0, Lb/a/a/d/a;->l:J

    .line 32
    iput-wide v4, p0, Lb/a/a/d/a;->m:J

    .line 33
    iput v1, p0, Lb/a/a/d/a;->n:I

    .line 34
    iput-wide v2, p0, Lb/a/a/d/a;->o:J

    .line 35
    iput-wide v2, p0, Lb/a/a/d/a;->p:J

    .line 36
    iput-boolean v1, p0, Lb/a/a/d/a;->r:Z

    .line 37
    iput-boolean v1, p0, Lb/a/a/d/a;->s:Z

    .line 38
    iput-boolean v1, p0, Lb/a/a/d/a;->t:Z

    .line 39
    iput-boolean v1, p0, Lb/a/a/d/a;->u:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    iput v1, p0, Lb/a/a/d/a;->v:F

    .line 41
    iput-object v0, p0, Lb/a/a/d/a;->w:Landroid/content/Context;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/a/a/d/a;->x:Ljava/lang/Object;

    .line 43
    iput-object p1, p0, Lb/a/a/d/a;->w:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lb/a/a/d/a;->d:Ljava/lang/String;

    .line 45
    iput-boolean p5, p0, Lb/a/a/d/a;->u:Z

    .line 46
    iput-wide p3, p0, Lb/a/a/d/a;->j:J

    .line 47
    new-instance p1, Lb/a/a/d/a$b;

    invoke-direct {p1, p0}, Lb/a/a/d/a$b;-><init>(Lb/a/a/d/a;)V

    iput-object p1, p0, Lb/a/a/d/a;->f:Lb/a/a/d/a$b;

    .line 48
    invoke-virtual {p0}, Lb/a/a/d/a;->D()Z

    move-result p1

    iput-boolean p1, p0, Lb/a/a/d/a;->h:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/a/a/d/a;->b:Landroid/media/MediaFormat;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lb/a/a/d/a;->g:Z

    .line 4
    iput-boolean v1, p0, Lb/a/a/d/a;->h:Z

    .line 5
    iput-object v0, p0, Lb/a/a/d/a;->i:Lb/a/a/c/k;

    const-wide/16 v2, 0x0

    .line 6
    iput-wide v2, p0, Lb/a/a/d/a;->j:J

    const-wide/16 v4, -0x1

    .line 7
    iput-wide v4, p0, Lb/a/a/d/a;->k:J

    .line 8
    iput-wide v4, p0, Lb/a/a/d/a;->l:J

    .line 9
    iput-wide v4, p0, Lb/a/a/d/a;->m:J

    .line 10
    iput v1, p0, Lb/a/a/d/a;->n:I

    .line 11
    iput-wide v2, p0, Lb/a/a/d/a;->o:J

    .line 12
    iput-wide v2, p0, Lb/a/a/d/a;->p:J

    .line 13
    iput-boolean v1, p0, Lb/a/a/d/a;->r:Z

    .line 14
    iput-boolean v1, p0, Lb/a/a/d/a;->s:Z

    .line 15
    iput-boolean v1, p0, Lb/a/a/d/a;->t:Z

    .line 16
    iput-boolean v1, p0, Lb/a/a/d/a;->u:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 17
    iput v1, p0, Lb/a/a/d/a;->v:F

    .line 18
    iput-object v0, p0, Lb/a/a/d/a;->w:Landroid/content/Context;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/a/a/d/a;->x:Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lb/a/a/d/a;->d:Ljava/lang/String;

    .line 21
    iput-wide p2, p0, Lb/a/a/d/a;->j:J

    .line 22
    new-instance p1, Lb/a/a/d/a$b;

    invoke-direct {p1, p0}, Lb/a/a/d/a$b;-><init>(Lb/a/a/d/a;)V

    iput-object p1, p0, Lb/a/a/d/a;->f:Lb/a/a/d/a$b;

    .line 23
    invoke-virtual {p0}, Lb/a/a/d/a;->D()Z

    move-result p1

    iput-boolean p1, p0, Lb/a/a/d/a;->h:Z

    return-void
.end method

.method static synthetic a(Lb/a/a/d/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/a/a/d/a;->u:Z

    return p0
.end method

.method static synthetic b(Lb/a/a/d/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/d/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lb/a/a/d/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/a/a/d/a;->s:Z

    return p0
.end method

.method static synthetic d(Lb/a/a/d/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/a/d/a;->s:Z

    return p1
.end method

.method static synthetic e(Lb/a/a/d/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb/a/a/d/a;->q:J

    return-wide v0
.end method

.method static synthetic f(Lb/a/a/d/a;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lb/a/a/d/a;->q:J

    return-wide p1
.end method

.method static synthetic g(Lb/a/a/d/a;)Lb/a/a/c/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/d/a;->c:Lb/a/a/c/c;

    return-object p0
.end method

.method static synthetic h(Lb/a/a/d/a;Lb/a/a/c/c;)Lb/a/a/c/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/d/a;->c:Lb/a/a/c/c;

    return-object p1
.end method

.method static synthetic i(Lb/a/a/d/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb/a/a/d/a;->o:J

    return-wide v0
.end method

.method static synthetic j(Lb/a/a/d/a;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lb/a/a/d/a;->o:J

    return-wide p1
.end method

.method static synthetic k(Lb/a/a/d/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb/a/a/d/a;->m:J

    return-wide v0
.end method

.method static synthetic l(Lb/a/a/d/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/a/a/d/a;->r:Z

    return p0
.end method

.method static synthetic m(Lb/a/a/d/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/a/d/a;->r:Z

    return p1
.end method

.method static synthetic n(Lb/a/a/d/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/a/a/d/a;->t:Z

    return p0
.end method

.method static synthetic o(Lb/a/a/d/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb/a/a/d/a;->j:J

    return-wide v0
.end method

.method static synthetic p(Lb/a/a/d/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/d/a;->x:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic q(Lb/a/a/d/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/d/a;->w:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic r(Lb/a/a/d/a;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/d/a;->b:Landroid/media/MediaFormat;

    return-object p1
.end method

.method static synthetic s(Lb/a/a/d/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/a/a/d/a;->n:I

    return p0
.end method

.method static synthetic t(Lb/a/a/d/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/a/a/d/a;->h:Z

    return p0
.end method

.method static synthetic u(Lb/a/a/d/a;)Lb/a/a/c/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/d/a;->i:Lb/a/a/c/k;

    return-object p0
.end method

.method static synthetic v(Lb/a/a/d/a;Lb/a/a/c/k;)Lb/a/a/c/k;
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/d/a;->i:Lb/a/a/c/k;

    return-object p1
.end method

.method static synthetic w(Lb/a/a/d/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/d/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic x(Lb/a/a/d/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb/a/a/d/a;->k:J

    return-wide v0
.end method

.method static synthetic y(Lb/a/a/d/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/a/a/d/a;->g:Z

    return p0
.end method

.method static synthetic z(Lb/a/a/d/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/a/d/a;->g:Z

    return p1
.end method


# virtual methods
.method public A()Landroid/media/MediaFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/d/a;->b:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public B(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/a/d/a;->t:Z

    return-void
.end method

.method public C(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/a/d/a;->h:Z

    return-void
.end method

.method public D()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/d/a;->b:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    const-string v1, "mime"

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/d/a;->e:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNeedToDecoer mimetype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/d/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioLocalSource"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object v0, Lb/a/a/d/a;->y:Ljava/util/HashMap;

    iget-object v1, p0, Lb/a/a/d/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public E()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb/a/a/d/a;->r:Z

    return-void
.end method

.method public F()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb/a/a/d/a;->s:Z

    return-void
.end method

.method public G()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lb/a/a/d/a;->s:Z

    .line 2
    iput-boolean v0, p0, Lb/a/a/d/a;->r:Z

    return-void
.end method

.method public H(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 1
    iput-wide p1, p0, Lb/a/a/d/a;->q:J

    return-void
.end method

.method public I(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    .line 1
    iput-wide v0, p0, Lb/a/a/d/a;->l:J

    .line 2
    invoke-virtual {p0, p1, p2}, Lb/a/a/d/a;->H(J)V

    .line 3
    iget-wide p1, p0, Lb/a/a/d/a;->l:J

    const-wide/16 v0, 0x64

    mul-long/2addr p1, v0

    long-to-float p1, p1

    iget p2, p0, Lb/a/a/d/a;->v:F

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p2, v0

    div-float/2addr p1, p2

    float-to-long p1, p1

    iput-wide p1, p0, Lb/a/a/d/a;->m:J

    return-void
.end method

.method public J(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    .line 1
    iput-wide v0, p0, Lb/a/a/d/a;->k:J

    .line 2
    invoke-virtual {p0, p1, p2}, Lb/a/a/d/a;->H(J)V

    return-void
.end method

.method public K(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb/a/a/d/a;->n:I

    return-void
.end method

.method public L(JJJ)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 1
    iput-wide p1, p0, Lb/a/a/d/a;->k:J

    mul-long/2addr p3, v0

    .line 2
    iput-wide p3, p0, Lb/a/a/d/a;->l:J

    sub-long p1, p3, p1

    .line 3
    iput-wide p1, p0, Lb/a/a/d/a;->p:J

    mul-long/2addr p5, v0

    .line 4
    iput-wide p5, p0, Lb/a/a/d/a;->j:J

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    .line 5
    iput-wide p5, p0, Lb/a/a/d/a;->l:J

    .line 6
    :cond_0
    iget-wide p1, p0, Lb/a/a/d/a;->l:J

    const-wide/16 p3, 0x64

    mul-long/2addr p1, p3

    long-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    iget p3, p0, Lb/a/a/d/a;->v:F

    mul-float/2addr p3, p2

    div-float/2addr p1, p3

    float-to-long p1, p1

    iput-wide p1, p0, Lb/a/a/d/a;->m:J

    return-void
.end method

.method public M(Lb/a/a/c/c;Lb/a/a/c/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/d/a;->c:Lb/a/a/c/c;

    .line 2
    iput-object p2, p0, Lb/a/a/d/a;->i:Lb/a/a/c/k;

    return-void
.end method

.method public N(F)V
    .locals 4

    .line 1
    iput p1, p0, Lb/a/a/d/a;->v:F

    .line 2
    iget-wide v0, p0, Lb/a/a/d/a;->l:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    div-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Lb/a/a/d/a;->m:J

    return-void
.end method

.method public O()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb/a/a/d/a;->g:Z

    .line 2
    iget-boolean v0, p0, Lb/a/a/d/a;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/a/d/a;->b:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lb/a/a/d/a;->i:Lb/a/a/c/k;

    invoke-interface {v1, v0}, Lb/a/a/c/k;->c(Landroid/media/MediaFormat;)V

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lb/a/a/d/a;->f:Lb/a/a/d/a$b;

    const-string v2, "AudioLocalSource"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public P()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lb/a/a/d/a;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb/a/a/d/a;->g:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lb/a/a/d/a;->c:Lb/a/a/c/c;

    .line 4
    iput-object v0, p0, Lb/a/a/d/a;->i:Lb/a/a/c/k;

    .line 5
    iget-object v1, p0, Lb/a/a/d/a;->x:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lb/a/a/d/a;->a:Landroid/media/MediaExtractor;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    .line 8
    iput-object v0, p0, Lb/a/a/d/a;->a:Landroid/media/MediaExtractor;

    .line 9
    :cond_1
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
