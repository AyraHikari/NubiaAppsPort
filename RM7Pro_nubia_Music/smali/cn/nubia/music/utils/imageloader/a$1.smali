.class Lcn/nubia/music/utils/imageloader/a$1;
.super Lcn/nubia/music/utils/imageloader/NormalNotificationTarget;
.source "GlideImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/utils/imageloader/a;->displayRemoteNotification(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V
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
.method constructor <init>(Lcn/nubia/music/utils/imageloader/a;Landroid/widget/RemoteViews;IZILcn/nubia/music/utils/imageloader/ImageLoaderListener;I)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcn/nubia/music/utils/imageloader/a$1;->e:Lcn/nubia/music/utils/imageloader/a;

    iput-boolean p4, p0, Lcn/nubia/music/utils/imageloader/a$1;->a:Z

    iput p5, p0, Lcn/nubia/music/utils/imageloader/a$1;->b:I

    iput-object p6, p0, Lcn/nubia/music/utils/imageloader/a$1;->c:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    iput p7, p0, Lcn/nubia/music/utils/imageloader/a$1;->d:I

    invoke-direct {p0, p2, p3}, Lcn/nubia/music/utils/imageloader/NormalNotificationTarget;-><init>(Landroid/widget/RemoteViews;I)V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 81
    iget-boolean v0, p0, Lcn/nubia/music/utils/imageloader/a$1;->a:Z

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "GlideImageFetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFailed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/music/utils/imageloader/a$1;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    iget v0, p0, Lcn/nubia/music/utils/imageloader/a$1;->d:I

    if-lez v0, :cond_1

    .line 85
    invoke-super {p0, p1, p2}, Lcn/nubia/music/utils/imageloader/NormalNotificationTarget;->onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$1;->c:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$1;->c:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    invoke-interface {v0, p1}, Lcn/nubia/music/utils/imageloader/ImageLoaderListener;->onLoadFail(Ljava/lang/Exception;)V

    .line 90
    :cond_2
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 68
    iget-boolean v0, p0, Lcn/nubia/music/utils/imageloader/a$1;->a:Z

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "GlideImageFetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/music/utils/imageloader/a$1;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    iget v0, p0, Lcn/nubia/music/utils/imageloader/a$1;->b:I

    if-lez v0, :cond_1

    .line 72
    invoke-super {p0, p1}, Lcn/nubia/music/utils/imageloader/NormalNotificationTarget;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 74
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$1;->c:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$1;->c:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    invoke-interface {v0}, Lcn/nubia/music/utils/imageloader/ImageLoaderListener;->onLoadStart()V

    .line 77
    :cond_2
    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/a/e;)V
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
    .line 94
    iget-boolean v0, p0, Lcn/nubia/music/utils/imageloader/a$1;->a:Z

    if-eqz v0, :cond_1

    .line 95
    new-instance v0, Lcn/nubia/music/utils/imageloader/a$a;

    iget-object v1, p0, Lcn/nubia/music/utils/imageloader/a$1;->e:Lcn/nubia/music/utils/imageloader/a;

    invoke-direct {v0, v1, p1}, Lcn/nubia/music/utils/imageloader/a$a;-><init>(Lcn/nubia/music/utils/imageloader/a;Landroid/graphics/Bitmap;)V

    .line 96
    iget-object v0, v0, Lcn/nubia/music/utils/imageloader/a$a;->a:Landroid/graphics/Bitmap;

    invoke-super {p0, v0, p2}, Lcn/nubia/music/utils/imageloader/NormalNotificationTarget;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/a/e;)V

    .line 97
    const-string v0, "GlideImageFetcher"

    const-string v1, "onResourceReady"

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$1;->c:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$1;->c:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    invoke-interface {v0, p1}, Lcn/nubia/music/utils/imageloader/ImageLoaderListener;->onLoadComplete(Ljava/lang/Object;)V

    .line 104
    :cond_0
    return-void

    .line 99
    :cond_1
    invoke-super {p0, p1, p2}, Lcn/nubia/music/utils/imageloader/NormalNotificationTarget;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/a/e;)V

    goto :goto_0
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/a/e;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/music/utils/imageloader/a$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/a/e;)V

    return-void
.end method
