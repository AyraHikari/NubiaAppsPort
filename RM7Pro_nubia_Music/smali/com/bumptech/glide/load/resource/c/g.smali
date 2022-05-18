.class Lcom/bumptech/glide/load/resource/c/g;
.super Ljava/lang/Object;
.source "GifFrameModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/c/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/l",
        "<",
        "Lcom/bumptech/glide/b/a;",
        "Lcom/bumptech/glide/b/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/b/a;II)Lcom/bumptech/glide/load/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/b/a;",
            "II)",
            "Lcom/bumptech/glide/load/a/c",
            "<",
            "Lcom/bumptech/glide/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Lcom/bumptech/glide/load/resource/c/g$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/c/g$a;-><init>(Lcom/bumptech/glide/b/a;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;
    .locals 1

    .prologue
    .line 8
    check-cast p1, Lcom/bumptech/glide/b/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/c/g;->a(Lcom/bumptech/glide/b/a;II)Lcom/bumptech/glide/load/a/c;

    move-result-object v0

    return-object v0
.end method
