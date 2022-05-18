.class Lcom/huanju/ssp/base/core/AdController$3;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/frame/listeners/AdCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/AdController;->clickAdClos(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/AdController;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/AdController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/AdController;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/huanju/ssp/base/core/AdController$3;->this$0:Lcom/huanju/ssp/base/core/AdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdCloseSendError(Ljava/lang/String;I)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 229
    return-void
.end method

.method public onAdSendSuccess()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method
