.class public Lb/a/c/a/e;
.super Lb/a/c/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/c/a/e$h;
    }
.end annotation


# static fields
.field private static E:Ljava/lang/String; = "MediaEntryManager"


# instance fields
.field private A:Z

.field private B:Lb/a/c/a/d;

.field private C:Lb/a/c/a/a;

.field private D:F

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lb/a/c/a/c;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lb/a/c/a/e;->z:Z

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lb/a/c/a/e;->A:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    .line 5
    iput-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    iput v1, p0, Lb/a/c/a/e;->D:F

    .line 7
    new-instance v1, Lb/a/c/a/e$h;

    invoke-direct {v1, p0, v0}, Lb/a/c/a/e$h;-><init>(Lb/a/c/a/e;Lb/a/c/a/e$a;)V

    iput-object v1, p0, Lb/a/c/a/c;->o:Landroid/os/Handler;

    .line 8
    new-instance v0, Lb/a/c/a/a;

    invoke-direct {v0}, Lb/a/c/a/a;-><init>()V

    iput-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    .line 9
    new-instance v0, Lb/a/c/a/d;

    invoke-direct {v0}, Lb/a/c/a/d;-><init>()V

    iput-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    .line 10
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    iget-object v1, p0, Lb/a/c/a/c;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lb/a/c/a/b;->m(Landroid/os/Handler;)V

    .line 11
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    iget-object v1, p0, Lb/a/c/a/c;->k:Lb/a/a/e/a;

    invoke-virtual {v0, v1}, Lb/a/c/a/a;->D(Lb/a/a/e/a;)V

    .line 12
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    iget-object v1, p0, Lb/a/c/a/c;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lb/a/c/a/b;->m(Landroid/os/Handler;)V

    .line 13
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    iget-object v1, p0, Lb/a/c/a/c;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/c/a/d;->F(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    iget-object v1, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    invoke-virtual {v0, v1}, Lb/a/c/a/d;->H(Lb/a/a/e/h;)V

    .line 15
    iget-object v0, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    invoke-virtual {v0, p0}, Lb/a/a/e/h;->x(Lb/a/c/a/c;)V

    .line 16
    iput-boolean p1, p0, Lb/a/c/a/c;->i:Z

    .line 17
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    if-eqz v0, :cond_0

    .line 18
    iput-boolean p1, p0, Lb/a/c/a/c;->h:Z

    .line 19
    iget-object v0, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    invoke-virtual {v0, p1}, Lb/a/a/e/h;->v(Z)V

    :cond_0
    return-void
.end method

.method private D()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lb/a/c/a/c;->i:Z

    .line 2
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lb/a/c/a/e$f;

    invoke-direct {v1, p0}, Lb/a/c/a/e$f;-><init>(Lb/a/c/a/e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5
    :cond_0
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lb/a/c/a/e$g;

    invoke-direct {v1, p0}, Lb/a/c/a/e$g;-><init>(Lb/a/c/a/e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private i0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    invoke-virtual {v0}, Lb/a/a/e/h;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/a/c/a/b;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    invoke-virtual {v0}, Lb/a/c/a/a;->w()V

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/c/a/c;->n:Lb/a/d/b;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lb/a/d/b;->A(Z)V

    .line 6
    :cond_1
    iget-object v0, p0, Lb/a/c/a/c;->m:Lcn/nubia/modules/videoRender/b;

    if-eqz v0, :cond_7

    .line 7
    invoke-interface {v0}, Lcn/nubia/modules/videoRender/b;->c()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lb/a/c/a/c;->m:Lcn/nubia/modules/videoRender/b;

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Lb/a/c/a/d;->w()V

    .line 11
    :cond_3
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0}, Lb/a/c/a/a;->w()V

    :cond_4
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lb/a/c/a/e;->A:Z

    .line 14
    iget-object v1, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {v1, v0}, Lb/a/c/a/b;->p(Z)V

    .line 16
    :cond_5
    iget-object v1, p0, Lb/a/c/a/c;->l:Lb/a/a/a/a;

    if-eqz v1, :cond_6

    .line 17
    invoke-virtual {v1}, Lb/a/a/a/a;->h()V

    .line 18
    :cond_6
    iget-object v1, p0, Lb/a/c/a/c;->t:Lb/a/a/e/g;

    if-eqz v1, :cond_7

    iget-boolean v2, p0, Lb/a/c/a/c;->h:Z

    if-nez v2, :cond_7

    const/4 v2, 0x5

    .line 19
    invoke-interface {v1, v2, v0, v0}, Lb/a/a/e/g;->d(III)V

    .line 20
    :cond_7
    :goto_0
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    if-eqz v0, :cond_8

    .line 21
    invoke-virtual {v0}, Lb/a/c/a/b;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/c/a/d;->B(I)V

    .line 22
    :cond_8
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    if-eqz v0, :cond_9

    .line 23
    iget-object v1, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    invoke-virtual {v1}, Lb/a/c/a/b;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/c/a/a;->B(I)V

    .line 24
    :cond_9
    iget-object v0, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lb/a/a/e/h;->i()Z

    move-result v0

    if-nez v0, :cond_a

    .line 25
    iget-object v0, p0, Lb/a/c/a/c;->l:Lb/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a;->u()V

    :cond_a
    return-void
.end method

.method static synthetic r(Lb/a/c/a/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/a/c/a/e;->z:Z

    return p0
.end method

.method static synthetic s(Lb/a/c/a/e;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/c/a/e;->z:Z

    return p1
.end method

.method static synthetic t(Lb/a/c/a/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/a/c/a/e;->A:Z

    return p0
.end method

.method static synthetic u(Lb/a/c/a/e;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/c/a/e;->A:Z

    return p1
.end method

.method static synthetic v(Lb/a/c/a/e;)Lb/a/c/a/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    return-object p0
.end method

.method static synthetic w(Lb/a/c/a/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/a/c/a/e;->i0()V

    return-void
.end method

.method static synthetic x(Lb/a/c/a/e;)Lb/a/c/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    return-object p0
.end method

.method static synthetic y()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lb/a/c/a/e;->E:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic z(Lb/a/c/a/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/a/c/a/e;->D()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    iget v0, p0, Lb/a/c/a/c;->d:I

    invoke-virtual {p0, v0}, Lb/a/c/a/e;->B(I)V

    return-void
.end method

.method public B(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lb/a/c/a/c;->l:Lb/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a;->g()V

    .line 3
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    invoke-virtual {v0}, Lb/a/c/a/a;->z()V

    .line 4
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    iget-boolean v1, p0, Lb/a/c/a/e;->A:Z

    invoke-virtual {v0, v1}, Lb/a/c/a/b;->p(Z)V

    .line 5
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    invoke-virtual {v0}, Lb/a/c/a/b;->e()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 6
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    invoke-virtual {v0, p1}, Lb/a/c/a/a;->E(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lb/a/c/a/a;->E(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public C(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    invoke-virtual {v0}, Lb/a/a/e/h;->g()I

    move-result v0

    iput v0, p0, Lb/a/c/a/c;->c:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 2
    iget-object v2, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    invoke-virtual {v2}, Lb/a/a/e/h;->h()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 3
    :cond_0
    iput v1, p0, Lb/a/c/a/c;->c:I

    .line 4
    :cond_1
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lb/a/c/a/c;->k:Lb/a/a/e/a;

    invoke-virtual {v0}, Lb/a/a/e/a;->e()I

    move-result v0

    iput v0, p0, Lb/a/c/a/c;->d:I

    if-ltz v0, :cond_2

    .line 6
    iget-object v2, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    invoke-virtual {v2}, Lb/a/a/e/h;->h()I

    move-result v2

    if-le v0, v2, :cond_3

    .line 7
    :cond_2
    iput v1, p0, Lb/a/c/a/c;->d:I

    :cond_3
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lb/a/c/a/c;->h:Z

    .line 9
    iget-object v2, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    invoke-virtual {v2, v0}, Lb/a/a/e/h;->v(Z)V

    .line 10
    iget-object v2, p0, Lb/a/c/a/c;->l:Lb/a/a/a/a;

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v2}, Lb/a/a/a/a;->h()V

    .line 12
    :cond_4
    new-instance v2, Lb/a/d/b;

    invoke-direct {v2}, Lb/a/d/b;-><init>()V

    iput-object v2, p0, Lb/a/c/a/c;->n:Lb/a/d/b;

    .line 13
    iget-object v2, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    invoke-virtual {v2}, Lb/a/a/e/h;->m()I

    move-result v2

    iput v2, p0, Lb/a/c/a/c;->e:I

    .line 14
    iget-object v2, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    invoke-virtual {v2}, Lb/a/a/e/h;->k()I

    move-result v2

    iput v2, p0, Lb/a/c/a/c;->f:I

    .line 15
    iget-object v3, p0, Lb/a/c/a/c;->n:Lb/a/d/b;

    iget v4, p0, Lb/a/c/a/c;->e:I

    invoke-virtual {v3, v4, v2}, Lb/a/d/b;->w(II)V

    .line 16
    iget-object v2, p0, Lb/a/c/a/c;->n:Lb/a/d/b;

    iget-object v3, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    invoke-virtual {v3}, Lb/a/a/e/h;->j()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lb/a/c/a/e;->D:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lb/a/d/b;->v(I)V

    .line 17
    iget v2, p0, Lb/a/c/a/c;->g:I

    if-lez v2, :cond_5

    .line 18
    iget-object v3, p0, Lb/a/c/a/c;->n:Lb/a/d/b;

    invoke-virtual {v3, v2}, Lb/a/d/b;->u(I)V

    .line 19
    :cond_5
    iget-object v2, p0, Lb/a/c/a/c;->n:Lb/a/d/b;

    invoke-virtual {v2}, Lb/a/d/b;->x()V

    .line 20
    iget-object v2, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    invoke-virtual {v2}, Lb/a/c/a/b;->f()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_6

    iget v2, p0, Lb/a/c/a/e;->D:F

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_6

    .line 21
    iget-object v4, p0, Lb/a/c/a/c;->n:Lb/a/d/b;

    invoke-virtual {v4, v2, v3}, Lb/a/d/b;->t(FF)V

    goto :goto_0

    .line 22
    :cond_6
    iget-object v2, p0, Lb/a/c/a/c;->n:Lb/a/d/b;

    iget v4, p0, Lb/a/c/a/e;->D:F

    invoke-virtual {v2, v4, v4}, Lb/a/d/b;->t(FF)V

    .line 23
    :goto_0
    iget-object v2, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    invoke-virtual {v2}, Lb/a/a/e/h;->o()Z

    move-result v2

    if-nez v2, :cond_7

    iget v2, p0, Lb/a/c/a/e;->D:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    invoke-virtual {v2}, Lb/a/c/a/b;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 24
    :cond_8
    iget-object v2, p0, Lb/a/c/a/c;->n:Lb/a/d/b;

    iget-object v3, p0, Lb/a/c/a/c;->l:Lb/a/a/a/a;

    invoke-virtual {v2, v3}, Lb/a/d/b;->o(Lb/a/a/a/a;)V

    .line 25
    iget-object v2, p0, Lb/a/c/a/c;->n:Lb/a/d/b;

    invoke-virtual {v2}, Lb/a/d/b;->m()V

    .line 26
    :cond_9
    invoke-virtual {p0}, Lb/a/c/a/e;->I()V

    .line 27
    iget-object v2, p0, Lb/a/c/a/c;->n:Lb/a/d/b;

    iget v3, p0, Lb/a/c/a/c;->b:I

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lb/a/d/b;->n(J)V

    .line 28
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "\'EDIT\'_yyyyMMdd_HHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/sql/Date;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    .line 30
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 31
    iget-object v3, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    invoke-virtual {v3}, Lb/a/c/a/b;->f()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mp4"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/a/c/a/c;->p:Ljava/lang/String;

    .line 34
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lb/a/c/a/c;->p:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    :try_start_0
    iget-object v1, p0, Lb/a/c/a/c;->n:Lb/a/d/b;

    iget-object v2, p0, Lb/a/c/a/c;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lb/a/d/b;->s(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 36
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 37
    :goto_1
    iget-object v1, p0, Lb/a/c/a/c;->n:Lb/a/d/b;

    new-instance v2, Lb/a/c/a/e$b;

    invoke-direct {v2, p0}, Lb/a/c/a/e$b;-><init>(Lb/a/c/a/e;)V

    invoke-virtual {v1, v2}, Lb/a/d/b;->q(Lb/a/a/c/g;)V

    .line 38
    iget-object v1, p0, Lb/a/c/a/c;->n:Lb/a/d/b;

    new-instance v2, Lb/a/c/a/e$c;

    invoke-direct {v2, p0, p1}, Lb/a/c/a/e$c;-><init>(Lb/a/c/a/e;Z)V

    invoke-virtual {v1, v2}, Lb/a/d/b;->p(Lb/a/a/c/f;)V

    .line 39
    iget-object p1, p0, Lb/a/c/a/c;->n:Lb/a/d/b;

    new-instance v1, Lb/a/c/a/e$d;

    invoke-direct {v1, p0}, Lb/a/c/a/e$d;-><init>(Lb/a/c/a/e;)V

    invoke-virtual {p1, v1}, Lb/a/d/b;->r(Lb/a/a/c/h;)V

    .line 40
    iget-object p1, p0, Lb/a/c/a/c;->n:Lb/a/d/b;

    invoke-virtual {p1}, Lb/a/d/b;->y()V

    .line 41
    iget-object p1, p0, Lb/a/c/a/c;->m:Lcn/nubia/modules/videoRender/b;

    if-eqz p1, :cond_a

    .line 42
    invoke-interface {p1}, Lcn/nubia/modules/videoRender/b;->c()V

    .line 43
    :cond_a
    iget-object p1, p0, Lb/a/c/a/c;->l:Lb/a/a/a/a;

    if-eqz p1, :cond_b

    .line 44
    invoke-virtual {p1}, Lb/a/a/a/a;->h()V

    .line 45
    iget-object p1, p0, Lb/a/c/a/c;->l:Lb/a/a/a/a;

    invoke-virtual {p1, v0}, Lb/a/a/a/a;->I(Z)V

    .line 46
    :cond_b
    new-instance p1, Lcn/nubia/modules/videoRender/c;

    iget v0, p0, Lb/a/c/a/c;->e:I

    iget v1, p0, Lb/a/c/a/c;->f:I

    iget-object v2, p0, Lb/a/c/a/c;->a:Landroid/content/Context;

    .line 47
    invoke-virtual {p0, v2}, Lb/a/c/a/c;->g(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lb/a/c/a/c;->a:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lb/a/c/a/c;->f(Landroid/content/Context;)I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lcn/nubia/modules/videoRender/c;-><init>(IIII)V

    iput-object p1, p0, Lb/a/c/a/c;->m:Lcn/nubia/modules/videoRender/b;

    .line 48
    check-cast p1, Lcn/nubia/modules/videoRender/c;

    invoke-virtual {p1, p0}, Lcn/nubia/modules/videoRender/c;->l(Lb/a/a/c/m;)V

    .line 49
    iget-object p1, p0, Lb/a/c/a/c;->m:Lcn/nubia/modules/videoRender/b;

    new-instance v0, Lb/a/c/a/e$e;

    invoke-direct {v0, p0}, Lb/a/c/a/e$e;-><init>(Lb/a/c/a/e;)V

    invoke-interface {p1, v0}, Lcn/nubia/modules/videoRender/b;->setSurfaceAvailableListener(Lcn/nubia/modules/videoRender/b$b;)V

    .line 50
    iget-object p1, p0, Lb/a/c/a/c;->m:Lcn/nubia/modules/videoRender/b;

    check-cast p1, Lcn/nubia/modules/videoRender/c;

    iget-object v0, p0, Lb/a/c/a/c;->n:Lb/a/d/b;

    invoke-virtual {v0}, Lb/a/d/b;->k()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/modules/videoRender/c;->k(Landroid/view/Surface;)V

    return-void
.end method

.method public E()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/c;->k:Lb/a/a/e/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/a;->e()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public F()Lb/a/c/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public G()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    invoke-virtual {v0}, Lb/a/c/a/b;->c()I

    move-result v0

    return v0
.end method

.method public H()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    invoke-virtual {v0}, Lb/a/c/a/b;->d()I

    move-result v0

    return v0
.end method

.method public I()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/c/a/b;->b()I

    move-result v0

    iput v0, p0, Lb/a/c/a/c;->b:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lb/a/c/a/c;->b:I

    return-void
.end method

.method public J()Lb/a/c/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    return-object v0
.end method

.method public K()Lb/a/c/a/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    return-object v0
.end method

.method public L()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/h;->k()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public M()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/h;->m()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public N()F
    .locals 1

    .line 1
    iget v0, p0, Lb/a/c/a/e;->D:F

    return v0
.end method

.method public O()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    invoke-virtual {v0}, Lb/a/c/a/b;->e()I

    move-result v0

    return v0
.end method

.method public P()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/h;->g()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public Q()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/h;->j()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public R()Lb/a/c/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public S()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/h;->l()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public T(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    invoke-virtual {p1}, Lb/a/c/a/b;->h()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    invoke-virtual {p1}, Lb/a/c/a/b;->h()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public U()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/c/a/e;->A:Z

    return v0
.end method

.method public V()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/c/a/c;->i:Z

    return v0
.end method

.method public W()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lb/a/c/a/e;->A:Z

    .line 2
    iget-object v1, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Lb/a/c/a/b;->p(Z)V

    .line 4
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    invoke-virtual {v0}, Lb/a/c/a/d;->w()V

    .line 5
    :cond_0
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    if-eqz v0, :cond_1

    .line 6
    iget-boolean v1, p0, Lb/a/c/a/e;->A:Z

    invoke-virtual {v0, v1}, Lb/a/c/a/b;->p(Z)V

    .line 7
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    invoke-virtual {v0}, Lb/a/c/a/a;->x()V

    :cond_1
    return-void
.end method

.method public X()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb/a/c/a/e;->A:Z

    .line 2
    iget-object v1, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Lb/a/c/a/b;->p(Z)V

    .line 4
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    invoke-virtual {v0}, Lb/a/c/a/d;->z()V

    .line 5
    :cond_0
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    if-eqz v0, :cond_1

    .line 6
    iget-boolean v1, p0, Lb/a/c/a/e;->A:Z

    invoke-virtual {v0, v1}, Lb/a/c/a/b;->p(Z)V

    .line 7
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    invoke-virtual {v0}, Lb/a/c/a/a;->A()V

    :cond_1
    return-void
.end method

.method public Y(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/c;->l:Lb/a/a/a/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/a/a;->h()V

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lb/a/c/a/d;->B(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Lb/a/c/a/a;->B(I)V

    :cond_2
    return-void
.end method

.method public Z(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;FF)V
    .locals 1

    .line 1
    new-instance v0, Lb/a/c/a/f;

    invoke-direct {v0}, Lb/a/c/a/f;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lb/a/c/a/f;->d(Landroid/graphics/Bitmap;)V

    .line 3
    invoke-virtual {v0, p2}, Lb/a/c/a/f;->f(Landroid/graphics/Matrix;)V

    .line 4
    invoke-virtual {v0, p3}, Lb/a/c/a/f;->g(F)V

    .line 5
    invoke-virtual {v0, p4}, Lb/a/c/a/f;->e(F)V

    .line 6
    iget-object p1, p0, Lb/a/c/a/c;->m:Lcn/nubia/modules/videoRender/b;

    invoke-interface {p1}, Lcn/nubia/modules/videoRender/b;->getTextFilterSequences()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lb/a/c/a/c;->m:Lcn/nubia/modules/videoRender/b;

    invoke-interface {p1}, Lcn/nubia/modules/videoRender/b;->getTextFilterSequences()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/c/a/c;->n:Lb/a/d/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lb/a/d/b;->A(Z)V

    :cond_0
    return-void
.end method

.method public a0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/c;->m:Lcn/nubia/modules/videoRender/b;

    invoke-interface {v0}, Lcn/nubia/modules/videoRender/b;->getTextFilterSequences()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/c/a/c;->m:Lcn/nubia/modules/videoRender/b;

    invoke-interface {v0}, Lcn/nubia/modules/videoRender/b;->getTextFilterSequences()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public b0([ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcn/nubia/modules/videoRender/e/c;->b()Lcn/nubia/modules/videoRender/e/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/modules/videoRender/e/c;->a(Ljava/lang/String;)Lcn/nubia/modules/videoRender/e/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcn/nubia/modules/videoRender/e/c;->b()Lcn/nubia/modules/videoRender/e/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/modules/videoRender/e/c;->a(Ljava/lang/String;)Lcn/nubia/modules/videoRender/e/d;

    move-result-object v0

    iget-object v1, p0, Lb/a/c/a/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/modules/videoRender/e/d;->h(Landroid/content/Context;[I)V

    .line 4
    invoke-static {}, Lcn/nubia/modules/videoRender/e/c;->b()Lcn/nubia/modules/videoRender/e/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/modules/videoRender/e/c;->a(Ljava/lang/String;)Lcn/nubia/modules/videoRender/e/d;

    move-result-object v0

    iget-object v1, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    invoke-virtual {v1}, Lb/a/a/e/h;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/modules/videoRender/e/d;->i(I)V

    .line 5
    invoke-static {}, Lcn/nubia/modules/videoRender/e/c;->b()Lcn/nubia/modules/videoRender/e/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/modules/videoRender/e/c;->a(Ljava/lang/String;)Lcn/nubia/modules/videoRender/e/d;

    move-result-object v0

    iget-object v1, p0, Lb/a/c/a/c;->m:Lcn/nubia/modules/videoRender/b;

    invoke-interface {v1}, Lcn/nubia/modules/videoRender/b;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/modules/videoRender/e/d;->l(I)V

    .line 6
    invoke-static {}, Lcn/nubia/modules/videoRender/e/c;->b()Lcn/nubia/modules/videoRender/e/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/modules/videoRender/e/c;->a(Ljava/lang/String;)Lcn/nubia/modules/videoRender/e/d;

    move-result-object v0

    iget-object v1, p0, Lb/a/c/a/c;->m:Lcn/nubia/modules/videoRender/b;

    invoke-interface {v1}, Lcn/nubia/modules/videoRender/b;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/modules/videoRender/e/d;->k(I)V

    .line 7
    invoke-static {}, Lcn/nubia/modules/videoRender/e/c;->b()Lcn/nubia/modules/videoRender/e/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/modules/videoRender/e/c;->a(Ljava/lang/String;)Lcn/nubia/modules/videoRender/e/d;

    move-result-object v0

    iget-object v1, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    invoke-virtual {v1}, Lb/a/a/e/h;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/modules/videoRender/e/d;->m(I)V

    .line 8
    invoke-static {}, Lcn/nubia/modules/videoRender/e/c;->b()Lcn/nubia/modules/videoRender/e/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/modules/videoRender/e/c;->a(Ljava/lang/String;)Lcn/nubia/modules/videoRender/e/d;

    move-result-object v0

    iget-object v1, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    invoke-virtual {v0, v1}, Lcn/nubia/modules/videoRender/e/d;->j(Lcn/nubia/modules/videoRender/e/j;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    invoke-virtual {v0, p2}, Lb/a/c/a/d;->D(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    invoke-virtual {p2, p1}, Lb/a/c/a/b;->q([I)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    invoke-super {p0}, Lb/a/c/a/c;->c()V

    .line 2
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lb/a/c/a/b;->r(Z)V

    .line 4
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    iget v2, p0, Lb/a/c/a/c;->c:I

    invoke-virtual {v0, v2}, Lb/a/c/a/d;->B(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    if-eqz v0, :cond_1

    .line 6
    iget v2, p0, Lb/a/c/a/c;->d:I

    invoke-virtual {v0, v2}, Lb/a/c/a/a;->B(I)V

    .line 7
    :cond_1
    iput-boolean v1, p0, Lb/a/c/a/e;->A:Z

    return-void
.end method

.method public c0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/c;->l:Lb/a/a/a/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/a/a/a;->B(Z)V

    :cond_0
    return-void
.end method

.method public d0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    iget-object v1, p0, Lb/a/c/a/c;->m:Lcn/nubia/modules/videoRender/b;

    invoke-virtual {v0, v1}, Lb/a/c/a/d;->I(Lcn/nubia/modules/videoRender/b;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb/a/c/a/e;->A:Z

    .line 3
    iget-object v1, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    invoke-virtual {v1, v0}, Lb/a/c/a/b;->p(Z)V

    .line 4
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    invoke-virtual {v0}, Lb/a/c/a/d;->y()V

    return-void
.end method

.method public e0(F)V
    .locals 4

    .line 1
    iput p1, p0, Lb/a/c/a/e;->D:F

    .line 2
    iget-object v0, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    if-eqz v0, :cond_6

    .line 3
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    invoke-virtual {v0}, Lb/a/c/a/b;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    cmpl-float v0, p1, v3

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    invoke-virtual {v0, p1}, Lb/a/a/e/h;->C(F)V

    .line 5
    iget-object v0, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    invoke-virtual {v0}, Lb/a/a/e/h;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lb/a/c/a/c;->l:Lb/a/a/a/a;

    invoke-virtual {v0, v2}, Lb/a/a/a/a;->C(Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lb/a/c/a/c;->l:Lb/a/a/a/a;

    invoke-virtual {v0, v1}, Lb/a/a/a/a;->C(Z)V

    .line 8
    :goto_0
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    invoke-virtual {v0}, Lb/a/c/a/b;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    invoke-virtual {v0, p1}, Lb/a/c/a/a;->F(F)V

    .line 10
    :cond_2
    iget-object v0, p0, Lb/a/c/a/c;->l:Lb/a/a/a/a;

    invoke-virtual {v0, p1, v3}, Lb/a/a/a/a;->z(FF)V

    goto :goto_3

    .line 11
    :cond_3
    :goto_1
    iget-object v0, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    invoke-virtual {v0, p1}, Lb/a/a/e/h;->C(F)V

    .line 12
    iget-object v0, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    invoke-virtual {v0}, Lb/a/a/e/h;->o()Z

    move-result v0

    if-nez v0, :cond_4

    cmpl-float v0, p1, v3

    if-nez v0, :cond_4

    .line 13
    iget-object v0, p0, Lb/a/c/a/c;->l:Lb/a/a/a/a;

    invoke-virtual {v0, v1}, Lb/a/a/a/a;->C(Z)V

    goto :goto_2

    .line 14
    :cond_4
    iget-object v0, p0, Lb/a/c/a/c;->l:Lb/a/a/a/a;

    invoke-virtual {v0, v2}, Lb/a/a/a/a;->C(Z)V

    .line 15
    :goto_2
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    invoke-virtual {v0}, Lb/a/c/a/b;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 16
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    invoke-virtual {v0, p1}, Lb/a/c/a/a;->F(F)V

    .line 17
    :cond_5
    iget-object v0, p0, Lb/a/c/a/c;->l:Lb/a/a/a/a;

    invoke-virtual {v0, p1, p1}, Lb/a/a/a/a;->z(FF)V

    :cond_6
    :goto_3
    return-void
.end method

.method public f0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb/a/c/a/c;->g:I

    return-void
.end method

.method public g0(Lcn/nubia/modules/videoRender/b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lb/a/c/a/c;->m:Lcn/nubia/modules/videoRender/b;

    .line 2
    instance-of v0, p1, Lcn/nubia/modules/videoRender/a;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcn/nubia/modules/videoRender/a;

    new-instance v0, Lb/a/c/a/e$a;

    invoke-direct {v0, p0}, Lb/a/c/a/e$a;-><init>(Lb/a/c/a/e;)V

    invoke-interface {p1, v0}, Lcn/nubia/modules/videoRender/a;->setRenderRectListener(Lcn/nubia/modules/videoRender/a$a;)V

    :cond_0
    return-void
.end method

.method public h0(II)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    invoke-virtual {p1, p2}, Lb/a/c/a/d;->K(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    invoke-virtual {p1, p2}, Lb/a/c/a/a;->G(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    invoke-super {p0}, Lb/a/c/a/c;->i()V

    .line 2
    iget-object v0, p0, Lb/a/c/a/c;->o:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lb/a/c/a/d;->x()V

    .line 6
    iput-object v1, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    .line 7
    :cond_1
    iget-object v0, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lb/a/c/a/a;->y()V

    .line 9
    iput-object v1, p0, Lb/a/c/a/e;->C:Lb/a/c/a/a;

    .line 10
    :cond_2
    iget-object v0, p0, Lb/a/c/a/c;->l:Lb/a/a/a/a;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Lb/a/a/a/a;->h()V

    .line 12
    iget-object v0, p0, Lb/a/c/a/c;->l:Lb/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a;->s()V

    .line 13
    iput-object v1, p0, Lb/a/c/a/c;->l:Lb/a/a/a/a;

    .line 14
    :cond_3
    iget-object v0, p0, Lb/a/c/a/c;->m:Lcn/nubia/modules/videoRender/b;

    if-eqz v0, :cond_4

    .line 15
    invoke-interface {v0}, Lcn/nubia/modules/videoRender/b;->c()V

    .line 16
    iput-object v1, p0, Lb/a/c/a/c;->m:Lcn/nubia/modules/videoRender/b;

    :cond_4
    return-void
.end method

.method public j0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    if-eqz v0, :cond_1

    .line 2
    iget v1, p0, Lb/a/c/a/c;->c:I

    if-lez v1, :cond_0

    iget-boolean v2, p0, Lb/a/c/a/c;->h:Z

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lb/a/c/a/d;->B(I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lb/a/c/a/c;->c:I

    .line 5
    :cond_0
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    iget-object v1, p0, Lb/a/c/a/c;->m:Lcn/nubia/modules/videoRender/b;

    invoke-virtual {v0, v1}, Lb/a/c/a/d;->I(Lcn/nubia/modules/videoRender/b;)V

    .line 6
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    iget-boolean v1, p0, Lb/a/c/a/e;->A:Z

    invoke-virtual {v0, v1}, Lb/a/c/a/b;->p(Z)V

    .line 7
    iget-object v0, p0, Lb/a/c/a/e;->B:Lb/a/c/a/d;

    invoke-virtual {v0}, Lb/a/c/a/d;->y()V

    :cond_1
    return-void
.end method
