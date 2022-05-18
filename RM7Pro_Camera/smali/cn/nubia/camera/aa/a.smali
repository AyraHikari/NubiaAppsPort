.class public Lcn/nubia/camera/aa/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/aa/a$a;,
        Lcn/nubia/camera/aa/a$b;,
        Lcn/nubia/camera/aa/a$c;
    }
.end annotation


# static fields
.field private static l:Lcn/nubia/camera/o/b;


# instance fields
.field private a:Lcn/nubia/camera/aa/c;

.field private b:I

.field private c:I

.field private d:Lcn/nubia/camera/ad/a;

.field private e:J

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/aa/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/aa/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcn/nubia/camera/aa/a$b;

.field private i:Z

.field private j:Lcn/nubia/camera/aa/a$c;

.field private k:Lcn/nubia/videogenerator/b/c$a;


# direct methods
.method static synthetic a(Lcn/nubia/camera/o/b;)Lcn/nubia/camera/o/b;
    .locals 0

    .line 30
    sput-object p0, Lcn/nubia/camera/aa/a;->l:Lcn/nubia/camera/o/b;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/aa/a;Ljava/util/ArrayList;J)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/camera/aa/a;->a(Ljava/util/ArrayList;J)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/aa/a$a;",
            ">;J)V"
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 290
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 291
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/aa/a$a;

    iget-wide v2, v2, Lcn/nubia/camera/aa/a$a;->b:J

    sub-long v2, p2, v2

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 292
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/aa/a;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcn/nubia/camera/aa/a;->i:Z

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/aa/a;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/camera/aa/a;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/aa/a;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcn/nubia/camera/aa/a;->e:J

    return-wide v0
.end method

.method static synthetic c()Lcn/nubia/camera/o/b;
    .locals 1

    .line 30
    sget-object v0, Lcn/nubia/camera/aa/a;->l:Lcn/nubia/camera/o/b;

    return-object v0
.end method

.method static synthetic d(Lcn/nubia/camera/aa/a;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/camera/aa/a;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/aa/a;)I
    .locals 0

    .line 30
    iget p0, p0, Lcn/nubia/camera/aa/a;->b:I

    return p0
.end method

.method static synthetic f(Lcn/nubia/camera/aa/a;)I
    .locals 0

    .line 30
    iget p0, p0, Lcn/nubia/camera/aa/a;->c:I

    return p0
.end method

.method static synthetic g(Lcn/nubia/camera/aa/a;)Lcn/nubia/camera/aa/a$c;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/camera/aa/a;->j:Lcn/nubia/camera/aa/a$c;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/aa/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/camera/aa/a;->d:Lcn/nubia/camera/ad/a;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 6

    monitor-enter p0

    .line 85
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/aa/a;->e:J

    .line 86
    iget-object v0, p0, Lcn/nubia/camera/aa/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 87
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/aa/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 88
    iget-wide v2, p0, Lcn/nubia/camera/aa/a;->e:J

    iget-object v4, p0, Lcn/nubia/camera/aa/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/camera/aa/a$a;

    iget-wide v4, v4, Lcn/nubia/camera/aa/a$a;->b:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 89
    iget-object v2, p0, Lcn/nubia/camera/aa/a;->g:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/nubia/camera/aa/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/aa/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 94
    iget-object v1, p0, Lcn/nubia/camera/aa/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 96
    :cond_2
    new-instance v0, Lcn/nubia/camera/aa/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/aa/a$b;-><init>(Lcn/nubia/camera/aa/a;Lcn/nubia/camera/aa/a$1;)V

    iput-object v0, p0, Lcn/nubia/camera/aa/a;->h:Lcn/nubia/camera/aa/a$b;

    .line 97
    invoke-virtual {v0}, Lcn/nubia/camera/aa/a$b;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 102
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/camera/aa/a;->i:Z

    .line 103
    iget-object v0, p0, Lcn/nubia/camera/aa/a;->a:Lcn/nubia/camera/aa/c;

    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcn/nubia/camera/aa/a;->k:Lcn/nubia/videogenerator/b/c$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aa/c;->b(Lcn/nubia/videogenerator/b/c$a;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aa/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
