.class Lcom/huanju/ssp/sdk/ReportAdManager$1;
.super Ljava/lang/Object;
.source "ReportAdManager.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/ReportAdManager;->reportAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/sdk/ReportAdManager;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/ReportAdManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/ReportAdManager;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/huanju/ssp/sdk/ReportAdManager$1;->this$0:Lcom/huanju/ssp/sdk/ReportAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 161
    return-void
.end method
