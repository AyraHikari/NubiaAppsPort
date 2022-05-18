.class public abstract Lcom/bumptech/glide/request/a/a;
.super Ljava/lang/Object;
.source "BitmapContainerCrossFadeFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/a/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/a/f",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/request/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/a/f",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/bumptech/glide/request/a/c;

    invoke-direct {v0}, Lcom/bumptech/glide/request/a/c;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/a/a;-><init>(Lcom/bumptech/glide/request/a/f;)V

    .line 24
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/bumptech/glide/request/a/c;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/a/c;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/a/a;-><init>(Lcom/bumptech/glide/request/a/f;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/request/a/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/f",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/bumptech/glide/request/a/a;->a:Lcom/bumptech/glide/request/a/f;

    .line 40
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method

.method public a(ZZ)Lcom/bumptech/glide/request/a/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/request/a/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/request/a/a;->a:Lcom/bumptech/glide/request/a/f;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/request/a/f;->a(ZZ)Lcom/bumptech/glide/request/a/e;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/bumptech/glide/request/a/a$a;

    invoke-direct {v1, p0, v0}, Lcom/bumptech/glide/request/a/a$a;-><init>(Lcom/bumptech/glide/request/a/a;Lcom/bumptech/glide/request/a/e;)V

    return-object v1
.end method
