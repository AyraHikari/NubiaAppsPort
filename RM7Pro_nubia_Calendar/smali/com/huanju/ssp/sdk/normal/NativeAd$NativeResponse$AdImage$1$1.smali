.class Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1$1;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1;Landroid/graphics/Bitmap;[B)V
    .locals 0
    .param p1, "this$3"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1;

    .prologue
    .line 1654
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1$1;->this$3:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1;

    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1$1;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1659
    :try_start_0
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 1660
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1$1;->this$3:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1;->val$gifView:Lcom/huanju/ssp/base/core/view/gif/GifView;

    sget-object v2, Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;->COVER:Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;

    invoke-virtual {v1, v2}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setGifImageType(Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;)V

    .line 1661
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1$1;->this$3:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1;->val$gifView:Lcom/huanju/ssp/base/core/view/gif/GifView;

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1$1;->val$data:[B

    invoke-virtual {v1, v2}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setGifImage([B)V

    .line 1670
    :goto_0
    return-void

    .line 1664
    :cond_0
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1$1;->this$3:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1;->val$gifView:Lcom/huanju/ssp/base/core/view/gif/GifView;

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1666
    :catch_0
    move-exception v0

    .line 1667
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
