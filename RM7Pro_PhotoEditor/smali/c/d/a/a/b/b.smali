.class public abstract Lc/d/a/a/b/b;
.super Lc/d/a/a/b/a;
.source ""


# instance fields
.field private final b:I

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lc/d/a/a/b/a;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/b/b;->d:Ljava/util/List;

    iput p1, p0, Lc/d/a/a/b/b;->b:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc/d/a/a/b/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v0, 0x1000000

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "You set too large memory cache size (more than %1$d Mb)"

    invoke-static {v0, p1}, Lc/d/a/c/c;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-super {p0, p1}, Lc/d/a/a/b/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lc/d/a/a/b/b;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/d/a/a/b/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Lc/d/a/a/b/b;->f(Landroid/graphics/Bitmap;)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    :cond_0
    invoke-super {p0, p1}, Lc/d/a/a/b/a;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 5

    invoke-virtual {p0, p2}, Lc/d/a/a/b/b;->f(Landroid/graphics/Bitmap;)I

    move-result v0

    invoke-virtual {p0}, Lc/d/a/a/b/b;->g()I

    move-result v1

    iget-object v2, p0, Lc/d/a/a/b/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ge v0, v1, :cond_2

    :cond_0
    :goto_0
    add-int v3, v2, v0

    if-le v3, v1, :cond_1

    invoke-virtual {p0}, Lc/d/a/a/b/b;->h()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lc/d/a/a/b/b;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v2, p0, Lc/d/a/a/b/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v3}, Lc/d/a/a/b/b;->f(Landroid/graphics/Bitmap;)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lc/d/a/a/b/b;->d:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lc/d/a/a/b/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-super {p0, p1, p2}, Lc/d/a/a/b/a;->c(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    return v0
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lc/d/a/a/b/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lc/d/a/a/b/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-super {p0}, Lc/d/a/a/b/a;->clear()V

    return-void
.end method

.method protected abstract f(Landroid/graphics/Bitmap;)I
.end method

.method protected g()I
    .locals 1

    iget v0, p0, Lc/d/a/a/b/b;->b:I

    return v0
.end method

.method protected abstract h()Landroid/graphics/Bitmap;
.end method
