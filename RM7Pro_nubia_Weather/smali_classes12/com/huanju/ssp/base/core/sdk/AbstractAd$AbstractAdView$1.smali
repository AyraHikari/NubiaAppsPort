.class Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$1;
.super Ljava/lang/Object;
.source "AbstractAd.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/frame/listeners/AdInnerViewOnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;-><init>(Lcom/huanju/ssp/base/core/sdk/AbstractAd;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

.field final synthetic val$this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;Lcom/huanju/ssp/base/core/sdk/AbstractAd;)V
    .locals 0
    .param p1, "this$1"    # Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$1;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iput-object p2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$1;->val$this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$1;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->drawView(Landroid/graphics/Canvas;)V

    .line 527
    return-void
.end method
