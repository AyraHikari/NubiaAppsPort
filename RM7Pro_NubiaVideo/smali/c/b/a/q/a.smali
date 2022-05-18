.class public Lc/b/a/q/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/q/f;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/q/f<",
        "TA;TT;TZ;TR;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/q/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/q/f<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation
.end field

.field private b:Lc/b/a/n/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/e<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation
.end field

.field private c:Lc/b/a/n/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/e<",
            "TT;TZ;>;"
        }
    .end annotation
.end field

.field private d:Lc/b/a/n/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/f<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private e:Lc/b/a/n/k/j/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/k/j/c<",
            "TZ;TR;>;"
        }
    .end annotation
.end field

.field private f:Lc/b/a/n/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/b/a/q/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/q/f<",
            "TA;TT;TZ;TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/q/a;->a:Lc/b/a/q/f;

    return-void
.end method


# virtual methods
.method public a()Lc/b/a/n/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/e<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/q/a;->b:Lc/b/a/n/e;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lc/b/a/q/a;->a:Lc/b/a/q/f;

    invoke-interface {v0}, Lc/b/a/q/b;->a()Lc/b/a/n/e;

    move-result-object v0

    return-object v0
.end method

.method public b()Lc/b/a/n/j/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/j/l<",
            "TA;TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/q/a;->a:Lc/b/a/q/f;

    invoke-interface {v0}, Lc/b/a/q/f;->b()Lc/b/a/n/j/l;

    move-result-object v0

    return-object v0
.end method

.method public c()Lc/b/a/n/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/f<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/q/a;->d:Lc/b/a/n/f;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lc/b/a/q/a;->a:Lc/b/a/q/f;

    invoke-interface {v0}, Lc/b/a/q/b;->c()Lc/b/a/n/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/q/a;->g()Lc/b/a/q/a;

    move-result-object v0

    return-object v0
.end method

.method public d()Lc/b/a/n/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/q/a;->f:Lc/b/a/n/b;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lc/b/a/q/a;->a:Lc/b/a/q/f;

    invoke-interface {v0}, Lc/b/a/q/b;->d()Lc/b/a/n/b;

    move-result-object v0

    return-object v0
.end method

.method public e()Lc/b/a/n/k/j/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/k/j/c<",
            "TZ;TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/q/a;->e:Lc/b/a/n/k/j/c;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lc/b/a/q/a;->a:Lc/b/a/q/f;

    invoke-interface {v0}, Lc/b/a/q/f;->e()Lc/b/a/n/k/j/c;

    move-result-object v0

    return-object v0
.end method

.method public f()Lc/b/a/n/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/e<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/q/a;->c:Lc/b/a/n/e;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lc/b/a/q/a;->a:Lc/b/a/q/f;

    invoke-interface {v0}, Lc/b/a/q/b;->f()Lc/b/a/n/e;

    move-result-object v0

    return-object v0
.end method

.method public g()Lc/b/a/q/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/q/a<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/q/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public h(Lc/b/a/n/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/e<",
            "TT;TZ;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/b/a/q/a;->c:Lc/b/a/n/e;

    return-void
.end method

.method public i(Lc/b/a/n/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/b/a/q/a;->f:Lc/b/a/n/b;

    return-void
.end method
