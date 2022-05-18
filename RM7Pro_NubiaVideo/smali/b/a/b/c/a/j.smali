.class public Lb/a/b/c/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/c/a/j$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lb/a/b/c/a/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lb/a/b/c/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/b/c/a/g<",
            "Lb/a/b/c/a/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lb/a/b/c/a/j$a;

.field private f:Lb/a/b/c/a/j$a;


# direct methods
.method public constructor <init>(ILb/a/b/c/a/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lb/a/b/c/a/g<",
            "Lb/a/b/c/a/j$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lb/a/b/c/a/j;->b:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lb/a/b/c/a/j;->c:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lb/a/b/c/a/j;->e:Lb/a/b/c/a/j$a;

    .line 5
    iput-object v0, p0, Lb/a/b/c/a/j;->f:Lb/a/b/c/a/j$a;

    .line 6
    iput p1, p0, Lb/a/b/c/a/j;->a:I

    .line 7
    iput-object p2, p0, Lb/a/b/c/a/j;->d:Lb/a/b/c/a/g;

    return-void
.end method

.method private b(I)V
    .locals 2

    .line 1
    iget v0, p0, Lb/a/b/c/a/j;->a:I

    sub-int/2addr v0, p1

    .line 2
    :goto_0
    iget-object p1, p0, Lb/a/b/c/a/j;->f:Lb/a/b/c/a/j$a;

    if-eqz p1, :cond_0

    iget v1, p0, Lb/a/b/c/a/j;->c:I

    if-le v1, v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, p1, v1}, Lb/a/b/c/a/j;->e(Lb/a/b/c/a/j$a;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(Lb/a/b/c/a/j$a;Z)V
    .locals 3

    .line 1
    iget-object v0, p1, Lb/a/b/c/a/j$a;->b:Lb/a/b/c/a/j$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p1, Lb/a/b/c/a/j$a;->c:Lb/a/b/c/a/j$a;

    iput-object v1, v0, Lb/a/b/c/a/j$a;->c:Lb/a/b/c/a/j$a;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/b/c/a/j;->b:Landroid/util/SparseArray;

    iget-object v1, p1, Lb/a/b/c/a/j$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p1, Lb/a/b/c/a/j$a;->c:Lb/a/b/c/a/j$a;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v0, p1, Lb/a/b/c/a/j$a;->c:Lb/a/b/c/a/j$a;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p1, Lb/a/b/c/a/j$a;->b:Lb/a/b/c/a/j$a;

    iput-object v1, v0, Lb/a/b/c/a/j$a;->b:Lb/a/b/c/a/j$a;

    .line 6
    :cond_1
    iget-object v0, p1, Lb/a/b/c/a/j$a;->e:Lb/a/b/c/a/j$a;

    if-eqz v0, :cond_2

    .line 7
    iget-object v1, p1, Lb/a/b/c/a/j$a;->d:Lb/a/b/c/a/j$a;

    iput-object v1, v0, Lb/a/b/c/a/j$a;->d:Lb/a/b/c/a/j$a;

    goto :goto_1

    .line 8
    :cond_2
    iget-object v1, p1, Lb/a/b/c/a/j$a;->d:Lb/a/b/c/a/j$a;

    iput-object v1, p0, Lb/a/b/c/a/j;->e:Lb/a/b/c/a/j$a;

    .line 9
    :goto_1
    iget-object v1, p1, Lb/a/b/c/a/j$a;->d:Lb/a/b/c/a/j$a;

    if-eqz v1, :cond_3

    .line 10
    iput-object v0, v1, Lb/a/b/c/a/j$a;->e:Lb/a/b/c/a/j$a;

    goto :goto_2

    .line 11
    :cond_3
    iput-object v0, p0, Lb/a/b/c/a/j;->f:Lb/a/b/c/a/j$a;

    :goto_2
    const/4 v0, 0x0

    .line 12
    iput-object v0, p1, Lb/a/b/c/a/j$a;->c:Lb/a/b/c/a/j$a;

    .line 13
    iput-object v0, p1, Lb/a/b/c/a/j$a;->d:Lb/a/b/c/a/j$a;

    .line 14
    iput-object v0, p1, Lb/a/b/c/a/j$a;->b:Lb/a/b/c/a/j$a;

    .line 15
    iput-object v0, p1, Lb/a/b/c/a/j$a;->e:Lb/a/b/c/a/j$a;

    .line 16
    iget v1, p0, Lb/a/b/c/a/j;->c:I

    iget-object v2, p1, Lb/a/b/c/a/j$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lb/a/b/c/a/j;->c:I

    if-eqz p2, :cond_4

    .line 17
    iget-object p2, p1, Lb/a/b/c/a/j$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 18
    :cond_4
    iput-object v0, p1, Lb/a/b/c/a/j$a;->a:Landroid/graphics/Bitmap;

    .line 19
    iget-object p2, p0, Lb/a/b/c/a/j;->d:Lb/a/b/c/a/g;

    invoke-interface {p2, p1}, Lb/a/b/c/a/g;->release(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lb/a/b/c/a/j;->a:I

    invoke-direct {p0, v0}, Lb/a/b/c/a/j;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(II)Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/b/c/a/j;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/a/b/c/a/j$a;

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p1, Lb/a/b/c/a/j$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 3
    iget-object p2, p1, Lb/a/b/c/a/j$a;->a:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lb/a/b/c/a/j;->e(Lb/a/b/c/a/j$a;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-object p2

    .line 6
    :cond_0
    :try_start_1
    iget-object p1, p1, Lb/a/b/c/a/j$a;->c:Lb/a/b/c/a/j$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 7
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Landroid/graphics/Bitmap;)Z
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    monitor-exit p0

    return p1

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 3
    invoke-direct {p0, v0}, Lb/a/b/c/a/j;->b(I)V

    .line 4
    iget-object v1, p0, Lb/a/b/c/a/j;->d:Lb/a/b/c/a/g;

    invoke-interface {v1}, Lb/a/b/c/a/g;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/b/c/a/j$a;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lb/a/b/c/a/j$a;

    invoke-direct {v1}, Lb/a/b/c/a/j$a;-><init>()V

    .line 6
    :cond_1
    iput-object p1, v1, Lb/a/b/c/a/j$a;->a:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 7
    iput-object v2, v1, Lb/a/b/c/a/j$a;->b:Lb/a/b/c/a/j$a;

    .line 8
    iput-object v2, v1, Lb/a/b/c/a/j$a;->e:Lb/a/b/c/a/j$a;

    .line 9
    iget-object v2, p0, Lb/a/b/c/a/j;->e:Lb/a/b/c/a/j$a;

    iput-object v2, v1, Lb/a/b/c/a/j$a;->d:Lb/a/b/c/a/j$a;

    .line 10
    iput-object v1, p0, Lb/a/b/c/a/j;->e:Lb/a/b/c/a/j$a;

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 12
    iget-object v2, p0, Lb/a/b/c/a/j;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/b/c/a/j$a;

    iput-object v2, v1, Lb/a/b/c/a/j$a;->c:Lb/a/b/c/a/j$a;

    if-eqz v2, :cond_2

    .line 13
    iput-object v1, v2, Lb/a/b/c/a/j$a;->b:Lb/a/b/c/a/j$a;

    .line 14
    :cond_2
    iget-object v2, p0, Lb/a/b/c/a/j;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    iget-object p1, v1, Lb/a/b/c/a/j$a;->d:Lb/a/b/c/a/j$a;

    if-nez p1, :cond_3

    .line 16
    iput-object v1, p0, Lb/a/b/c/a/j;->f:Lb/a/b/c/a/j$a;

    goto :goto_0

    .line 17
    :cond_3
    iput-object v1, p1, Lb/a/b/c/a/j$a;->e:Lb/a/b/c/a/j$a;

    .line 18
    :goto_0
    iget p1, p0, Lb/a/b/c/a/j;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Lb/a/b/c/a/j;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 19
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
