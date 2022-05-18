.class Lcn/nubia/music/utils/imageloader/a$2;
.super Lcn/nubia/music/utils/imageloader/MediaStyleNotificationTarget;
.source "GlideImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/utils/imageloader/a;->displayChannelNotification(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V
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
.method constructor <init>(Lcn/nubia/music/utils/imageloader/a;Landroid/app/Notification$Builder;ZILcn/nubia/music/utils/imageloader/ImageLoaderListener;I)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcn/nubia/music/utils/imageloader/a$2;->e:Lcn/nubia/music/utils/imageloader/a;

    iput-boolean p3, p0, Lcn/nubia/music/utils/imageloader/a$2;->a:Z

    iput p4, p0, Lcn/nubia/music/utils/imageloader/a$2;->b:I

    iput-object p5, p0, Lcn/nubia/music/utils/imageloader/a$2;->c:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    iput p6, p0, Lcn/nubia/music/utils/imageloader/a$2;->d:I

    invoke-direct {p0, p2}, Lcn/nubia/music/utils/imageloader/MediaStyleNotificationTarget;-><init>(Landroid/app/Notification$Builder;)V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 158
    iget-boolean v0, p0, Lcn/nubia/music/utils/imageloader/a$2;->a:Z

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "GlideImageFetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFailed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/music/utils/imageloader/a$2;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    iget v0, p0, Lcn/nubia/music/utils/imageloader/a$2;->d:I

    if-lez v0, :cond_1

    .line 162
    invoke-super {p0, p1, p2}, Lcn/nubia/music/utils/imageloader/MediaStyleNotificationTarget;->onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    .line 164
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$2;->c:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$2;->c:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    invoke-interface {v0, p1}, Lcn/nubia/music/utils/imageloader/ImageLoaderListener;->onLoadFail(Ljava/lang/Exception;)V

    .line 167
    :cond_2
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 145
    iget-boolean v0, p0, Lcn/nubia/music/utils/imageloader/a$2;->a:Z

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "GlideImageFetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/music/utils/imageloader/a$2;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    iget v0, p0, Lcn/nubia/music/utils/imageloader/a$2;->b:I

    if-lez v0, :cond_1

    .line 149
    invoke-super {p0, p1}, Lcn/nubia/music/utils/imageloader/MediaStyleNotificationTarget;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 151
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$2;->c:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$2;->c:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    invoke-interface {v0}, Lcn/nubia/music/utils/imageloader/ImageLoaderListener;->onLoadStart()V

    .line 154
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
    .line 171
    iget-boolean v0, p0, Lcn/nubia/music/utils/imageloader/a$2;->a:Z

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "GlideImageFetcher"

    const-string v1, "onResourceReady"

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    invoke-super {p0, p1, p2}, Lcn/nubia/music/utils/imageloader/MediaStyleNotificationTarget;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/a/e;)V

    .line 175
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$2;->c:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcn/nubia/music/utils/imageloader/a$2;->c:Lcn/nubia/music/utils/imageloader/ImageLoaderListener;

    invoke-interface {v0, p1}, Lcn/nubia/music/utils/imageloader/ImageLoaderListener;->onLoadComplete(Ljava/lang/Object;)V

    .line 178
    :cond_1
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/a/e;)V
    .locals 0

    .prologue
    .line 141
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/music/utils/imageloader/a$2;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/a/e;)V

    return-void
.end method
