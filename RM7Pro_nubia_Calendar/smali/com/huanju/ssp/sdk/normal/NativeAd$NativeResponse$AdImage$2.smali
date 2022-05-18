.class Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$2;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;->setValue(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;)V
    .locals 0
    .param p1, "this$2"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;

    .prologue
    .line 1698
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$2;->this$2:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1702
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1707
    const/4 v1, 0x0

    .line 1709
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget v2, Lcom/huanju/ssp/base/core/common/Config;->TAG_BITMAP_KEY:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1714
    :goto_0
    if-eqz v1, :cond_0

    .line 1716
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1719
    :cond_0
    return-void

    .line 1710
    :catch_0
    move-exception v2

    goto :goto_0
.end method
