.class Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2$1;
.super Ljava/lang/Object;
.source "AbstractAd.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/frame/listeners/AdCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;

    .prologue
    .line 708
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2$1;->this$2:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdCloseSendError(Ljava/lang/String;I)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 712
    return-void
.end method

.method public onAdSendSuccess()V
    .locals 0

    .prologue
    .line 717
    return-void
.end method
