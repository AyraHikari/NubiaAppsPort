.class public Lcom/bumptech/glide/c;
.super Lcom/bumptech/glide/e;
.source "DrawableRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/e",
        "<TModelType;",
        "Lcom/bumptech/glide/load/b/g;",
        "Lcom/bumptech/glide/load/resource/d/a;",
        "Lcom/bumptech/glide/load/resource/a/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/e/f;Lcom/bumptech/glide/g;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/g;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/bumptech/glide/e/f",
            "<TModelType;",
            "Lcom/bumptech/glide/load/b/g;",
            "Lcom/bumptech/glide/load/resource/d/a;",
            "Lcom/bumptech/glide/load/resource/a/b;",
            ">;",
            "Lcom/bumptech/glide/g;",
            "Lcom/bumptech/glide/manager/l;",
            "Lcom/bumptech/glide/manager/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    const-class v4, Lcom/bumptech/glide/load/resource/a/b;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/e;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/e/f;Ljava/lang/Class;Lcom/bumptech/glide/g;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/g;)V

    .line 51
    invoke-virtual {p0}, Lcom/bumptech/glide/c;->a()Lcom/bumptech/glide/c;

    .line 52
    return-void
.end method


# virtual methods
.method public final a()Lcom/bumptech/glide/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Lcom/bumptech/glide/request/a/c;

    invoke-direct {v0}, Lcom/bumptech/glide/request/a/c;-><init>()V

    invoke-super {p0, v0}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/request/a/f;)Lcom/bumptech/glide/e;

    .line 248
    return-object p0
.end method

.method public a(I)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 328
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->e(I)Lcom/bumptech/glide/e;

    .line 329
    return-object p0
.end method

.method public a(II)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 404
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/e;->b(II)Lcom/bumptech/glide/e;

    .line 405
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/e;

    .line 144
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a",
            "<",
            "Lcom/bumptech/glide/load/b/g;",
            ">;)",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 413
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/e;

    .line 414
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            ")",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 428
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/e;

    .line 429
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Lcom/bumptech/glide/load/b/g;",
            "Lcom/bumptech/glide/load/resource/d/a;",
            ">;)",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->d(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e;

    .line 117
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 386
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/e;

    .line 387
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/request/a/f;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/f",
            "<",
            "Lcom/bumptech/glide/load/resource/a/b;",
            ">;)",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 299
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/request/a/f;)Lcom/bumptech/glide/e;

    .line 300
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 434
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Ljava/lang/Object;)Lcom/bumptech/glide/e;

    .line 435
    return-object p0
.end method

.method public a(Z)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 395
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Z)Lcom/bumptech/glide/e;

    .line 396
    return-object p0
.end method

.method public varargs a([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/f",
            "<",
            "Lcom/bumptech/glide/load/resource/d/a;",
            ">;)",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 229
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/e;

    .line 230
    return-object p0
.end method

.method public b()Lcom/bumptech/glide/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 440
    invoke-super {p0}, Lcom/bumptech/glide/e;->c()Lcom/bumptech/glide/e;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/c;

    return-object v0
.end method

.method public b(I)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 358
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->d(I)Lcom/bumptech/glide/e;

    .line 359
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/resource/d/a;",
            ">;)",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->c(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e;

    .line 126
    return-object p0
.end method

.method public synthetic b(II)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/c;->a(II)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/request/a/f;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/request/a/f;)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(Ljava/lang/Object;)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Z)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(Z)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/bumptech/glide/c;->b()Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/bumptech/glide/c;->b()Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(I)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->b(I)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(I)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(I)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method
