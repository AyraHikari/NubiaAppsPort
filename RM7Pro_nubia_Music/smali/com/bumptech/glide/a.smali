.class public Lcom/bumptech/glide/a;
.super Lcom/bumptech/glide/e;
.source "BitmapRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/e",
        "<TModelType;",
        "Lcom/bumptech/glide/load/b/g;",
        "Landroid/graphics/Bitmap;",
        "TTranscodeType;>;"
    }
.end annotation


# instance fields
.field private final g:Lcom/bumptech/glide/load/engine/a/c;

.field private h:Lcom/bumptech/glide/load/resource/bitmap/f;

.field private i:Lcom/bumptech/glide/load/DecodeFormat;

.field private j:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/e/f;Ljava/lang/Class;Lcom/bumptech/glide/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/f",
            "<TModelType;",
            "Lcom/bumptech/glide/load/b/g;",
            "Landroid/graphics/Bitmap;",
            "TTranscodeType;>;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/e",
            "<TModelType;***>;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/e;-><init>(Lcom/bumptech/glide/e/f;Ljava/lang/Class;Lcom/bumptech/glide/e;)V

    .line 55
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/f;->a:Lcom/bumptech/glide/load/resource/bitmap/f;

    iput-object v0, p0, Lcom/bumptech/glide/a;->h:Lcom/bumptech/glide/load/resource/bitmap/f;

    .line 63
    iget-object v0, p3, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/g;->a()Lcom/bumptech/glide/load/engine/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/a;->g:Lcom/bumptech/glide/load/engine/a/c;

    .line 64
    iget-object v0, p3, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/g;->d()Lcom/bumptech/glide/load/DecodeFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/a;->i:Lcom/bumptech/glide/load/DecodeFormat;

    .line 66
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/o;

    iget-object v1, p0, Lcom/bumptech/glide/a;->g:Lcom/bumptech/glide/load/engine/a/c;

    iget-object v2, p0, Lcom/bumptech/glide/a;->i:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/o;-><init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/a;->j:Lcom/bumptech/glide/load/d;

    .line 67
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/h;

    iget-object v1, p0, Lcom/bumptech/glide/a;->g:Lcom/bumptech/glide/load/engine/a/c;

    iget-object v2, p0, Lcom/bumptech/glide/a;->i:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/h;-><init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/a;->k:Lcom/bumptech/glide/load/d;

    .line 68
    return-void
.end method

.method private d()Ljava/lang/RuntimeException;
    .locals 4

    .prologue
    .line 322
    iget-object v0, p0, Lcom/bumptech/glide/a;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 323
    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/bumptech/glide/a;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".crossFade() is not supported for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", use .animate() to provide a compatible animation."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final a()Lcom/bumptech/glide/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 335
    const-class v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/bumptech/glide/a;->d:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    new-instance v0, Lcom/bumptech/glide/request/a/b;

    invoke-direct {v0}, Lcom/bumptech/glide/request/a/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/request/a/f;)Lcom/bumptech/glide/a;

    move-result-object v0

    .line 339
    :goto_0
    return-object v0

    .line 338
    :cond_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/bumptech/glide/a;->d:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    new-instance v0, Lcom/bumptech/glide/request/a/c;

    invoke-direct {v0}, Lcom/bumptech/glide/request/a/c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/request/a/f;)Lcom/bumptech/glide/a;

    move-result-object v0

    goto :goto_0

    .line 342
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/a;->d()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public a(I)Lcom/bumptech/glide/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 351
    const-class v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/bumptech/glide/a;->d:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Lcom/bumptech/glide/request/a/b;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/a/b;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/request/a/f;)Lcom/bumptech/glide/a;

    move-result-object v0

    .line 355
    :goto_0
    return-object v0

    .line 354
    :cond_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/bumptech/glide/a;->d:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    new-instance v0, Lcom/bumptech/glide/request/a/c;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/a/c;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/request/a/f;)Lcom/bumptech/glide/a;

    move-result-object v0

    goto :goto_0

    .line 358
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/a;->d()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public a(II)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 525
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/e;->b(II)Lcom/bumptech/glide/e;

    .line 526
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lcom/bumptech/glide/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 254
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/e;

    .line 255
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ")",
            "Lcom/bumptech/glide/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 244
    iput-object p1, p0, Lcom/bumptech/glide/a;->i:Lcom/bumptech/glide/load/DecodeFormat;

    .line 245
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/o;

    iget-object v1, p0, Lcom/bumptech/glide/a;->h:Lcom/bumptech/glide/load/resource/bitmap/f;

    iget-object v2, p0, Lcom/bumptech/glide/a;->g:Lcom/bumptech/glide/load/engine/a/c;

    invoke-direct {v0, v1, v2, p1}, Lcom/bumptech/glide/load/resource/bitmap/o;-><init>(Lcom/bumptech/glide/load/resource/bitmap/f;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/a;->j:Lcom/bumptech/glide/load/d;

    .line 246
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/h;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/q;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/q;-><init>()V

    iget-object v2, p0, Lcom/bumptech/glide/a;->g:Lcom/bumptech/glide/load/engine/a/c;

    invoke-direct {v0, v1, v2, p1}, Lcom/bumptech/glide/load/resource/bitmap/h;-><init>(Lcom/bumptech/glide/load/resource/bitmap/q;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/a;->k:Lcom/bumptech/glide/load/d;

    .line 247
    new-instance v0, Lcom/bumptech/glide/load/resource/b/c;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/o;

    iget-object v2, p0, Lcom/bumptech/glide/a;->h:Lcom/bumptech/glide/load/resource/bitmap/f;

    iget-object v3, p0, Lcom/bumptech/glide/a;->g:Lcom/bumptech/glide/load/engine/a/c;

    invoke-direct {v1, v2, v3, p1}, Lcom/bumptech/glide/load/resource/bitmap/o;-><init>(Lcom/bumptech/glide/load/resource/bitmap/f;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/b/c;-><init>(Lcom/bumptech/glide/load/d;)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/e;->c(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e;

    .line 248
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/l;

    iget-object v1, p0, Lcom/bumptech/glide/a;->j:Lcom/bumptech/glide/load/d;

    iget-object v2, p0, Lcom/bumptech/glide/a;->k:Lcom/bumptech/glide/load/d;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/e;->d(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e;

    .line 249
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a",
            "<",
            "Lcom/bumptech/glide/load/b/g;",
            ">;)",
            "Lcom/bumptech/glide/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 544
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/e;

    .line 545
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            ")",
            "Lcom/bumptech/glide/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 559
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/e;

    .line 560
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Lcom/bumptech/glide/load/b/g;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->d(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e;

    .line 175
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 516
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/e;

    .line 517
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/request/a/f;)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/f",
            "<TTranscodeType;>;)",
            "Lcom/bumptech/glide/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 440
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/request/a/f;)Lcom/bumptech/glide/e;

    .line 441
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 565
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Ljava/lang/Object;)Lcom/bumptech/glide/e;

    .line 566
    return-object p0
.end method

.method public a(Z)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 507
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Z)Lcom/bumptech/glide/e;

    .line 508
    return-object p0
.end method

.method public varargs a([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 307
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/e;

    .line 308
    return-object p0
.end method

.method public b()Lcom/bumptech/glide/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 571
    invoke-super {p0}, Lcom/bumptech/glide/e;->c()Lcom/bumptech/glide/e;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/a;

    return-object v0
.end method

.method public b(I)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 449
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->e(I)Lcom/bumptech/glide/e;

    .line 450
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->c(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e;

    .line 184
    return-object p0
.end method

.method public synthetic b(II)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/a;->a(II)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/request/a/f;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/request/a/f;)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->a(Ljava/lang/Object;)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Z)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->a(Z)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->a([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/bumptech/glide/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 479
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->d(I)Lcom/bumptech/glide/e;

    .line 480
    return-object p0
.end method

.method public synthetic c()Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/bumptech/glide/a;->b()Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/bumptech/glide/a;->b()Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(I)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->c(I)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(I)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a;->b(I)Lcom/bumptech/glide/a;

    move-result-object v0

    return-object v0
.end method
