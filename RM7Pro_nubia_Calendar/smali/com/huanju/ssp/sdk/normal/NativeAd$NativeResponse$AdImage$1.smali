.class Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;->setGifView(Lcom/huanju/ssp/base/core/view/gif/GifView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;

.field final synthetic val$gifView:Lcom/huanju/ssp/base/core/view/gif/GifView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;Ljava/lang/String;Lcom/huanju/ssp/base/core/view/gif/GifView;)V
    .locals 0
    .param p1, "this$2"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;

    .prologue
    .line 1647
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1;->this$2:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;

    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1;->val$gifView:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1650
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGifView url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1651
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1;->val$url:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->getByteArray(Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ImgDownListener;)[B

    move-result-object v1

    .line 1653
    .local v1, "data":[B
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1;->val$gifView:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-static {v2, v1}, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->adapterData(Landroid/view/View;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1654
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1$1;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1;Landroid/graphics/Bitmap;[B)V

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    .line 1672
    return-void
.end method
