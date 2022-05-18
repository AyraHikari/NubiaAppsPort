.class public Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;
.super Ljava/lang/Object;
.source "AdCloseParameter.java"


# instance fields
.field public adSlotId:Ljava/lang/String;

.field public campaignId:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public reason:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "campaignId"    # Ljava/lang/String;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .param p3, "reason"    # I
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;->campaignId:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;->adSlotId:Ljava/lang/String;

    .line 16
    iput p3, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;->reason:I

    .line 17
    iput-object p4, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;->message:Ljava/lang/String;

    .line 18
    return-void
.end method
