.class final Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$3;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->setImageSafe(Landroid/view/View;Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$data:[B

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;[BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$3;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$3;->val$data:[B

    iput-object p3, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 220
    iget-object v6, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$3;->val$view:Landroid/view/View;

    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$3;->val$data:[B

    invoke-static {v6, v7}, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->adapterData(Landroid/view/View;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 224
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$3;->val$view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .local v5, "tag":Ljava/lang/Object;
    if-eqz v5, :cond_6

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_6

    move-object v4, v5

    .line 225
    check-cast v4, Ljava/lang/String;

    .line 226
    .local v4, "str":Ljava/lang/String;
    iget-object v6, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$3;->val$url:Ljava/lang/String;

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 227
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 228
    .local v3, "sdk":I
    if-eqz v0, :cond_4

    .line 229
    iget-object v6, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$3;->val$view:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_2

    .line 231
    :try_start_0
    iget-object v6, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$3;->val$view:Landroid/view/View;

    sget v7, Lcom/huanju/ssp/base/core/common/Config;->TAG_BITMAP_KEY:I

    invoke-virtual {v6, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 232
    .local v1, "bitmap1":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 233
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v1    # "bitmap1":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$3;->val$view:Landroid/view/View;

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 239
    iget-object v6, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$3;->val$view:Landroid/view/View;

    sget v7, Lcom/huanju/ssp/base/core/common/Config;->TAG_BITMAP_KEY:I

    invoke-virtual {v6, v7, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 269
    .end local v3    # "sdk":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 245
    .restart local v3    # "sdk":I
    .restart local v4    # "str":Ljava/lang/String;
    :cond_2
    const/16 v6, 0x10

    if-ge v3, v6, :cond_3

    .line 246
    iget-object v6, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$3;->val$view:Landroid/view/View;

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 248
    :cond_3
    iget-object v6, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$3;->val$view:Landroid/view/View;

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 251
    :cond_4
    iget-object v6, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$3;->val$view:Landroid/view/View;

    instance-of v6, v6, Lcom/huanju/ssp/base/core/view/gif/GifView;

    if-eqz v6, :cond_1

    .line 252
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$3;->val$view:Landroid/view/View;

    check-cast v2, Lcom/huanju/ssp/base/core/view/gif/GifView;

    .line 253
    .local v2, "gifView":Lcom/huanju/ssp/base/core/view/gif/GifView;
    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/view/gif/GifView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/view/gif/GifView;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setShowDimension(II)V

    .line 254
    iget-object v6, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$3;->val$data:[B

    invoke-virtual {v2, v6}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setGifImage([B)V

    goto :goto_1

    .line 258
    .end local v2    # "gifView":Lcom/huanju/ssp/base/core/view/gif/GifView;
    .end local v3    # "sdk":I
    :cond_5
    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 264
    .end local v4    # "str":Ljava/lang/String;
    :cond_6
    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 235
    .restart local v3    # "sdk":I
    .restart local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_0
.end method
