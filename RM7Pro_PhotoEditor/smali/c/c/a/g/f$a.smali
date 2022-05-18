.class Lc/c/a/g/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/g/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private a:Lc/c/a/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/g/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field private b:Lc/c/a/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/g/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic d:Lc/c/a/g/f;


# direct methods
.method constructor <init>(Lc/c/a/g/f;)V
    .locals 1

    iput-object p1, p0, Lc/c/a/g/f$a;->d:Lc/c/a/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lc/c/a/g/f;->c()V

    :try_start_0
    iget-object v0, p1, Lc/c/a/g/f;->c:Lc/c/a/g/a;

    iget-object v0, v0, Lc/c/a/g/a;->c:Lc/c/a/g/a;

    iput-object v0, p0, Lc/c/a/g/f$a;->a:Lc/c/a/g/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/g/a;->b()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/g/f$a;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p1}, Lc/c/a/g/f;->d()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lc/c/a/g/f;->d()V

    throw v0
.end method

.method private a(Lc/c/a/g/a;)Lc/c/a/g/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/g/a<",
            "TE;>;)",
            "Lc/c/a/g/a<",
            "TE;>;"
        }
    .end annotation

    :goto_0
    iget-object v0, p1, Lc/c/a/g/a;->c:Lc/c/a/g/a;

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lc/c/a/g/f$a;->d:Lc/c/a/g/f;

    iget-object p1, p1, Lc/c/a/g/f;->c:Lc/c/a/g/a;

    iget-object p1, p1, Lc/c/a/g/a;->c:Lc/c/a/g/a;

    return-object p1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc/c/a/g/a;->b()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lc/c/a/g/f$a;->a:Lc/c/a/g/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/g/f$a;->d:Lc/c/a/g/f;

    invoke-virtual {v0}, Lc/c/a/g/f;->c()V

    :try_start_0
    iget-object v0, p0, Lc/c/a/g/f$a;->a:Lc/c/a/g/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lc/c/a/g/f$a;->c:Ljava/lang/Object;

    iput-object v0, p0, Lc/c/a/g/f$a;->b:Lc/c/a/g/a;

    invoke-direct {p0, v0}, Lc/c/a/g/f$a;->a(Lc/c/a/g/a;)Lc/c/a/g/a;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/g/f$a;->a:Lc/c/a/g/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lc/c/a/g/a;->b()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lc/c/a/g/f$a;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lc/c/a/g/f$a;->d:Lc/c/a/g/f;

    invoke-virtual {v0}, Lc/c/a/g/f;->d()V

    return-object v1

    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc/c/a/g/f$a;->d:Lc/c/a/g/f;

    invoke-virtual {v1}, Lc/c/a/g/f;->d()V

    throw v0
.end method

.method public remove()V
    .locals 4

    iget-object v0, p0, Lc/c/a/g/f$a;->b:Lc/c/a/g/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/c/a/g/f$a;->d:Lc/c/a/g/f;

    invoke-virtual {v0}, Lc/c/a/g/f;->c()V

    :try_start_0
    iget-object v0, p0, Lc/c/a/g/f$a;->b:Lc/c/a/g/a;

    const/4 v1, 0x0

    iput-object v1, p0, Lc/c/a/g/f$a;->b:Lc/c/a/g/a;

    iget-object v1, p0, Lc/c/a/g/f$a;->d:Lc/c/a/g/f;

    iget-object v1, v1, Lc/c/a/g/f;->c:Lc/c/a/g/a;

    :cond_0
    iget-object v2, v1, Lc/c/a/g/a;->c:Lc/c/a/g/a;

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lc/c/a/g/f$a;->d:Lc/c/a/g/f;

    invoke-virtual {v0, v1, v2}, Lc/c/a/g/f;->h(Lc/c/a/g/a;Lc/c/a/g/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lc/c/a/g/f$a;->d:Lc/c/a/g/f;

    invoke-virtual {v0}, Lc/c/a/g/f;->d()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc/c/a/g/f$a;->d:Lc/c/a/g/f;

    invoke-virtual {v1}, Lc/c/a/g/f;->d()V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
