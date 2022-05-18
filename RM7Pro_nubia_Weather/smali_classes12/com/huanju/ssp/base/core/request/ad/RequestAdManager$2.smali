.class Lcom/huanju/ssp/base/core/request/ad/RequestAdManager$2;
.super Ljava/lang/Object;
.source "RequestAdManager.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->sendReqTTAd(Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    .prologue
    .line 749
    iput-object p1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager$2;->this$0:Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 753
    return-void
.end method
