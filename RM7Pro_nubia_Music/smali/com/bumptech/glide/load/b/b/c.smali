.class public Lcom/bumptech/glide/load/b/b/c;
.super Lcom/bumptech/glide/load/b/b;
.source "StreamFileLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/b/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/b/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/b/b",
        "<",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/bumptech/glide/load/b/b/d",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/l",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/b/b;-><init>(Lcom/bumptech/glide/load/b/l;)V

    .line 41
    return-void
.end method
