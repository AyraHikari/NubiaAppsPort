.class public Lb/a/b/c/b/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lb/a/b/c/b/r;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lb/a/b/c/b/m;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private c:Lb/a/b/c/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/b/c/b/j<",
            "Ljava/lang/String;",
            "Lb/a/b/c/b/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lb/a/b/c/b/r;

    const/4 v1, 0x0

    const-string v2, "ROOT"

    invoke-direct {v0, v1, v2}, Lb/a/b/c/b/r;-><init>(Lb/a/b/c/b/r;Ljava/lang/String;)V

    sput-object v0, Lb/a/b/c/b/r;->d:Lb/a/b/c/b/r;

    return-void
.end method

.method private constructor <init>(Lb/a/b/c/b/r;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lb/a/b/c/b/r;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lb/a/b/c/b/r;
    .locals 4

    .line 1
    const-class v0, Lb/a/b/c/b/r;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p0}, Lb/a/b/c/b/r;->g(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-object v1, Lb/a/b/c/b/r;->d:Lb/a/b/c/b/r;

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 5
    aget-object v3, p0, v2

    invoke-direct {v1, v3}, Lb/a/b/c/b/r;->c(Ljava/lang/String;)Lb/a/b/c/b/r;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private c(Ljava/lang/String;)Lb/a/b/c/b/r;
    .locals 3

    .line 1
    const-class v0, Lb/a/b/c/b/r;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lb/a/b/c/b/r;->c:Lb/a/b/c/b/j;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lb/a/b/c/b/j;

    invoke-direct {v1}, Lb/a/b/c/b/j;-><init>()V

    iput-object v1, p0, Lb/a/b/c/b/r;->c:Lb/a/b/c/b/j;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1, p1}, Lb/a/b/c/b/j;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/b/c/b/r;

    if-eqz v1, :cond_1

    .line 5
    monitor-exit v0

    return-object v1

    .line 6
    :cond_1
    :goto_0
    new-instance v1, Lb/a/b/c/b/r;

    invoke-direct {v1, p0, p1}, Lb/a/b/c/b/r;-><init>(Lb/a/b/c/b/r;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lb/a/b/c/b/r;->c:Lb/a/b/c/b/j;

    invoke-virtual {v2, p1, v1}, Lb/a/b/c/b/j;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static g(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_7

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v0, :cond_6

    move v6, v1

    move v5, v4

    :goto_1
    if-ge v5, v0, :cond_4

    .line 4
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x7b

    if-ne v7, v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    const/16 v8, 0x7d

    if-ne v7, v8, :cond_2

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_2
    if-nez v6, :cond_3

    if-ne v7, v3, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-nez v6, :cond_5

    .line 5
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v5, 0x1

    goto :goto_0

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbalanced brace in path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 8
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0

    .line 9
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b(I)Lb/a/b/c/b/r;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/a/b/c/b/r;->c(Ljava/lang/String;)Lb/a/b/c/b/r;

    move-result-object p1

    return-object p1
.end method

.method public d()Lb/a/b/c/b/m;
    .locals 2

    .line 1
    const-class v0, Lb/a/b/c/b/r;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lb/a/b/c/b/r;->a:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/b/c/b/m;

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/r;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(Lb/a/b/c/b/m;)V
    .locals 2

    .line 1
    const-class v0, Lb/a/b/c/b/r;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lb/a/b/c/b/r;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lb/a/b/c/b/r;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lb/a/b/c/b/r;->a:Ljava/lang/ref/WeakReference;

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
