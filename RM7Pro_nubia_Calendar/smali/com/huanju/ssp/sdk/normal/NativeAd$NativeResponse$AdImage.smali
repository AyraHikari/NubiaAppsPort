.class Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;
.super Ljava/lang/Object;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdImage"
.end annotation


# instance fields
.field private imageUrls:[Ljava/lang/String;

.field private imageViewIds:[I

.field final synthetic this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;[Ljava/lang/String;)V
    .locals 2
    .param p1, "this$1"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;
    .param p2, "imageUrl"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1642
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1639
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;->imageUrls:[Ljava/lang/String;

    .line 1640
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;->imageViewIds:[I

    .line 1643
    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;->imageUrls:[Ljava/lang/String;

    .line 1644
    return-void
.end method

.method static synthetic access$1500(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;)[I
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;->imageViewIds:[I

    return-object v0
.end method

.method static synthetic access$1502(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;
    .param p1, "x1"    # [I

    .prologue
    .line 1638
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;->imageViewIds:[I

    return-object p1
.end method

.method static synthetic access$1800(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;->imageUrls:[Ljava/lang/String;

    return-object v0
.end method

.method private setGifView(Lcom/huanju/ssp/base/core/view/gif/GifView;Ljava/lang/String;)V
    .locals 2
    .param p1, "gifView"    # Lcom/huanju/ssp/base/core/view/gif/GifView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1647
    new-instance v0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$1;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;Ljava/lang/String;Lcom/huanju/ssp/base/core/view/gif/GifView;)V

    .line 1675
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->getmThreadPool()Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    .line 1676
    return-void
.end method


# virtual methods
.method public setValue(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1679
    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;->imageUrls:[Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;->imageUrls:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;->imageViewIds:[I

    if-eqz v6, :cond_0

    .line 1680
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;->imageUrls:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 1681
    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;->imageViewIds:[I

    array-length v6, v6

    if-lt v3, v6, :cond_1

    .line 1754
    .end local v3    # "i":I
    :cond_0
    return-void

    .line 1684
    .restart local v3    # "i":I
    :cond_1
    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;->imageViewIds:[I

    aget v6, v6, v3

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1686
    .local v4, "imageView":Landroid/view/View;
    if-eqz v4, :cond_5

    .line 1687
    instance-of v6, v4, Lcom/huanju/ssp/base/core/view/gif/GifView;

    if-nez v6, :cond_4

    .line 1688
    const/4 v1, 0x0

    .line 1690
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget v6, Lcom/huanju/ssp/base/core/common/Config;->TAG_BITMAP_KEY:I

    invoke-virtual {v4, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1694
    :goto_1
    if-eqz v1, :cond_2

    .line 1695
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1698
    :cond_2
    new-instance v6, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$2;

    invoke-direct {v6, p0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$2;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1722
    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iget-object v6, v6, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v6}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$3500(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    move-result-object v6

    iget-object v7, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;->imageUrls:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-interface {v6, v4, v7}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->loadImage(Landroid/view/View;Ljava/lang/String;)V

    .line 1680
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    move-object v2, v4

    .line 1724
    check-cast v2, Lcom/huanju/ssp/base/core/view/gif/GifView;

    .line 1725
    .local v2, "gifView":Lcom/huanju/ssp/base/core/view/gif/GifView;
    if-eqz v2, :cond_3

    .line 1726
    new-instance v6, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$3;

    invoke-direct {v6, p0}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$3;-><init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;)V

    invoke-virtual {v2, v6}, Lcom/huanju/ssp/base/core/view/gif/GifView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1744
    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;->imageUrls:[Ljava/lang/String;

    aget-object v5, v6, v3

    .line 1745
    .local v5, "url":Ljava/lang/String;
    invoke-direct {p0, v2, v5}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;->setGifView(Lcom/huanju/ssp/base/core/view/gif/GifView;Ljava/lang/String;)V

    goto :goto_2

    .line 1750
    .end local v2    # "gifView":Lcom/huanju/ssp/base/core/view/gif/GifView;
    .end local v5    # "url":Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "\u6570\u636e\u548c\u89c6\u56fe\u4e0d\u5339\u914d"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1691
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v6

    goto :goto_1
.end method
