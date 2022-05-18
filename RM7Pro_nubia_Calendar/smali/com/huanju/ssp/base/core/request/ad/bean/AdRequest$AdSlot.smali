.class Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;
.super Ljava/lang/Object;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdSlot"
.end annotation


# instance fields
.field private adSlotH:I

.field private adSlotId:Ljava/lang/String;

.field private adSlotW:I


# direct methods
.method constructor <init>(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "adSlotId"    # Ljava/lang/String;
    .param p2, "viewSize"    # [I

    .prologue
    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 655
    iput-object p1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;->adSlotId:Ljava/lang/String;

    .line 656
    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 657
    const/4 v0, 0x0

    aget v0, p2, v0

    iput v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;->adSlotW:I

    .line 658
    const/4 v0, 0x1

    aget v0, p2, v0

    iput v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;->adSlotH:I

    .line 660
    :cond_0
    return-void
.end method

.method static synthetic access$3200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;

    .prologue
    .line 648
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;->adSlotId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;)I
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;

    .prologue
    .line 648
    iget v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;->adSlotH:I

    return v0
.end method

.method static synthetic access$3400(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;)I
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;

    .prologue
    .line 648
    iget v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdSlot;->adSlotW:I

    return v0
.end method
