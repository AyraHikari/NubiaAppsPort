.class abstract Lcom/a/a/b/c;
.super Lcom/a/a/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/e<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/a/a/b/e;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/a/a/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/d<",
            "TE;>;"
        }
    .end annotation
.end method

.method b()Z
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/a/a/b/c;->a()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->b()Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/a/a/b/c;->a()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/b/d;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/a/a/b/c;->a()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/a/a/b/c;->a()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->size()I

    move-result v0

    return v0
.end method
