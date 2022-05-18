.class public Lcom/bumptech/glide/load/b/a/e;
.super Lcom/bumptech/glide/load/b/q;
.source "FileDescriptorUriLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/a/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/b/q",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Lcom/bumptech/glide/load/b/a/b",
        "<",
        "Landroid/net/Uri;",
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
            "Lcom/bumptech/glide/load/b/d;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/b/q;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/l;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/load/a/c",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/bumptech/glide/load/a/e;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/a/e;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)Lcom/bumptech/glide/load/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/load/a/c",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/bumptech/glide/load/a/d;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/load/a/d;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method
