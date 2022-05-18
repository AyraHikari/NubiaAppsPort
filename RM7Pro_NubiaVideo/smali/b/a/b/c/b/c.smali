.class public abstract Lb/a/b/c/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/b/e/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/b/e/b<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lb/a/b/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/b/e/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb/a/b/c/b/c;->a:I

    return-void
.end method


# virtual methods
.method public a(Lb/a/b/e/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/b/e/a<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-object v0, p0, Lb/a/b/c/b/c;->b:Lb/a/b/e/a;

    .line 3
    invoke-interface {p1}, Lb/a/b/e/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lb/a/b/c/b/c;->c:Landroid/graphics/Bitmap;

    .line 4
    iget v2, p0, Lb/a/b/c/b/c;->a:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lb/a/b/c/a/d;->c()Lb/a/b/c/a/d;

    move-result-object p1

    iget-object v1, p0, Lb/a/b/c/b/c;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Lb/a/b/c/a/d;->f(Landroid/graphics/Bitmap;)Z

    .line 6
    iput-object v0, p0, Lb/a/b/c/b/c;->c:Landroid/graphics/Bitmap;

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    .line 8
    :cond_1
    invoke-interface {p1}, Lb/a/b/e/a;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lb/a/b/c/b/c;->c:Landroid/graphics/Bitmap;

    if-nez p1, :cond_3

    .line 9
    iget p1, p0, Lb/a/b/c/b/c;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, p0}, Lb/a/b/c/b/c;->h(Lb/a/b/e/b;)Lb/a/b/e/a;

    move-result-object p1

    iput-object p1, p0, Lb/a/b/c/b/c;->b:Lb/a/b/e/a;

    .line 10
    :cond_2
    monitor-exit p0

    return-void

    .line 11
    :cond_3
    iget-object p1, p0, Lb/a/b/c/b/c;->c:Landroid/graphics/Bitmap;

    if-nez p1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lb/a/b/c/b/c;->a:I

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0, p1}, Lb/a/b/c/b/c;->e(Landroid/graphics/Bitmap;)V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lb/a/b/c/b/c;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb/a/b/c/b/c;->a:I

    .line 3
    iget-object v0, p0, Lb/a/b/c/b/c;->b:Lb/a/b/e/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb/a/b/e/a;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/b/c/b/c;->c:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lb/a/b/c/b/c;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract e(Landroid/graphics/Bitmap;)V
.end method

.method public declared-synchronized f()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x4

    .line 1
    :try_start_0
    iput v0, p0, Lb/a/b/c/b/c;->a:I

    .line 2
    iget-object v0, p0, Lb/a/b/c/b/c;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lb/a/b/c/a/d;->c()Lb/a/b/c/a/d;

    move-result-object v0

    iget-object v1, p0, Lb/a/b/c/b/c;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lb/a/b/c/a/d;->f(Landroid/graphics/Bitmap;)Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lb/a/b/c/b/c;->c:Landroid/graphics/Bitmap;

    .line 5
    :cond_0
    iget-object v0, p0, Lb/a/b/c/b/c;->b:Lb/a/b/e/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lb/a/b/e/a;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lb/a/b/c/b/c;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lb/a/b/c/b/c;->a:I

    .line 3
    iget-object v0, p0, Lb/a/b/c/b/c;->b:Lb/a/b/e/a;

    if-nez v0, :cond_0

    invoke-virtual {p0, p0}, Lb/a/b/c/b/c;->h(Lb/a/b/e/b;)Lb/a/b/e/a;

    move-result-object v0

    iput-object v0, p0, Lb/a/b/c/b/c;->b:Lb/a/b/e/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract h(Lb/a/b/e/b;)Lb/a/b/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/b/e/b<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lb/a/b/e/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method
