.class Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;
.super Ljava/lang/Object;
.source "SearchAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdImage"
.end annotation


# instance fields
.field private imageUrls:[Ljava/lang/String;

.field private imageViewIds:[I

.field final synthetic this$1:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;[Ljava/lang/String;)V
    .locals 2
    .param p1, "this$1"    # Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;
    .param p2, "imageUrl"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 416
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;->this$1:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;->imageUrls:[Ljava/lang/String;

    .line 414
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;->imageViewIds:[I

    .line 417
    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;->imageUrls:[Ljava/lang/String;

    .line 418
    return-void
.end method

.method static synthetic access$300(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;)[I
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;->imageViewIds:[I

    return-object v0
.end method

.method static synthetic access$302(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;
    .param p1, "x1"    # [I

    .prologue
    .line 412
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;->imageViewIds:[I

    return-object p1
.end method

.method static synthetic access$500(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;->imageUrls:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setValue(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 421
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;->imageUrls:[Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;->imageUrls:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_2

    .line 422
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;->imageUrls:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 423
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;->imageViewIds:[I

    aget v4, v4, v2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 425
    .local v3, "imageView":Landroid/view/View;
    const/4 v1, 0x0

    .line 427
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget v4, Lcom/huanju/ssp/base/core/common/Config;->TAG_BITMAP_KEY:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :goto_1
    if-eqz v1, :cond_0

    .line 435
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 440
    :cond_0
    if-eqz v3, :cond_1

    .line 441
    new-instance v4, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage$1;

    invoke-direct {v4, p0}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage$1;-><init>(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 466
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;->this$1:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    iget-object v4, v4, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->this$0:Lcom/huanju/ssp/sdk/normal/SearchAd;

    invoke-static {v4}, Lcom/huanju/ssp/sdk/normal/SearchAd;->access$1700(Lcom/huanju/ssp/sdk/normal/SearchAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$AdImage;->imageUrls:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-interface {v4, v3, v5}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->loadImage(Landroid/view/View;Ljava/lang/String;)V

    .line 422
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 468
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "\u6570\u636e\u548c\u89c6\u56fe\u4e0d\u5339\u914d"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 472
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "i":I
    .end local v3    # "imageView":Landroid/view/View;
    :cond_2
    return-void

    .line 428
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "i":I
    .restart local v3    # "imageView":Landroid/view/View;
    :catch_0
    move-exception v4

    goto :goto_1
.end method
