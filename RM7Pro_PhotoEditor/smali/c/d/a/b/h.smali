.class final Lc/d/a/b/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Lc/d/a/c/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/h$d;
    }
.end annotation


# instance fields
.field private final a:Lc/d/a/b/f;

.field private final b:Lc/d/a/b/g;

.field private final c:Landroid/os/Handler;

.field private final d:Lc/d/a/b/e;

.field private final e:Lc/d/a/b/m/b;

.field private final f:Lc/d/a/b/m/b;

.field private final g:Lc/d/a/b/m/b;

.field private final h:Lc/d/a/b/k/b;

.field final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field final k:Lc/d/a/b/n/a;

.field private final l:Lc/d/a/b/j/e;

.field final m:Lc/d/a/b/c;

.field final n:Lc/d/a/b/o/a;

.field final o:Lc/d/a/b/o/b;

.field private final p:Z

.field private q:Lc/d/a/b/j/f;


# direct methods
.method public constructor <init>(Lc/d/a/b/f;Lc/d/a/b/g;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lc/d/a/b/j/f;->a:Lc/d/a/b/j/f;

    iput-object v0, p0, Lc/d/a/b/h;->q:Lc/d/a/b/j/f;

    iput-object p1, p0, Lc/d/a/b/h;->a:Lc/d/a/b/f;

    iput-object p2, p0, Lc/d/a/b/h;->b:Lc/d/a/b/g;

    iput-object p3, p0, Lc/d/a/b/h;->c:Landroid/os/Handler;

    iget-object p1, p1, Lc/d/a/b/f;->a:Lc/d/a/b/e;

    iput-object p1, p0, Lc/d/a/b/h;->d:Lc/d/a/b/e;

    iget-object p3, p1, Lc/d/a/b/e;->p:Lc/d/a/b/m/b;

    iput-object p3, p0, Lc/d/a/b/h;->e:Lc/d/a/b/m/b;

    iget-object p3, p1, Lc/d/a/b/e;->s:Lc/d/a/b/m/b;

    iput-object p3, p0, Lc/d/a/b/h;->f:Lc/d/a/b/m/b;

    iget-object p3, p1, Lc/d/a/b/e;->t:Lc/d/a/b/m/b;

    iput-object p3, p0, Lc/d/a/b/h;->g:Lc/d/a/b/m/b;

    iget-object p1, p1, Lc/d/a/b/e;->q:Lc/d/a/b/k/b;

    iput-object p1, p0, Lc/d/a/b/h;->h:Lc/d/a/b/k/b;

    iget-object p1, p2, Lc/d/a/b/g;->a:Ljava/lang/String;

    iput-object p1, p0, Lc/d/a/b/h;->i:Ljava/lang/String;

    iget-object p1, p2, Lc/d/a/b/g;->b:Ljava/lang/String;

    iput-object p1, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    iget-object p1, p2, Lc/d/a/b/g;->c:Lc/d/a/b/n/a;

    iput-object p1, p0, Lc/d/a/b/h;->k:Lc/d/a/b/n/a;

    iget-object p1, p2, Lc/d/a/b/g;->d:Lc/d/a/b/j/e;

    iput-object p1, p0, Lc/d/a/b/h;->l:Lc/d/a/b/j/e;

    iget-object p1, p2, Lc/d/a/b/g;->e:Lc/d/a/b/c;

    iput-object p1, p0, Lc/d/a/b/h;->m:Lc/d/a/b/c;

    iget-object p3, p2, Lc/d/a/b/g;->f:Lc/d/a/b/o/a;

    iput-object p3, p0, Lc/d/a/b/h;->n:Lc/d/a/b/o/a;

    iget-object p2, p2, Lc/d/a/b/g;->g:Lc/d/a/b/o/b;

    iput-object p2, p0, Lc/d/a/b/h;->o:Lc/d/a/b/o/b;

    invoke-virtual {p1}, Lc/d/a/b/c;->J()Z

    move-result p1

    iput-boolean p1, p0, Lc/d/a/b/h;->p:Z

    return-void
.end method

.method static synthetic b(Lc/d/a/b/h;)Lc/d/a/b/e;
    .locals 0

    iget-object p0, p0, Lc/d/a/b/h;->d:Lc/d/a/b/e;

    return-object p0
.end method

.method private c()V
    .locals 1

    invoke-direct {p0}, Lc/d/a/b/h;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lc/d/a/b/h$d;

    invoke-direct {v0, p0}, Lc/d/a/b/h$d;-><init>(Lc/d/a/b/h;)V

    throw v0
.end method

.method private d()V
    .locals 0

    invoke-direct {p0}, Lc/d/a/b/h;->e()V

    invoke-direct {p0}, Lc/d/a/b/h;->f()V

    return-void
.end method

.method private e()V
    .locals 1

    invoke-direct {p0}, Lc/d/a/b/h;->q()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lc/d/a/b/h$d;

    invoke-direct {v0, p0}, Lc/d/a/b/h$d;-><init>(Lc/d/a/b/h;)V

    throw v0
.end method

.method private f()V
    .locals 1

    invoke-direct {p0}, Lc/d/a/b/h;->r()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lc/d/a/b/h$d;

    invoke-direct {v0, p0}, Lc/d/a/b/h$d;-><init>(Lc/d/a/b/h;)V

    throw v0
.end method

.method private g(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    iget-object v0, p0, Lc/d/a/b/h;->k:Lc/d/a/b/n/a;

    invoke-interface {v0}, Lc/d/a/b/n/a;->e()Lc/d/a/b/j/h;

    move-result-object v6

    new-instance v0, Lc/d/a/b/k/c;

    iget-object v2, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    iget-object v4, p0, Lc/d/a/b/h;->i:Ljava/lang/String;

    iget-object v5, p0, Lc/d/a/b/h;->l:Lc/d/a/b/j/e;

    invoke-direct {p0}, Lc/d/a/b/h;->m()Lc/d/a/b/m/b;

    move-result-object v7

    iget-object v8, p0, Lc/d/a/b/h;->m:Lc/d/a/b/c;

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lc/d/a/b/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc/d/a/b/j/e;Lc/d/a/b/j/h;Lc/d/a/b/m/b;Lc/d/a/b/c;)V

    iget-object p1, p0, Lc/d/a/b/h;->h:Lc/d/a/b/k/b;

    invoke-interface {p1, v0}, Lc/d/a/b/k/b;->a(Lc/d/a/b/k/c;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private h()Z
    .locals 6

    iget-object v0, p0, Lc/d/a/b/h;->m:Lc/d/a/b/c;

    invoke-virtual {v0}, Lc/d/a/b/c;->K()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lc/d/a/b/h;->m:Lc/d/a/b/c;

    invoke-virtual {v2}, Lc/d/a/b/c;->v()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v2, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "Delay %d ms before loading...  [%s]"

    invoke-static {v2, v0}, Lc/d/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/h;->m:Lc/d/a/b/c;

    invoke-virtual {v0}, Lc/d/a/b/c;->v()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lc/d/a/b/h;->p()Z

    move-result v0

    return v0

    :catch_0
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Task was interrupted [%s]"

    invoke-static {v1, v0}, Lc/d/a/c/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    return v1
.end method

.method private i()Z
    .locals 3

    invoke-direct {p0}, Lc/d/a/b/h;->m()Lc/d/a/b/m/b;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/b/h;->i:Ljava/lang/String;

    iget-object v2, p0, Lc/d/a/b/h;->m:Lc/d/a/b/c;

    invoke-virtual {v2}, Lc/d/a/b/c;->x()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc/d/a/b/m/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "No stream for image [%s]"

    invoke-static {v1, v0}, Lc/d/a/c/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lc/d/a/b/h;->d:Lc/d/a/b/e;

    iget-object v1, v1, Lc/d/a/b/e;->o:Lc/d/a/a/a/a;

    iget-object v2, p0, Lc/d/a/b/h;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p0}, Lc/d/a/a/a/a;->b(Ljava/lang/String;Ljava/io/InputStream;Lc/d/a/c/b$a;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lc/d/a/c/b;->a(Ljava/io/Closeable;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lc/d/a/c/b;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method private j()V
    .locals 4

    iget-boolean v0, p0, Lc/d/a/b/h;->p:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lc/d/a/b/h;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lc/d/a/b/h$c;

    invoke-direct {v0, p0}, Lc/d/a/b/h$c;-><init>(Lc/d/a/b/h;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lc/d/a/b/h;->c:Landroid/os/Handler;

    iget-object v3, p0, Lc/d/a/b/h;->a:Lc/d/a/b/f;

    invoke-static {v0, v1, v2, v3}, Lc/d/a/b/h;->t(Ljava/lang/Runnable;ZLandroid/os/Handler;Lc/d/a/b/f;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private k(Lc/d/a/b/j/b$a;Ljava/lang/Throwable;)V
    .locals 2

    iget-boolean v0, p0, Lc/d/a/b/h;->p:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lc/d/a/b/h;->o()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lc/d/a/b/h;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lc/d/a/b/h$b;

    invoke-direct {v0, p0, p1, p2}, Lc/d/a/b/h$b;-><init>(Lc/d/a/b/h;Lc/d/a/b/j/b$a;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iget-object p2, p0, Lc/d/a/b/h;->c:Landroid/os/Handler;

    iget-object v1, p0, Lc/d/a/b/h;->a:Lc/d/a/b/f;

    invoke-static {v0, p1, p2, v1}, Lc/d/a/b/h;->t(Ljava/lang/Runnable;ZLandroid/os/Handler;Lc/d/a/b/f;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private l(II)Z
    .locals 2

    invoke-direct {p0}, Lc/d/a/b/h;->o()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lc/d/a/b/h;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/d/a/b/h;->o:Lc/d/a/b/o/b;

    if-eqz v0, :cond_1

    new-instance v0, Lc/d/a/b/h$a;

    invoke-direct {v0, p0, p1, p2}, Lc/d/a/b/h$a;-><init>(Lc/d/a/b/h;II)V

    iget-object p1, p0, Lc/d/a/b/h;->c:Landroid/os/Handler;

    iget-object p2, p0, Lc/d/a/b/h;->a:Lc/d/a/b/f;

    invoke-static {v0, v1, p1, p2}, Lc/d/a/b/h;->t(Ljava/lang/Runnable;ZLandroid/os/Handler;Lc/d/a/b/f;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private m()Lc/d/a/b/m/b;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/h;->a:Lc/d/a/b/f;

    invoke-virtual {v0}, Lc/d/a/b/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/h;->f:Lc/d/a/b/m/b;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/d/a/b/h;->a:Lc/d/a/b/f;

    invoke-virtual {v0}, Lc/d/a/b/f;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/d/a/b/h;->g:Lc/d/a/b/m/b;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/d/a/b/h;->e:Lc/d/a/b/m/b;

    :goto_0
    return-object v0
.end method

.method private o()Z
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "Task was interrupted [%s]"

    invoke-static {v1, v2}, Lc/d/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    return v1
.end method

.method private p()Z
    .locals 1

    invoke-direct {p0}, Lc/d/a/b/h;->q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lc/d/a/b/h;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private q()Z
    .locals 4

    iget-object v0, p0, Lc/d/a/b/h;->k:Lc/d/a/b/n/a;

    invoke-interface {v0}, Lc/d/a/b/n/a;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "ImageAware was collected by GC. Task is cancelled. [%s]"

    invoke-static {v1, v2}, Lc/d/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    return v1
.end method

.method private r()Z
    .locals 4

    iget-object v0, p0, Lc/d/a/b/h;->a:Lc/d/a/b/f;

    iget-object v1, p0, Lc/d/a/b/h;->k:Lc/d/a/b/n/a;

    invoke-virtual {v0, v1}, Lc/d/a/b/f;->g(Lc/d/a/b/n/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v2, "ImageAware is reused for another image. Task is cancelled. [%s]"

    invoke-static {v2, v0}, Lc/d/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    return v2
.end method

.method private s(II)Z
    .locals 11

    iget-object v0, p0, Lc/d/a/b/h;->d:Lc/d/a/b/e;

    iget-object v0, v0, Lc/d/a/b/e;->o:Lc/d/a/a/a/a;

    iget-object v1, p0, Lc/d/a/b/h;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Lc/d/a/a/a/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v7, Lc/d/a/b/j/e;

    invoke-direct {v7, p1, p2}, Lc/d/a/b/j/e;-><init>(II)V

    new-instance p1, Lc/d/a/b/c$b;

    invoke-direct {p1}, Lc/d/a/b/c$b;-><init>()V

    iget-object p2, p0, Lc/d/a/b/h;->m:Lc/d/a/b/c;

    invoke-virtual {p1, p2}, Lc/d/a/b/c$b;->x(Lc/d/a/b/c;)Lc/d/a/b/c$b;

    sget-object p2, Lc/d/a/b/j/d;->d:Lc/d/a/b/j/d;

    invoke-virtual {p1, p2}, Lc/d/a/b/c$b;->y(Lc/d/a/b/j/d;)Lc/d/a/b/c$b;

    invoke-virtual {p1}, Lc/d/a/b/c$b;->u()Lc/d/a/b/c;

    move-result-object v10

    new-instance p1, Lc/d/a/b/k/c;

    iget-object v4, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    sget-object p2, Lc/d/a/b/m/b$a;->e:Lc/d/a/b/m/b$a;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lc/d/a/b/m/b$a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lc/d/a/b/h;->i:Ljava/lang/String;

    sget-object v8, Lc/d/a/b/j/h;->a:Lc/d/a/b/j/h;

    invoke-direct {p0}, Lc/d/a/b/h;->m()Lc/d/a/b/m/b;

    move-result-object v9

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lc/d/a/b/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc/d/a/b/j/e;Lc/d/a/b/j/h;Lc/d/a/b/m/b;Lc/d/a/b/c;)V

    iget-object p2, p0, Lc/d/a/b/h;->h:Lc/d/a/b/k/b;

    invoke-interface {p2, p1}, Lc/d/a/b/k/b;->a(Lc/d/a/b/k/c;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lc/d/a/b/h;->d:Lc/d/a/b/e;

    iget-object p2, p2, Lc/d/a/b/e;->f:Lc/d/a/b/p/a;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    iget-object v2, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v2, "Process image before cache on disk [%s]"

    invoke-static {v2, v0}, Lc/d/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lc/d/a/b/h;->d:Lc/d/a/b/e;

    iget-object v0, v0, Lc/d/a/b/e;->f:Lc/d/a/b/p/a;

    invoke-interface {v0, p1}, Lc/d/a/b/p/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    aput-object v0, p2, v1

    const-string v0, "Bitmap processor for disk cache returned null [%s]"

    invoke-static {v0, p2}, Lc/d/a/c/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Lc/d/a/b/h;->d:Lc/d/a/b/e;

    iget-object p2, p2, Lc/d/a/b/e;->o:Lc/d/a/a/a/a;

    iget-object v0, p0, Lc/d/a/b/h;->i:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lc/d/a/a/a/a;->c(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return v1
.end method

.method static t(Ljava/lang/Runnable;ZLandroid/os/Handler;Lc/d/a/b/f;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p3, p0}, Lc/d/a/b/f;->f(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private u()Z
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Cache image on disk [%s]"

    invoke-static {v2, v1}, Lc/d/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-direct {p0}, Lc/d/a/b/h;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lc/d/a/b/h;->d:Lc/d/a/b/e;

    iget v4, v2, Lc/d/a/b/e;->d:I

    iget v2, v2, Lc/d/a/b/e;->e:I

    if-gtz v4, :cond_0

    if-lez v2, :cond_1

    :cond_0
    const-string v5, "Resize image in disk cache [%s]"

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    aput-object v6, v0, v3

    invoke-static {v5, v0}, Lc/d/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v4, v2}, Lc/d/a/b/h;->s(II)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v3, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lc/d/a/c/c;->c(Ljava/lang/Throwable;)V

    :goto_0
    return v3
.end method

.method private v()Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lc/d/a/b/h;->d:Lc/d/a/b/e;

    iget-object v1, v1, Lc/d/a/b/e;->o:Lc/d/a/a/a/a;

    iget-object v2, p0, Lc/d/a/b/h;->i:Ljava/lang/String;

    invoke-interface {v1, v2}, Lc/d/a/a/a/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    const-string v4, "Load image from disk cache [%s]"

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lc/d/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lc/d/a/b/j/f;->b:Lc/d/a/b/j/f;

    iput-object v4, p0, Lc/d/a/b/h;->q:Lc/d/a/b/j/f;

    invoke-direct {p0}, Lc/d/a/b/h;->d()V

    sget-object v4, Lc/d/a/b/m/b$a;->e:Lc/d/a/b/m/b$a;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lc/d/a/b/m/b$a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lc/d/a/b/h;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lc/d/a/b/h$d; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gtz v4, :cond_4

    :cond_1
    const-string v4, "Load image from network [%s]"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    aput-object v5, v3, v2

    invoke-static {v4, v3}, Lc/d/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lc/d/a/b/j/f;->a:Lc/d/a/b/j/f;

    iput-object v2, p0, Lc/d/a/b/h;->q:Lc/d/a/b/j/f;

    iget-object v2, p0, Lc/d/a/b/h;->i:Ljava/lang/String;

    iget-object v3, p0, Lc/d/a/b/h;->m:Lc/d/a/b/c;

    invoke-virtual {v3}, Lc/d/a/b/c;->G()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lc/d/a/b/h;->u()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lc/d/a/b/h;->d:Lc/d/a/b/e;

    iget-object v3, v3, Lc/d/a/b/e;->o:Lc/d/a/a/a/a;

    iget-object v4, p0, Lc/d/a/b/h;->i:Ljava/lang/String;

    invoke-interface {v3, v4}, Lc/d/a/a/a/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v2, Lc/d/a/b/m/b$a;->e:Lc/d/a/b/m/b$a;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc/d/a/b/m/b$a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-direct {p0}, Lc/d/a/b/h;->d()V

    invoke-direct {p0, v2}, Lc/d/a/b/h;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gtz v2, :cond_4

    :cond_3
    sget-object v2, Lc/d/a/b/j/b$a;->b:Lc/d/a/b/j/b$a;

    invoke-direct {p0, v2, v0}, Lc/d/a/b/h;->k(Lc/d/a/b/j/b$a;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lc/d/a/b/h$d; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    :catchall_1
    move-exception v1

    :goto_1
    invoke-static {v1}, Lc/d/a/c/c;->c(Ljava/lang/Throwable;)V

    sget-object v2, Lc/d/a/b/j/b$a;->e:Lc/d/a/b/j/b$a;

    goto :goto_4

    :catch_2
    move-exception v1

    :goto_2
    invoke-static {v1}, Lc/d/a/c/c;->c(Ljava/lang/Throwable;)V

    sget-object v2, Lc/d/a/b/j/b$a;->d:Lc/d/a/b/j/b$a;

    goto :goto_4

    :catch_3
    move-exception v1

    :goto_3
    invoke-static {v1}, Lc/d/a/c/c;->c(Ljava/lang/Throwable;)V

    sget-object v2, Lc/d/a/b/j/b$a;->a:Lc/d/a/b/j/b$a;

    :goto_4
    invoke-direct {p0, v2, v1}, Lc/d/a/b/h;->k(Lc/d/a/b/j/b$a;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_5

    :catch_4
    move-exception v0

    throw v0

    :catch_5
    move-object v1, v0

    :catch_6
    sget-object v2, Lc/d/a/b/j/b$a;->c:Lc/d/a/b/j/b$a;

    invoke-direct {p0, v2, v0}, Lc/d/a/b/h;->k(Lc/d/a/b/j/b$a;Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    return-object v1
.end method

.method private w()Z
    .locals 6

    iget-object v0, p0, Lc/d/a/b/h;->a:Lc/d/a/b/f;

    invoke-virtual {v0}, Lc/d/a/b/f;->i()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/d/a/b/h;->a:Lc/d/a/b/f;

    invoke-virtual {v1}, Lc/d/a/b/f;->j()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImageLoader is paused. Waiting...  [%s]"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Lc/d/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lc/d/a/b/h;->a:Lc/d/a/b/f;

    invoke-virtual {v0}, Lc/d/a/b/f;->j()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, ".. Resume loading [%s]"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lc/d/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    const-string v0, "Task was interrupted [%s]"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Lc/d/a/c/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1

    return v2

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lc/d/a/b/h;->p()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(II)Z
    .locals 1

    iget-boolean v0, p0, Lc/d/a/b/h;->p:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lc/d/a/b/h;->l(II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/h;->i:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 7

    invoke-direct {p0}, Lc/d/a/b/h;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lc/d/a/b/h;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lc/d/a/b/h;->b:Lc/d/a/b/g;

    iget-object v0, v0, Lc/d/a/b/g;->h:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Start display image task [%s]"

    invoke-static {v3, v2}, Lc/d/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "Image already is loading. Waiting... [%s]"

    invoke-static {v3, v2}, Lc/d/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lc/d/a/b/h;->d()V

    iget-object v2, p0, Lc/d/a/b/h;->d:Lc/d/a/b/e;

    iget-object v2, v2, Lc/d/a/b/e;->n:Lc/d/a/a/b/c;

    iget-object v3, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    invoke-interface {v2, v3}, Lc/d/a/a/b/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    sget-object v3, Lc/d/a/b/j/f;->c:Lc/d/a/b/j/f;

    iput-object v3, p0, Lc/d/a/b/h;->q:Lc/d/a/b/j/f;

    const-string v3, "...Get cached bitmap from memory after waiting. [%s]"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lc/d/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-direct {p0}, Lc/d/a/b/h;->v()Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Lc/d/a/b/h$d; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_5
    :try_start_1
    invoke-direct {p0}, Lc/d/a/b/h;->d()V

    invoke-direct {p0}, Lc/d/a/b/h;->c()V

    iget-object v3, p0, Lc/d/a/b/h;->m:Lc/d/a/b/c;

    invoke-virtual {v3}, Lc/d/a/b/c;->M()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "PreProcess image before caching in memory [%s]"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lc/d/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lc/d/a/b/h;->m:Lc/d/a/b/c;

    invoke-virtual {v3}, Lc/d/a/b/c;->E()Lc/d/a/b/p/a;

    move-result-object v3

    invoke-interface {v3, v2}, Lc/d/a/b/p/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v3, "Pre-processor returned null [%s]"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lc/d/a/c/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    if-eqz v2, :cond_7

    iget-object v3, p0, Lc/d/a/b/h;->m:Lc/d/a/b/c;

    invoke-virtual {v3}, Lc/d/a/b/c;->F()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "Cache image in memory [%s]"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lc/d/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lc/d/a/b/h;->d:Lc/d/a/b/e;

    iget-object v3, v3, Lc/d/a/b/e;->n:Lc/d/a/a/b/c;

    iget-object v5, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    invoke-interface {v3, v5, v2}, Lc/d/a/a/b/c;->c(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    :cond_7
    :goto_1
    if-eqz v2, :cond_8

    iget-object v3, p0, Lc/d/a/b/h;->m:Lc/d/a/b/c;

    invoke-virtual {v3}, Lc/d/a/b/c;->L()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "PostProcess image before displaying [%s]"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lc/d/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lc/d/a/b/h;->m:Lc/d/a/b/c;

    invoke-virtual {v3}, Lc/d/a/b/c;->D()Lc/d/a/b/p/a;

    move-result-object v3

    invoke-interface {v3, v2}, Lc/d/a/b/p/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v3, "Post-processor returned null [%s]"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lc/d/a/b/h;->j:Ljava/lang/String;

    aput-object v5, v1, v4

    invoke-static {v3, v1}, Lc/d/a/c/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    invoke-direct {p0}, Lc/d/a/b/h;->d()V

    invoke-direct {p0}, Lc/d/a/b/h;->c()V
    :try_end_1
    .catch Lc/d/a/b/h$d; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance v0, Lc/d/a/b/b;

    iget-object v1, p0, Lc/d/a/b/h;->b:Lc/d/a/b/g;

    iget-object v3, p0, Lc/d/a/b/h;->a:Lc/d/a/b/f;

    iget-object v4, p0, Lc/d/a/b/h;->q:Lc/d/a/b/j/f;

    invoke-direct {v0, v2, v1, v3, v4}, Lc/d/a/b/b;-><init>(Landroid/graphics/Bitmap;Lc/d/a/b/g;Lc/d/a/b/f;Lc/d/a/b/j/f;)V

    iget-boolean v1, p0, Lc/d/a/b/h;->p:Z

    iget-object v2, p0, Lc/d/a/b/h;->c:Landroid/os/Handler;

    iget-object v3, p0, Lc/d/a/b/h;->a:Lc/d/a/b/f;

    invoke-static {v0, v1, v2, v3}, Lc/d/a/b/h;->t(Ljava/lang/Runnable;ZLandroid/os/Handler;Lc/d/a/b/f;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    :try_start_2
    invoke-direct {p0}, Lc/d/a/b/h;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
