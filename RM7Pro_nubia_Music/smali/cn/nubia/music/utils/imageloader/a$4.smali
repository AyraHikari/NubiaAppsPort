.class Lcn/nubia/music/utils/imageloader/a$4;
.super Lcom/bumptech/glide/request/b/c;
.source "GlideImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/utils/imageloader/a;->b(Ljava/lang/String;Landroid/widget/ImageView;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;Lcom/bumptech/glide/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

.field final synthetic c:I

.field final synthetic d:Lcn/nubia/music/utils/imageloader/a;


# direct methods
.method constructor <init>(Lcn/nubia/music/utils/imageloader/a;Landroid/widget/ImageView;ILcn/nubia/music/utils/imageloader/ImageLoaderListener;I)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcn/nubia/music/utils/imageloader/a$4;->d:Lcn/nubia/music/utils/imageloader/a;

    iput p3, p0, Lcn/nubia/music/utils/imageloader/a$4;->a:I

    iput-object p4, p0, Lcn/nubia/music/utils/imageloader/a$4;->b:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    iput p5, p0, Lcn/nubia/music/utils/imageloader/a$4;->c:I

    invoke-direct {p0, p2}, Lcom/bumptech/glide/request/b/c;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/resource/a/b;Lcom/bumptech/glide/request/a/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/a/b;",
            "Lcom/bumptech/glide/request/a/e",
            "<-",
            "Lcom/bumptech/glide/load/resource/a/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/b/c;->a(Lcom/bumptech/glide/load/resource/a/b;Lcom/bumptech/glide/request/a/e;)V

    .line 326
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$4;->b:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$4;->b:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    invoke-interface {v0, p1}, Lcn/nubia/music/utils/imageloader/ImageLoaderListener;->onLoadComplete(Ljava/lang/Object;)V

    .line 329
    :cond_0
    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 313
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/b/c;->onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    .line 314
    iget v0, p0, Lcn/nubia/music/utils/imageloader/a$4;->c:I

    if-lez v0, :cond_0

    .line 315
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/b/c;->onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    .line 317
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$4;->b:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$4;->b:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    invoke-interface {v0, p1}, Lcn/nubia/music/utils/imageloader/ImageLoaderListener;->onLoadFail(Ljava/lang/Exception;)V

    .line 321
    :cond_1
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 302
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/b/c;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 303
    iget v0, p0, Lcn/nubia/music/utils/imageloader/a$4;->a:I

    if-lez v0, :cond_0

    .line 304
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/b/c;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$4;->b:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$4;->b:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    invoke-interface {v0}, Lcn/nubia/music/utils/imageloader/ImageLoaderListener;->onLoadStart()V

    .line 309
    :cond_1
    return-void
.end method

.method public synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/a/e;)V
    .locals 0

    .prologue
    .line 298
    check-cast p1, Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/music/utils/imageloader/a$4;->a(Lcom/bumptech/glide/load/resource/a/b;Lcom/bumptech/glide/request/a/e;)V

    return-void
.end method
