.class public abstract Lcom/bumptech/glide/load/resource/bitmap/d;
.super Ljava/lang/Object;
.source "BitmapTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/f",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/load/engine/a/c;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/c;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/d;->a:Lcom/bumptech/glide/load/engine/a/c;

    .line 43
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/bumptech/glide/load/engine/a/c;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.end method

.method public final a(Lcom/bumptech/glide/load/engine/i;II)Lcom/bumptech/glide/load/engine/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/i",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/i",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v1, -0x80000000

    .line 47
    invoke-static {p2, p3}, Lcom/bumptech/glide/g/h;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot apply transformation on width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " less than or equal to zero and not Target.SIZE_ORIGINAL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/i;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 52
    if-ne p2, v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 53
    :cond_1
    if-ne p3, v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/d;->a:Lcom/bumptech/glide/load/engine/a/c;

    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/d;->a(Lcom/bumptech/glide/load/engine/a/c;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    :goto_0
    return-object p1

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/d;->a:Lcom/bumptech/glide/load/engine/a/c;

    invoke-static {v1, v0}, Lcom/bumptech/glide/load/resource/bitmap/c;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/a/c;)Lcom/bumptech/glide/load/resource/bitmap/c;

    move-result-object p1

    goto :goto_0
.end method
