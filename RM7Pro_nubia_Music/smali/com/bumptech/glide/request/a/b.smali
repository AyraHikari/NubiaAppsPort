.class public Lcom/bumptech/glide/request/a/b;
.super Lcom/bumptech/glide/request/a/a;
.source "BitmapCrossFadeFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/a/a",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/bumptech/glide/request/a/a;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/a/a;-><init>(I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 38
    return-object p1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/a/b;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
