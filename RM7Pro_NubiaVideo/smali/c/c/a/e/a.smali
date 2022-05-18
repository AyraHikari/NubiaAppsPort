.class public abstract Lc/c/a/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/c/a/e/j;


# static fields
.field private static j:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lc/c/a/e/a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Ljava/lang/ThreadLocal;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field private g:Z

.field private h:Z

.field protected i:Lc/c/a/e/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lc/c/a/e/a;->j:Ljava/util/WeakHashMap;

    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lc/c/a/e/a;->k:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 12
    invoke-direct {p0, v0, v1, v1}, Lc/c/a/e/a;-><init>(Lc/c/a/e/c;II)V

    return-void
.end method

.method protected constructor <init>(Lc/c/a/e/c;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lc/c/a/e/a;->a:I

    .line 3
    iput v0, p0, Lc/c/a/e/a;->c:I

    .line 4
    iput v0, p0, Lc/c/a/e/a;->d:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lc/c/a/e/a;->i:Lc/c/a/e/c;

    .line 6
    invoke-virtual {p0, p1}, Lc/c/a/e/a;->o(Lc/c/a/e/c;)V

    .line 7
    iput p2, p0, Lc/c/a/e/a;->a:I

    .line 8
    iput p3, p0, Lc/c/a/e/a;->b:I

    .line 9
    sget-object p1, Lc/c/a/e/a;->j:Ljava/util/WeakHashMap;

    monitor-enter p1

    .line 10
    :try_start_0
    sget-object p2, Lc/c/a/e/a;->j:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method private b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/a;->i:Lc/c/a/e/c;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lc/c/a/e/a;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3
    invoke-interface {v0, p0}, Lc/c/a/e/c;->o(Lc/c/a/e/a;)Z

    .line 4
    iput v2, p0, Lc/c/a/e/a;->a:I

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lc/c/a/e/a;->b:I

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lc/c/a/e/a;->o(Lc/c/a/e/c;)V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/e/a;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/e/a;->a:I

    return v0
.end method

.method protected abstract e()I
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/e/a;->f:I

    return v0
.end method

.method protected finalize()V
    .locals 2

    .line 1
    sget-object v0, Lc/c/a/e/a;->k:Ljava/lang/ThreadLocal;

    const-class v1, Lc/c/a/e/a;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lc/c/a/e/a;->n()V

    .line 3
    sget-object v0, Lc/c/a/e/a;->k:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/e/a;->e:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/e/a;->c:I

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/e/a;->g:Z

    return v0
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 2

    .line 1
    iget v0, p0, Lc/c/a/e/a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/e/a;->h:Z

    return v0
.end method

.method protected abstract m(Lc/c/a/e/c;)Z
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/c/a/e/a;->h:Z

    .line 2
    invoke-direct {p0}, Lc/c/a/e/a;->b()V

    return-void
.end method

.method protected o(Lc/c/a/e/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/e/a;->i:Lc/c/a/e/c;

    return-void
.end method

.method protected p(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc/c/a/e/a;->g:Z

    return-void
.end method

.method public q(II)V
    .locals 2

    .line 1
    iput p1, p0, Lc/c/a/e/a;->c:I

    .line 2
    iput p2, p0, Lc/c/a/e/a;->d:I

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 3
    invoke-static {p1}, Lc/c/a/e/d;->a(I)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput p1, p0, Lc/c/a/e/a;->e:I

    if-lez p2, :cond_1

    .line 4
    invoke-static {p2}, Lc/c/a/e/d;->a(I)I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    iput p1, p0, Lc/c/a/e/a;->f:I

    .line 5
    iget p2, p0, Lc/c/a/e/a;->e:I

    const/16 v1, 0x1000

    if-gt p2, v1, :cond_2

    if-le p1, v1, :cond_3

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x1

    iget v0, p0, Lc/c/a/e/a;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "secondBitmap is too large: %d x %d"

    .line 7
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    const-string v0, "BasicTexture"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void
.end method
