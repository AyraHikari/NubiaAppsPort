.class public Lcom/bumptech/glide/request/b/b;
.super Lcom/bumptech/glide/request/b/d;
.source "BitmapImageViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/b/d",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/b/d;-><init>(Landroid/widget/ImageView;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bumptech/glide/request/b/b;->f:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 26
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/b/b;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
