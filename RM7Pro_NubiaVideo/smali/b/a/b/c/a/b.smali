.class public Lb/a/b/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/c/a/b$b;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/a/b/c/a/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lb/a/b/c/a/b;->c:Ljava/util/ArrayList;

    .line 3
    iput p1, p0, Lb/a/b/c/a/b;->a:I

    .line 4
    iput p2, p0, Lb/a/b/c/a/b;->b:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/b/c/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
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

.method public declared-synchronized b()Lb/a/b/c/a/b$b;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/b/c/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lb/a/b/c/a/b;->c:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/b/c/a/b$b;

    goto :goto_0

    :cond_0
    new-instance v0, Lb/a/b/c/a/b$b;

    iget v1, p0, Lb/a/b/c/a/b;->b:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/a/b/c/a/b$b;-><init>(ILb/a/b/c/a/b$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Lb/a/b/c/a/b$b;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Lb/a/b/c/a/b$b;->a:[B

    array-length v0, v0

    iget v1, p0, Lb/a/b/c/a/b;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lb/a/b/c/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lb/a/b/c/a/b;->a:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    .line 3
    iput v0, p1, Lb/a/b/c/a/b$b;->b:I

    .line 4
    iput v0, p1, Lb/a/b/c/a/b$b;->c:I

    .line 5
    iget-object v0, p0, Lb/a/b/c/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
