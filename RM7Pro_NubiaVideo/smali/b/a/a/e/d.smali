.class public Lb/a/a/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/c/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/e/d$b;,
        Lb/a/a/e/d$c;
    }
.end annotation


# instance fields
.field private A:Lb/a/a/d/b;

.field private B:Lb/a/a/a/a;

.field private C:Lb/a/c/a/c;

.field private D:Ljava/lang/Object;

.field private E:Ljava/lang/Object;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Thread;

.field private d:Ljava/lang/Thread;

.field private e:Lb/a/a/c/l;

.field private f:J

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:J

.field private n:J

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:F

.field private v:Ljava/lang/String;

.field private w:Landroid/view/Surface;

.field private x:Lb/a/a/b/d;

.field private y:Lb/a/a/b/d;

.field private z:Lb/a/a/d/a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lb/a/a/c/l;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MediaCodecPlayerImpl"

    .line 2
    iput-object v0, p0, Lb/a/a/e/d;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lb/a/a/e/d;->c:Ljava/lang/Thread;

    .line 4
    iput-object v0, p0, Lb/a/a/e/d;->d:Ljava/lang/Thread;

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lb/a/a/e/d;->f:J

    const/4 v3, 0x0

    .line 6
    iput v3, p0, Lb/a/a/e/d;->g:I

    .line 7
    iput v3, p0, Lb/a/a/e/d;->h:I

    .line 8
    iput v3, p0, Lb/a/a/e/d;->i:I

    .line 9
    iput v3, p0, Lb/a/a/e/d;->k:I

    const/4 v4, -0x1

    .line 10
    iput v4, p0, Lb/a/a/e/d;->l:I

    .line 11
    iput-wide v1, p0, Lb/a/a/e/d;->m:J

    .line 12
    iput-wide v1, p0, Lb/a/a/e/d;->n:J

    .line 13
    iput-boolean v3, p0, Lb/a/a/e/d;->o:Z

    .line 14
    iput-boolean v3, p0, Lb/a/a/e/d;->p:Z

    .line 15
    iput-boolean v3, p0, Lb/a/a/e/d;->q:Z

    .line 16
    iput-boolean v3, p0, Lb/a/a/e/d;->r:Z

    .line 17
    iput-boolean v3, p0, Lb/a/a/e/d;->s:Z

    .line 18
    iput-boolean v3, p0, Lb/a/a/e/d;->t:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    iput v1, p0, Lb/a/a/e/d;->u:F

    .line 20
    iput-object v0, p0, Lb/a/a/e/d;->v:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lb/a/a/e/d;->x:Lb/a/a/b/d;

    .line 22
    iput-object v0, p0, Lb/a/a/e/d;->y:Lb/a/a/b/d;

    .line 23
    iput-object v0, p0, Lb/a/a/e/d;->z:Lb/a/a/d/a;

    .line 24
    iput-object v0, p0, Lb/a/a/e/d;->A:Lb/a/a/d/b;

    .line 25
    iput-object v0, p0, Lb/a/a/e/d;->B:Lb/a/a/a/a;

    .line 26
    iput-object v0, p0, Lb/a/a/e/d;->C:Lb/a/c/a/c;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/a/a/e/d;->D:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/a/a/e/d;->E:Ljava/lang/Object;

    .line 29
    iput-object p2, p0, Lb/a/a/e/d;->e:Lb/a/a/c/l;

    .line 30
    iput-object p1, p0, Lb/a/a/e/d;->b:Ljava/lang/Object;

    return-void
.end method

.method private A(IIIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e/d;->B:Lb/a/a/a/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p5}, Lb/a/a/a/a;->A(I)V

    .line 3
    iget-object p5, p0, Lb/a/a/e/d;->B:Lb/a/a/a/a;

    invoke-virtual {p5, p1}, Lb/a/a/a/a;->y(I)V

    .line 4
    iget-object p1, p0, Lb/a/a/e/d;->B:Lb/a/a/a/a;

    invoke-virtual {p1, p2}, Lb/a/a/a/a;->v(I)V

    .line 5
    iget-object p1, p0, Lb/a/a/e/d;->B:Lb/a/a/a/a;

    invoke-virtual {p1, p4}, Lb/a/a/a/a;->w(I)V

    .line 6
    iget-object p1, p0, Lb/a/a/e/d;->B:Lb/a/a/a/a;

    invoke-virtual {p1, p3}, Lb/a/a/a/a;->x(I)V

    .line 7
    iget-object p1, p0, Lb/a/a/e/d;->B:Lb/a/a/a/a;

    invoke-virtual {p1}, Lb/a/a/a/a;->l()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lb/a/a/e/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/e/d;->E:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic g(Lb/a/a/e/d;)Lb/a/a/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/e/d;->x:Lb/a/a/b/d;

    return-object p0
.end method

.method static synthetic j(Lb/a/a/e/d;)Lb/a/a/d/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/e/d;->A:Lb/a/a/d/b;

    return-object p0
.end method

.method static synthetic k(Lb/a/a/e/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/a/a/e/d;->p:Z

    return p0
.end method

.method static synthetic l(Lb/a/a/e/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/a/e/d;->p:Z

    return p1
.end method

.method static synthetic m(Lb/a/a/e/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/a/a/e/d;->q:Z

    return p0
.end method

.method static synthetic n(Lb/a/a/e/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/a/e/d;->q:Z

    return p1
.end method

.method static synthetic o(Lb/a/a/e/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/a/e/d;->r:Z

    return p1
.end method

.method static synthetic p(Lb/a/a/e/d;)Lb/a/a/c/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/e/d;->e:Lb/a/a/c/l;

    return-object p0
.end method

.method static synthetic q(Lb/a/a/e/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/e/d;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic r(Lb/a/a/e/d;)Lb/a/a/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/e/d;->y:Lb/a/a/b/d;

    return-object p0
.end method

.method static synthetic s(Lb/a/a/e/d;)Lb/a/a/d/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/e/d;->z:Lb/a/a/d/a;

    return-object p0
.end method

.method private t(I)I
    .locals 1

    const/16 v0, 0xc

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    const/16 v0, 0x18fc

    goto :goto_0

    :cond_0
    const/16 v0, 0x3fc

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x4fc

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xfc

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xec

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xcc

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x1c

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x4

    :goto_0
    :pswitch_7
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/a/e/d;->t:Z

    return v0
.end method

.method public C()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/e/d;->e:Lb/a/a/c/l;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lb/a/a/c/l;->c(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lb/a/a/e/d;->N(Z)V

    .line 3
    iget-object v1, p0, Lb/a/a/e/d;->B:Lb/a/a/a/a;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Lb/a/a/a/a;->I(Z)V

    :cond_0
    return-void
.end method

.method public D()V
    .locals 6

    .line 1
    iget-object v0, p0, Lb/a/a/e/d;->e:Lb/a/a/c/l;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lb/a/a/c/l;->c(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iget-object v2, p0, Lb/a/a/e/d;->z:Lb/a/a/d/a;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lb/a/a/d/a;->A()Landroid/media/MediaFormat;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Lb/a/a/b/d;

    iget-object v4, p0, Lb/a/a/e/d;->z:Lb/a/a/d/a;

    invoke-virtual {v4}, Lb/a/a/d/a;->A()Landroid/media/MediaFormat;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lb/a/a/b/d;-><init>(Landroid/media/MediaFormat;Landroid/view/Surface;)V

    iput-object v2, p0, Lb/a/a/e/d;->y:Lb/a/a/b/d;

    .line 4
    invoke-virtual {v2, v0}, Lb/a/a/b/d;->w(I)V

    .line 5
    iget-object v2, p0, Lb/a/a/e/d;->y:Lb/a/a/b/d;

    invoke-virtual {v2, v1}, Lb/a/a/b/d;->k(Z)V

    .line 6
    iget-object v2, p0, Lb/a/a/e/d;->y:Lb/a/a/b/d;

    invoke-virtual {v2, p0}, Lb/a/a/b/d;->x(Lb/a/a/c/k;)V

    .line 7
    iget-object v2, p0, Lb/a/a/e/d;->z:Lb/a/a/d/a;

    invoke-virtual {v2, v1}, Lb/a/a/d/a;->B(Z)V

    .line 8
    iget-object v2, p0, Lb/a/a/e/d;->z:Lb/a/a/d/a;

    iget-object v4, p0, Lb/a/a/e/d;->y:Lb/a/a/b/d;

    invoke-virtual {v2, v4, v3}, Lb/a/a/d/a;->M(Lb/a/a/c/c;Lb/a/a/c/k;)V

    .line 9
    :cond_0
    iget-object v2, p0, Lb/a/a/e/d;->A:Lb/a/a/d/b;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lb/a/a/d/c;->a()Landroid/media/MediaFormat;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10
    new-instance v2, Lb/a/a/b/d;

    iget-object v4, p0, Lb/a/a/e/d;->A:Lb/a/a/d/b;

    invoke-virtual {v4}, Lb/a/a/d/c;->a()Landroid/media/MediaFormat;

    move-result-object v4

    iget-object v5, p0, Lb/a/a/e/d;->w:Landroid/view/Surface;

    invoke-direct {v2, v4, v5}, Lb/a/a/b/d;-><init>(Landroid/media/MediaFormat;Landroid/view/Surface;)V

    iput-object v2, p0, Lb/a/a/e/d;->x:Lb/a/a/b/d;

    .line 11
    iget v4, p0, Lb/a/a/e/d;->u:F

    invoke-virtual {v2, v4}, Lb/a/a/b/d;->y(F)V

    .line 12
    iget-object v2, p0, Lb/a/a/e/d;->x:Lb/a/a/b/d;

    invoke-virtual {v2, v1}, Lb/a/a/b/d;->k(Z)V

    .line 13
    iget-object v2, p0, Lb/a/a/e/d;->x:Lb/a/a/b/d;

    iget-boolean v4, p0, Lb/a/a/e/d;->s:Z

    invoke-virtual {v2, v4}, Lb/a/a/b/d;->l(Z)V

    .line 14
    iget-object v2, p0, Lb/a/a/e/d;->x:Lb/a/a/b/d;

    invoke-virtual {v2, p0}, Lb/a/a/b/d;->x(Lb/a/a/c/k;)V

    .line 15
    iget-object v2, p0, Lb/a/a/e/d;->x:Lb/a/a/b/d;

    invoke-virtual {v2, v1}, Lb/a/a/b/d;->v(Z)V

    .line 16
    iget-object v2, p0, Lb/a/a/e/d;->A:Lb/a/a/d/b;

    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {v2, v1}, Lb/a/a/d/b;->m(Z)V

    .line 18
    iget-object v2, p0, Lb/a/a/e/d;->A:Lb/a/a/d/b;

    iget-object v4, p0, Lb/a/a/e/d;->x:Lb/a/a/b/d;

    invoke-virtual {v2, v4, v3, v3}, Lb/a/a/d/c;->b(Lb/a/a/c/c;Lb/a/a/c/k;Lb/a/a/c/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 19
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 20
    :cond_1
    :goto_0
    iget-object v2, p0, Lb/a/a/e/d;->e:Lb/a/a/c/l;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lb/a/a/c/l;->c(I)V

    .line 21
    iget-object v2, p0, Lb/a/a/e/d;->b:Ljava/lang/Object;

    invoke-static {v2, v1, v0, v0}, Lb/a/a/e/c;->q(Ljava/lang/Object;III)V

    return-void
.end method

.method public E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/e/d;->e:Lb/a/a/c/l;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lb/a/a/c/l;->c(I)V

    .line 2
    iget-object v0, p0, Lb/a/a/e/d;->E:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lb/a/a/e/d;->r:Z

    .line 4
    iput-boolean v1, p0, Lb/a/a/e/d;->q:Z

    .line 5
    iput-boolean v1, p0, Lb/a/a/e/d;->p:Z

    .line 6
    iget-object v1, p0, Lb/a/a/e/d;->z:Lb/a/a/d/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lb/a/a/d/a;->P()V

    .line 8
    iput-object v2, p0, Lb/a/a/e/d;->z:Lb/a/a/d/a;

    .line 9
    :cond_0
    iget-object v1, p0, Lb/a/a/e/d;->A:Lb/a/a/d/b;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Lb/a/a/d/c;->e()V

    .line 11
    iput-object v2, p0, Lb/a/a/e/d;->A:Lb/a/a/d/b;

    .line 12
    :cond_1
    iget-object v1, p0, Lb/a/a/e/d;->y:Lb/a/a/b/d;

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v1}, Lb/a/a/b/d;->s()V

    .line 14
    iput-object v2, p0, Lb/a/a/e/d;->y:Lb/a/a/b/d;

    .line 15
    :cond_2
    iget-object v1, p0, Lb/a/a/e/d;->x:Lb/a/a/b/d;

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {v1}, Lb/a/a/b/d;->s()V

    .line 17
    iput-object v2, p0, Lb/a/a/e/d;->x:Lb/a/a/b/d;

    .line 18
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public F()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/e/d;->e:Lb/a/a/c/l;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lb/a/a/c/l;->c(I)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lb/a/a/e/d;->N(Z)V

    .line 3
    iget-object v1, p0, Lb/a/a/e/d;->B:Lb/a/a/a/a;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Lb/a/a/a/a;->I(Z)V

    :cond_0
    return-void
.end method

.method public G(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lb/a/a/e/d;->e:Lb/a/a/c/l;

    invoke-virtual {v0}, Lb/a/a/c/l;->a()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lb/a/a/e/d;->e:Lb/a/a/c/l;

    .line 3
    invoke-virtual {v0}, Lb/a/a/c/l;->a()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lb/a/a/e/d;->e:Lb/a/a/c/l;

    .line 4
    invoke-virtual {v0}, Lb/a/a/c/l;->a()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_1

    .line 5
    iget-object v0, p0, Lb/a/a/e/d;->e:Lb/a/a/c/l;

    invoke-virtual {v0, v1}, Lb/a/a/c/l;->c(I)V

    :cond_1
    const/16 v0, 0x12c

    if-lt p1, v0, :cond_2

    add-int/lit16 v1, p1, 0x12c

    int-to-long v1, v1

    .line 6
    iget-wide v3, p0, Lb/a/a/e/d;->n:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    sub-int/2addr p1, v0

    .line 7
    iput p1, p0, Lb/a/a/e/d;->l:I

    goto :goto_0

    .line 8
    :cond_2
    iput p1, p0, Lb/a/a/e/d;->l:I

    .line 9
    :goto_0
    iget-boolean p1, p0, Lb/a/a/e/d;->r:Z

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lb/a/a/e/d;->x:Lb/a/a/b/d;

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1}, Lb/a/a/b/d;->j()V

    .line 12
    :cond_3
    iget-object p1, p0, Lb/a/a/e/d;->y:Lb/a/a/b/d;

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p1}, Lb/a/a/b/d;->j()V

    .line 14
    :cond_4
    iget-object p1, p0, Lb/a/a/e/d;->x:Lb/a/a/b/d;

    if-eqz p1, :cond_5

    .line 15
    iget v0, p0, Lb/a/a/e/d;->l:I

    invoke-virtual {p1, v0}, Lb/a/a/b/d;->u(I)V

    .line 16
    :cond_5
    iget-object p1, p0, Lb/a/a/e/d;->y:Lb/a/a/b/d;

    if-eqz p1, :cond_6

    .line 17
    iget v0, p0, Lb/a/a/e/d;->l:I

    invoke-virtual {p1, v0}, Lb/a/a/b/d;->u(I)V

    .line 18
    :cond_6
    iget-object p1, p0, Lb/a/a/e/d;->A:Lb/a/a/d/b;

    if-eqz p1, :cond_7

    .line 19
    iget v0, p0, Lb/a/a/e/d;->l:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lb/a/a/d/b;->p(J)V

    .line 20
    :cond_7
    iget-object p1, p0, Lb/a/a/e/d;->z:Lb/a/a/d/a;

    if-eqz p1, :cond_8

    .line 21
    iget v0, p0, Lb/a/a/e/d;->l:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lb/a/a/d/a;->H(J)V

    :cond_8
    :goto_1
    return-void
.end method

.method public H(Ljava/lang/String;)I
    .locals 13

    const-string v0, ","

    .line 1
    iput-object p1, p0, Lb/a/a/e/d;->v:Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lb/a/a/e/d;->t:Z

    .line 3
    iput-boolean v1, p0, Lb/a/a/e/d;->r:Z

    .line 4
    iput-boolean v1, p0, Lb/a/a/e/d;->p:Z

    .line 5
    iput-boolean v1, p0, Lb/a/a/e/d;->q:Z

    .line 6
    :try_start_0
    new-instance v2, Lb/a/a/d/b;

    invoke-direct {v2, p1}, Lb/a/a/d/b;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lb/a/a/e/d;->A:Lb/a/a/d/b;

    .line 7
    invoke-virtual {v2}, Lb/a/a/d/c;->a()Landroid/media/MediaFormat;

    move-result-object p1

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Lb/a/a/e/d;->e:Lb/a/a/c/l;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lb/a/a/c/l;->c(I)V

    .line 9
    iget-object p1, p0, Lb/a/a/e/d;->b:Ljava/lang/Object;

    const/16 v0, 0x64

    invoke-static {p1, v0, v1, v1}, Lb/a/a/e/c;->q(Ljava/lang/Object;III)V

    const/4 p1, -0x1

    return p1

    :cond_0
    const-string v2, "durationUs"

    .line 10
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lb/a/a/e/d;->f:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "rotation-degrees"

    .line 11
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lb/a/a/e/d;->k:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 12
    :catch_0
    :try_start_2
    iput v1, p0, Lb/a/a/e/d;->k:I

    :goto_0
    const-string v2, "frame-rate"

    .line 13
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lb/a/a/e/d;->j:I

    const-string v2, "width"

    .line 14
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lb/a/a/e/d;->h:I

    const-string v2, "height"

    .line 15
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lb/a/a/e/d;->i:I

    .line 16
    iget-wide v2, p0, Lb/a/a/e/d;->n:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 17
    iget-wide v2, p0, Lb/a/a/e/d;->f:J

    iput-wide v2, p0, Lb/a/a/e/d;->n:J

    .line 18
    :cond_1
    iget-object v6, p0, Lb/a/a/e/d;->A:Lb/a/a/d/b;

    iget-wide v7, p0, Lb/a/a/e/d;->m:J

    iget-wide v9, p0, Lb/a/a/e/d;->n:J

    iget-wide v11, p0, Lb/a/a/e/d;->f:J

    invoke-virtual/range {v6 .. v12}, Lb/a/a/d/c;->d(JJJ)V

    .line 19
    iget-object p1, p0, Lb/a/a/e/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoDuration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lb/a/a/e/d;->f:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lb/a/a/e/d;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lb/a/a/e/d;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lb/a/a/e/d;->s:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance p1, Lb/a/a/d/a;

    iget-object v0, p0, Lb/a/a/e/d;->v:Ljava/lang/String;

    invoke-direct {p1, v0, v4, v5}, Lb/a/a/d/a;-><init>(Ljava/lang/String;J)V

    iput-object p1, p0, Lb/a/a/e/d;->z:Lb/a/a/d/a;

    .line 21
    invoke-virtual {p1}, Lb/a/a/d/a;->A()Landroid/media/MediaFormat;

    move-result-object p1

    .line 22
    iget-object v0, p0, Lb/a/a/e/d;->z:Lb/a/a/d/a;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget v3, p0, Lb/a/a/e/d;->u:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 23
    invoke-virtual {v0, v2}, Lb/a/a/d/a;->C(Z)V

    .line 24
    iget-object v0, p0, Lb/a/a/e/d;->z:Lb/a/a/d/a;

    invoke-virtual {v0, v1}, Lb/a/a/d/a;->K(I)V

    .line 25
    iget-object v2, p0, Lb/a/a/e/d;->z:Lb/a/a/d/a;

    iget-wide v3, p0, Lb/a/a/e/d;->m:J

    iget-wide v5, p0, Lb/a/a/e/d;->n:J

    iget-wide v7, p0, Lb/a/a/e/d;->f:J

    invoke-virtual/range {v2 .. v8}, Lb/a/a/d/a;->L(JJJ)V

    const-string v0, "channel-count"

    .line 26
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 27
    invoke-direct {p0, v6}, Lb/a/a/e/d;->t(I)I

    move-result v4

    const-string v0, "sample-rate"

    .line 28
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    const/4 p1, 0x2

    .line 29
    invoke-static {v3, v4, p1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 30
    iget-object p1, p0, Lb/a/a/e/d;->B:Lb/a/a/a/a;

    if-eqz p1, :cond_3

    const/4 v7, 0x1

    move-object v2, p0

    .line 31
    invoke-direct/range {v2 .. v7}, Lb/a/a/e/d;->A(IIIII)V

    goto :goto_1

    .line 32
    :cond_2
    iput-boolean v2, p0, Lb/a/a/e/d;->t:Z

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lb/a/a/e/d;->z:Lb/a/a/d/a;

    .line 34
    iget-object p1, p0, Lb/a/a/e/d;->B:Lb/a/a/a/a;

    if-eqz p1, :cond_3

    .line 35
    invoke-virtual {p1, v2}, Lb/a/a/a/a;->C(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_1
    return v1
.end method

.method public I(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/a/e/d;->s:Z

    return-void
.end method

.method public J(I)V
    .locals 3

    int-to-long v0, p1

    .line 1
    iput-wide v0, p0, Lb/a/a/e/d;->n:J

    .line 2
    iget-object v2, p0, Lb/a/a/e/d;->z:Lb/a/a/d/a;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2, v0, v1}, Lb/a/a/d/a;->I(J)V

    .line 4
    :cond_0
    iget-object v2, p0, Lb/a/a/e/d;->A:Lb/a/a/d/b;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2, v0, v1}, Lb/a/a/d/b;->q(J)V

    .line 6
    :cond_1
    iget-object v0, p0, Lb/a/a/e/d;->x:Lb/a/a/b/d;

    if-eqz v0, :cond_2

    iget v1, p0, Lb/a/a/e/d;->l:I

    if-ge p1, v1, :cond_2

    .line 7
    invoke-virtual {v0, p1}, Lb/a/a/b/d;->z(I)V

    :cond_2
    return-void
.end method

.method public K(Lb/a/c/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/d;->C:Lb/a/c/a/c;

    return-void
.end method

.method public L(Lb/a/a/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/d;->B:Lb/a/a/a/a;

    return-void
.end method

.method public M(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/e/d;->B:Lb/a/a/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lb/a/a/a/a;->F(II)V

    return-void
.end method

.method public declared-synchronized N(Z)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lb/a/a/e/d;->o:Z

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lb/a/a/e/d;->x:Lb/a/a/b/d;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lb/a/a/b/d;->t()V

    .line 4
    :cond_0
    iget-object p1, p0, Lb/a/a/e/d;->y:Lb/a/a/b/d;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lb/a/a/b/d;->t()V

    .line 6
    :cond_1
    iget-object p1, p0, Lb/a/a/e/d;->A:Lb/a/a/d/b;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lb/a/a/d/b;->o()V

    .line 8
    :cond_2
    iget-object p1, p0, Lb/a/a/e/d;->z:Lb/a/a/d/a;

    if-eqz p1, :cond_7

    .line 9
    invoke-virtual {p1}, Lb/a/a/d/a;->G()V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lb/a/a/e/d;->x:Lb/a/a/b/d;

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p1}, Lb/a/a/b/d;->p()V

    .line 12
    :cond_4
    iget-object p1, p0, Lb/a/a/e/d;->y:Lb/a/a/b/d;

    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p1}, Lb/a/a/b/d;->p()V

    .line 14
    :cond_5
    iget-object p1, p0, Lb/a/a/e/d;->A:Lb/a/a/d/b;

    if-eqz p1, :cond_6

    .line 15
    invoke-virtual {p1}, Lb/a/a/d/b;->n()V

    .line 16
    :cond_6
    iget-object p1, p0, Lb/a/a/e/d;->z:Lb/a/a/d/a;

    if-eqz p1, :cond_7

    .line 17
    invoke-virtual {p1}, Lb/a/a/d/a;->F()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_7
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public O(II)V
    .locals 3

    int-to-long v0, p1

    .line 1
    iput-wide v0, p0, Lb/a/a/e/d;->m:J

    int-to-long p1, p2

    .line 2
    iput-wide p1, p0, Lb/a/a/e/d;->n:J

    .line 3
    iget-object v2, p0, Lb/a/a/e/d;->z:Lb/a/a/d/a;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, v0, v1}, Lb/a/a/d/a;->J(J)V

    .line 5
    iget-object v2, p0, Lb/a/a/e/d;->z:Lb/a/a/d/a;

    invoke-virtual {v2, p1, p2}, Lb/a/a/d/a;->I(J)V

    .line 6
    :cond_0
    iget-object v2, p0, Lb/a/a/e/d;->A:Lb/a/a/d/b;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2, v0, v1}, Lb/a/a/d/b;->r(J)V

    .line 8
    iget-object v0, p0, Lb/a/a/e/d;->A:Lb/a/a/d/b;

    invoke-virtual {v0, p1, p2}, Lb/a/a/d/b;->q(J)V

    :cond_1
    return-void
.end method

.method public P(I)V
    .locals 3

    int-to-long v0, p1

    .line 1
    iput-wide v0, p0, Lb/a/a/e/d;->m:J

    .line 2
    iget-object v2, p0, Lb/a/a/e/d;->z:Lb/a/a/d/a;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2, v0, v1}, Lb/a/a/d/a;->J(J)V

    .line 4
    :cond_0
    iget-object v2, p0, Lb/a/a/e/d;->A:Lb/a/a/d/b;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2, v0, v1}, Lb/a/a/d/b;->r(J)V

    .line 6
    :cond_1
    iget-object v0, p0, Lb/a/a/e/d;->x:Lb/a/a/b/d;

    if-eqz v0, :cond_2

    iget v1, p0, Lb/a/a/e/d;->l:I

    if-ge p1, v1, :cond_2

    .line 7
    invoke-virtual {v0, p1}, Lb/a/a/b/d;->z(I)V

    :cond_2
    return-void
.end method

.method public Q(Landroid/view/Surface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/d;->w:Landroid/view/Surface;

    return-void
.end method

.method public R(F)V
    .locals 1

    .line 1
    iput p1, p0, Lb/a/a/e/d;->u:F

    .line 2
    iget-object v0, p0, Lb/a/a/e/d;->x:Lb/a/a/b/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lb/a/a/b/d;->y(F)V

    :cond_0
    return-void
.end method

.method public S()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lb/a/a/e/d;->l:I

    .line 2
    iget-object v0, p0, Lb/a/a/e/d;->e:Lb/a/a/c/l;

    invoke-virtual {v0}, Lb/a/a/c/l;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Lb/a/a/e/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/a/a/e/d$b;-><init>(Lb/a/a/e/d;Lb/a/a/e/d$a;)V

    iput-object v0, p0, Lb/a/a/e/d;->d:Ljava/lang/Thread;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5
    new-instance v0, Lb/a/a/e/d$c;

    invoke-direct {v0, p0, v1}, Lb/a/a/e/d$c;-><init>(Lb/a/a/e/d;Lb/a/a/e/d$a;)V

    iput-object v0, p0, Lb/a/a/e/d;->c:Ljava/lang/Thread;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lb/a/a/e/d;->o:Z

    :cond_0
    return-void
.end method

.method public T()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/e/d;->e:Lb/a/a/c/l;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lb/a/a/c/l;->c(I)V

    return-void
.end method

.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/e/d;->b:Ljava/lang/Object;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lb/a/a/e/c;->q(Ljava/lang/Object;III)V

    .line 2
    iget-object v0, p0, Lb/a/a/e/d;->a:Ljava/lang/String;

    const-string v1, " encoder error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lb/a/a/e/d;->o:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lb/a/a/e/d;->e:Lb/a/a/c/l;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lb/a/a/c/l;->c(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lb/a/a/e/d;->e:Lb/a/a/c/l;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lb/a/a/c/l;->c(I)V

    :goto_0
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
    iget-object v0, p0, Lb/a/a/e/d;->B:Lb/a/a/a/a;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lb/a/a/e/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio complete = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lb/a/a/e/d;->B:Lb/a/a/a/a;

    invoke-virtual {v0, p1}, Lb/a/a/a/a;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lb/a/a/e/d;->e:Lb/a/a/c/l;

    invoke-virtual {p1}, Lb/a/a/c/l;->a()I

    move-result p1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lb/a/a/e/d;->e:Lb/a/a/c/l;

    invoke-virtual {p1, v0}, Lb/a/a/c/l;->c(I)V

    .line 7
    iget-object p1, p0, Lb/a/a/e/d;->b:Ljava/lang/Object;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lb/a/a/e/c;->q(Ljava/lang/Object;III)V

    :cond_1
    :goto_0
    return-void
.end method

.method public h(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/e/d;->D:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "audio/"

    .line 2
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lb/a/a/e/d;->B:Lb/a/a/a/a;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, p1, p2, p3}, Lb/a/a/a/a;->r(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string p1, "video/"

    .line 5
    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-wide p1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    long-to-int p1, p1

    div-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lb/a/a/e/d;->g:I

    .line 7
    iget-object p2, p0, Lb/a/a/e/d;->C:Lb/a/c/a/c;

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p2, p1}, Lb/a/c/a/c;->h(I)V

    .line 9
    :cond_1
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
    .locals 0

    const-string p2, "audio/"

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lb/a/a/e/d;->B:Lb/a/a/a/a;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lb/a/a/a/a;->b(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/e/d;->g:I

    return v0
.end method

.method public v()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/e/d;->k:I

    return v0
.end method

.method public w()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lb/a/a/e/d;->f:J

    long-to-int v0, v0

    return v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/e/d;->j:I

    return v0
.end method

.method public y()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/e/d;->i:I

    return v0
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/e/d;->h:I

    return v0
.end method
