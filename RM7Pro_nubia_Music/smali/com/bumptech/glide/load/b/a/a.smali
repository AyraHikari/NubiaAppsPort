.class public Lcom/bumptech/glide/load/b/a/a;
.super Lcom/bumptech/glide/load/b/b;
.source "FileDescriptorFileLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/b/b",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Lcom/bumptech/glide/load/b/a/b",
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
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/b/b;-><init>(Lcom/bumptech/glide/load/b/l;)V

    .line 43
    return-void
.end method
