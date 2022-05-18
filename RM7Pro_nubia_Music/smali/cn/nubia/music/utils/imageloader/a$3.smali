.class Lcn/nubia/music/utils/imageloader/a$3;
.super Lcom/bumptech/glide/request/b/b;
.source "GlideImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/utils/imageloader/a;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;Lcom/bumptech/glide/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

.field final synthetic d:I

.field final synthetic e:Lcn/nubia/music/utils/imageloader/a;


# direct methods
.method constructor <init>(Lcn/nubia/music/utils/imageloader/a;Landroid/widget/ImageView;ZILcn/nubia/music/utils/imageloader/ImageLoaderListener;I)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcn/nubia/music/utils/imageloader/a$3;->e:Lcn/nubia/music/utils/imageloader/a;

    iput-boolean p3, p0, Lcn/nubia/music/utils/imageloader/a$3;->a:Z

    iput p4, p0, Lcn/nubia/music/utils/imageloader/a$3;->b:I

    iput-object p5, p0, Lcn/nubia/music/utils/imageloader/a$3;->c:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    iput p6, p0, Lcn/nubia/music/utils/imageloader/a$3;->d:I

    invoke-direct {p0, p2}, Lcom/bumptech/glide/request/b/b;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 226
    iget-boolean v0, p0, Lcn/nubia/music/utils/imageloader/a$3;->a:Z

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "GlideImageFetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcn/nubia/music/utils/imageloader/a$3;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/music/utils/imageloader/a$a;

    iget-object v2, p0, Lcn/nubia/music/utils/imageloader/a$3;->e:Lcn/nubia/music/utils/imageloader/a;

    invoke-direct {v1, v2, p1}, Lcn/nubia/music/utils/imageloader/a$a;-><init>(Lcn/nubia/music/utils/imageloader/a;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/b/b;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/a/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/a/e",
            "<-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    iget-boolean v0, p0, Lcn/nubia/music/utils/imageloader/a$3;->a:Z

    if-eqz v0, :cond_0

    .line 263
    const-string v0, "GlideImageFetcher"

    const-string v1, "onResourceReady"

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/b/b;->onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/a/e;)V

    .line 266
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$3;->c:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$3;->c:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    invoke-interface {v0, p1}, Lcn/nubia/music/utils/imageloader/ImageLoaderListener;->onLoadComplete(Ljava/lang/Object;)V

    .line 269
    :cond_1
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 223
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcn/nubia/music/utils/imageloader/a$3;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 249
    iget-boolean v0, p0, Lcn/nubia/music/utils/imageloader/a$3;->a:Z

    if-eqz v0, :cond_0

    .line 250
    const-string v0, "GlideImageFetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFailed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/music/utils/imageloader/a$3;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_0
    iget v0, p0, Lcn/nubia/music/utils/imageloader/a$3;->d:I

    if-lez v0, :cond_1

    .line 253
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/b/b;->onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    .line 255
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$3;->c:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$3;->c:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    invoke-interface {v0, p1}, Lcn/nubia/music/utils/imageloader/ImageLoaderListener;->onLoadFail(Ljava/lang/Exception;)V

    .line 258
    :cond_2
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 236
    iget-boolean v0, p0, Lcn/nubia/music/utils/imageloader/a$3;->a:Z

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "GlideImageFetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/music/utils/imageloader/a$3;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    iget v0, p0, Lcn/nubia/music/utils/imageloader/a$3;->b:I

    if-lez v0, :cond_1

    .line 240
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/b/b;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 242
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$3;->c:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$3;->c:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    invoke-interface {v0}, Lcn/nubia/music/utils/imageloader/ImageLoaderListener;->onLoadStart()V

    .line 245
    :cond_2
    return-void
.end method

.method public synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/a/e;)V
    .locals 0

    .prologue
    .line 223
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/music/utils/imageloader/a$3;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/a/e;)V

    return-void
.end method
