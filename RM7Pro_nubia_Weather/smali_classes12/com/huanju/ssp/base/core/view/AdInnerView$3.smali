.class Lcom/huanju/ssp/base/core/view/AdInnerView$3;
.super Ljava/lang/Object;
.source "AdInnerView.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/common/ImgDownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/view/AdInnerView;->renderAdView(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/view/AdInnerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/view/AdInnerView;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$3;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdStatusChange(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$3;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mErrImpTime:[J

    array-length v0, v0

    if-le v0, p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$3;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mErrImpTime:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, p1

    .line 157
    :cond_0
    return-void
.end method
