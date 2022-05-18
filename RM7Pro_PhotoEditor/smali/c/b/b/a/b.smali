.class public Lc/b/b/a/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/b/a/b$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/b/b/a/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:La/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/a<",
            "Lc/b/b/a/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lc/b/b/a/b$a;


# direct methods
.method public constructor <init>(ILa/c/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "La/c/a<",
            "Lc/b/b/a/b$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc/b/b/a/b;->b:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lc/b/b/a/b;->c:I

    iput p1, p0, Lc/b/b/a/b;->a:I

    iput-object p2, p0, Lc/b/b/a/b;->d:La/c/a;

    return-void
.end method

.method private b(I)V
    .locals 2

    iget v0, p0, Lc/b/b/a/b;->a:I

    sub-int/2addr v0, p1

    :goto_0
    iget-object p1, p0, Lc/b/b/a/b;->e:Lc/b/b/a/b$a;

    if-eqz p1, :cond_0

    iget v1, p0, Lc/b/b/a/b;->c:I

    if-le v1, v0, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lc/b/b/a/b;->c(Lc/b/b/a/b$a;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Lc/b/b/a/b$a;Z)V
    .locals 3

    iget-object v0, p1, Lc/b/b/a/b$a;->b:Lc/b/b/a/b$a;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lc/b/b/a/b$a;->c:Lc/b/b/a/b$a;

    iput-object v1, v0, Lc/b/b/a/b$a;->c:Lc/b/b/a/b$a;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/b/b/a/b;->b:Landroid/util/SparseArray;

    iget-object v1, p1, Lc/b/b/a/b$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p1, Lc/b/b/a/b$a;->c:Lc/b/b/a/b$a;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    iget-object v0, p1, Lc/b/b/a/b$a;->c:Lc/b/b/a/b$a;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lc/b/b/a/b$a;->b:Lc/b/b/a/b$a;

    iput-object v1, v0, Lc/b/b/a/b$a;->b:Lc/b/b/a/b$a;

    :cond_1
    iget-object v0, p1, Lc/b/b/a/b$a;->e:Lc/b/b/a/b$a;

    iget-object v1, p1, Lc/b/b/a/b$a;->d:Lc/b/b/a/b$a;

    if-eqz v0, :cond_2

    iput-object v1, v0, Lc/b/b/a/b$a;->d:Lc/b/b/a/b$a;

    :cond_2
    iget-object v1, p1, Lc/b/b/a/b$a;->d:Lc/b/b/a/b$a;

    if-eqz v1, :cond_3

    iput-object v0, v1, Lc/b/b/a/b$a;->e:Lc/b/b/a/b$a;

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p1, Lc/b/b/a/b$a;->c:Lc/b/b/a/b$a;

    iput-object v0, p1, Lc/b/b/a/b$a;->d:Lc/b/b/a/b$a;

    iput-object v0, p1, Lc/b/b/a/b$a;->b:Lc/b/b/a/b$a;

    iput-object v0, p1, Lc/b/b/a/b$a;->e:Lc/b/b/a/b$a;

    iget v1, p0, Lc/b/b/a/b;->c:I

    iget-object v2, p1, Lc/b/b/a/b$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lc/b/b/a/b;->c:I

    if-eqz p2, :cond_4

    iget-object p2, p1, Lc/b/b/a/b$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    iput-object v0, p1, Lc/b/b/a/b$a;->a:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lc/b/b/a/b;->d:La/c/a;

    invoke-interface {p2, p1}, La/c/a;->release(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lc/b/b/a/b;->a:I

    invoke-direct {p0, v0}, Lc/b/b/a/b;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
