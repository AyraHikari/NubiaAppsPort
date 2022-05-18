.class public Lc/b/a/r/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/r/c;
.implements Lc/b/a/r/b;


# instance fields
.field private a:Lc/b/a/r/b;

.field private b:Lc/b/a/r/b;

.field private c:Lc/b/a/r/c;


# direct methods
.method public constructor <init>(Lc/b/a/r/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/r/f;->c:Lc/b/a/r/c;

    return-void
.end method

.method private i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/r/f;->c:Lc/b/a/r/c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lc/b/a/r/c;->h(Lc/b/a/r/b;)Z

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

.method private j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/r/f;->c:Lc/b/a/r/c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lc/b/a/r/c;->b(Lc/b/a/r/b;)Z

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

.method private k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/r/f;->c:Lc/b/a/r/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/b/a/r/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/r/f;->a:Lc/b/a/r/b;

    invoke-interface {v0}, Lc/b/a/r/b;->a()V

    .line 2
    iget-object v0, p0, Lc/b/a/r/f;->b:Lc/b/a/r/b;

    invoke-interface {v0}, Lc/b/a/r/b;->a()V

    return-void
.end method

.method public b(Lc/b/a/r/b;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/b/a/r/f;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/b/a/r/f;->a:Lc/b/a/r/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lc/b/a/r/f;->a:Lc/b/a/r/b;

    invoke-interface {p1}, Lc/b/a/r/b;->e()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/r/f;->b:Lc/b/a/r/b;

    invoke-interface {v0}, Lc/b/a/r/b;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/b/a/r/f;->b:Lc/b/a/r/b;

    invoke-interface {v0}, Lc/b/a/r/b;->c()V

    .line 3
    :cond_0
    iget-object v0, p0, Lc/b/a/r/f;->a:Lc/b/a/r/b;

    invoke-interface {v0}, Lc/b/a/r/b;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lc/b/a/r/f;->a:Lc/b/a/r/b;

    invoke-interface {v0}, Lc/b/a/r/b;->c()V

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/r/f;->b:Lc/b/a/r/b;

    invoke-interface {v0}, Lc/b/a/r/b;->clear()V

    .line 2
    iget-object v0, p0, Lc/b/a/r/f;->a:Lc/b/a/r/b;

    invoke-interface {v0}, Lc/b/a/r/b;->clear()V

    return-void
.end method

.method public d(Lc/b/a/r/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/r/f;->b:Lc/b/a/r/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lc/b/a/r/f;->c:Lc/b/a/r/c;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1, p0}, Lc/b/a/r/c;->d(Lc/b/a/r/b;)V

    .line 4
    :cond_1
    iget-object p1, p0, Lc/b/a/r/f;->b:Lc/b/a/r/b;

    invoke-interface {p1}, Lc/b/a/r/b;->f()Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lc/b/a/r/f;->b:Lc/b/a/r/b;

    invoke-interface {p1}, Lc/b/a/r/b;->clear()V

    :cond_2
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/r/f;->a:Lc/b/a/r/b;

    invoke-interface {v0}, Lc/b/a/r/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/b/a/r/f;->b:Lc/b/a/r/b;

    invoke-interface {v0}, Lc/b/a/r/b;->e()Z

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

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/r/f;->a:Lc/b/a/r/b;

    invoke-interface {v0}, Lc/b/a/r/b;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/b/a/r/f;->b:Lc/b/a/r/b;

    invoke-interface {v0}, Lc/b/a/r/b;->f()Z

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

.method public g()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/b/a/r/f;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lc/b/a/r/f;->e()Z

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

.method public h(Lc/b/a/r/b;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/b/a/r/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/a/r/f;->a:Lc/b/a/r/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc/b/a/r/f;->g()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/r/f;->a:Lc/b/a/r/b;

    invoke-interface {v0}, Lc/b/a/r/b;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/r/f;->a:Lc/b/a/r/b;

    invoke-interface {v0}, Lc/b/a/r/b;->isRunning()Z

    move-result v0

    return v0
.end method

.method public l(Lc/b/a/r/b;Lc/b/a/r/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/r/f;->a:Lc/b/a/r/b;

    .line 2
    iput-object p2, p0, Lc/b/a/r/f;->b:Lc/b/a/r/b;

    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/r/f;->a:Lc/b/a/r/b;

    invoke-interface {v0}, Lc/b/a/r/b;->pause()V

    .line 2
    iget-object v0, p0, Lc/b/a/r/f;->b:Lc/b/a/r/b;

    invoke-interface {v0}, Lc/b/a/r/b;->pause()V

    return-void
.end method
