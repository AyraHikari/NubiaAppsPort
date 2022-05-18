.class Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$3;
.super Ljava/lang/Object;
.source "AbstractAd.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    .prologue
    .line 786
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$3;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 798
    const-string v0, "onPrepared"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$3;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->onAdViewShow()V

    .line 804
    return-void
.end method
