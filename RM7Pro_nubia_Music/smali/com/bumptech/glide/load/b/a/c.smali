.class public Lcom/bumptech/glide/load/b/a/c;
.super Lcom/bumptech/glide/load/b/n;
.source "FileDescriptorResourceLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/b/n",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Lcom/bumptech/glide/load/b/a/b",
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
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/b/n;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/l;)V

    .line 42
    return-void
.end method
