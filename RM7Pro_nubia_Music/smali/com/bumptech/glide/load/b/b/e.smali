.class public Lcom/bumptech/glide/load/b/b/e;
.super Lcom/bumptech/glide/load/b/n;
.source "StreamResourceLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/b/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/b/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/b/n",
        "<",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/bumptech/glide/load/b/b/d",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/b/l",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/b/n;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/l;)V

    .line 41
    return-void
.end method
