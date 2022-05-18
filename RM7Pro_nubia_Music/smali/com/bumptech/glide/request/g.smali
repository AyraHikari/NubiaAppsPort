.class public Lcom/bumptech/glide/request/g;
.super Ljava/lang/Object;
.source "ThumbnailRequestCoordinator.java"

# interfaces
.implements Lcom/bumptech/glide/request/b;
.implements Lcom/bumptech/glide/request/c;


# instance fields
.field private a:Lcom/bumptech/glide/request/b;

.field private b:Lcom/bumptech/glide/request/b;

.field private c:Lcom/bumptech/glide/request/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/g;-><init>(Lcom/bumptech/glide/request/c;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/request/c;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/request/g;->c:Lcom/bumptech/glide/request/c;

    .line 18
    return-void
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->c:Lcom/bumptech/glide/request/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->c:Lcom/bumptech/glide/request/c;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/c;->a(Lcom/bumptech/glide/request/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->c:Lcom/bumptech/glide/request/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->c:Lcom/bumptech/glide/request/c;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/c;->b(Lcom/bumptech/glide/request/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->c:Lcom/bumptech/glide/request/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->c:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->a:Lcom/bumptech/glide/request/b;

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->a()V

    .line 154
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->b:Lcom/bumptech/glide/request/b;

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->a()V

    .line 155
    return-void
.end method

.method public a(Lcom/bumptech/glide/request/b;Lcom/bumptech/glide/request/b;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/bumptech/glide/request/g;->a:Lcom/bumptech/glide/request/b;

    .line 22
    iput-object p2, p0, Lcom/bumptech/glide/request/g;->b:Lcom/bumptech/glide/request/b;

    .line 23
    return-void
.end method

.method public a(Lcom/bumptech/glide/request/b;)Z
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->a:Lcom/bumptech/glide/request/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->a:Lcom/bumptech/glide/request/b;

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->h()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->b:Lcom/bumptech/glide/request/b;

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->b:Lcom/bumptech/glide/request/b;

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->b()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->a:Lcom/bumptech/glide/request/b;

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->a:Lcom/bumptech/glide/request/b;

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->b()V

    .line 92
    :cond_1
    return-void
.end method

.method public b(Lcom/bumptech/glide/request/b;)Z
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->a:Lcom/bumptech/glide/request/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/bumptech/glide/request/b;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->b:Lcom/bumptech/glide/request/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->c:Lcom/bumptech/glide/request/c;

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->c:Lcom/bumptech/glide/request/c;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/c;->c(Lcom/bumptech/glide/request/b;)V

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->b:Lcom/bumptech/glide/request/b;

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->b:Lcom/bumptech/glide/request/b;

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->d()V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->b:Lcom/bumptech/glide/request/b;

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->d()V

    .line 106
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->a:Lcom/bumptech/glide/request/b;

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->d()V

    .line 107
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->a:Lcom/bumptech/glide/request/b;

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->e()V

    .line 97
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->b:Lcom/bumptech/glide/request/b;

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->e()V

    .line 98
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->a:Lcom/bumptech/glide/request/b;

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->f()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->a:Lcom/bumptech/glide/request/b;

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->b:Lcom/bumptech/glide/request/b;

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->a:Lcom/bumptech/glide/request/b;

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->b:Lcom/bumptech/glide/request/b;

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->a:Lcom/bumptech/glide/request/b;

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->i()Z

    move-result v0

    return v0
.end method
