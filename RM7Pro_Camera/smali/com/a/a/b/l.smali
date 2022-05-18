.class final Lcom/a/a/b/l;
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


# instance fields
.field final transient a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/a/a/b/e;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(II)Lcom/a/a/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/a/a/b/e<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 57
    invoke-static {p1, p2, v0}, Lcom/a/a/a/c;->a(III)V

    if-ne p1, p2, :cond_0

    .line 58
    invoke-static {}, Lcom/a/a/b/e;->e()Lcom/a/a/b/e;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Lcom/a/a/b/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/m<",
            "TE;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/a/a/b/f;->a(Ljava/lang/Object;)Lcom/a/a/b/m;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 41
    invoke-static {p1, v0}, Lcom/a/a/a/c;->a(II)I

    .line 42
    iget-object p1, p0, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/a/a/b/l;->c()Lcom/a/a/b/m;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/l;->a(II)Lcom/a/a/b/e;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/b/l;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
