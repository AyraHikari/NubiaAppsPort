.class Lcom/huanju/ssp/base/core/AdController$5;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/AdController;->clickAd(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/AdController;

.field final synthetic val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

.field final synthetic val$listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/AdController;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/huanju/ssp/base/core/AdController$5;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iput-object p2, p0, Lcom/huanju/ssp/base/core/AdController$5;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput-object p3, p0, Lcom/huanju/ssp/base/core/AdController$5;->val$listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$5;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/AdController$5;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/AdController$5;->val$listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    invoke-static {v0, v1, v2}, Lcom/huanju/ssp/base/core/AdController;->access$300(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    .line 332
    return-void
.end method
