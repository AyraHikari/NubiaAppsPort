.class Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$3;
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
    .line 1726
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage$3;->this$2:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$AdImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1730
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1735
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/huanju/ssp/base/core/view/gif/GifView;

    move-object v2, v0

    .line 1736
    .local v2, "gifView":Lcom/huanju/ssp/base/core/view/gif/GifView;
    if-eqz v2, :cond_0

    .line 1737
    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/view/gif/GifView;->free()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1742
    .end local v2    # "gifView":Lcom/huanju/ssp/base/core/view/gif/GifView;
    :cond_0
    :goto_0
    return-void

    .line 1739
    :catch_0
    move-exception v1

    .line 1740
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
