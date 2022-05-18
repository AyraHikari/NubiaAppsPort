.class public Lcom/bumptech/glide/load/b/a/e$a;
.super Ljava/lang/Object;
.source "FileDescriptorUriLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/m",
        "<",
        "Landroid/net/Uri;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/load/b/c;)Lcom/bumptech/glide/load/b/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/b/c;",
            ")",
            "Lcom/bumptech/glide/load/b/l",
            "<",
            "Landroid/net/Uri;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/bumptech/glide/load/b/a/e;

    const-class v1, Lcom/bumptech/glide/load/b/d;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2, v1, v2}, Lcom/bumptech/glide/load/b/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/l;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/b/a/e;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/l;)V

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
