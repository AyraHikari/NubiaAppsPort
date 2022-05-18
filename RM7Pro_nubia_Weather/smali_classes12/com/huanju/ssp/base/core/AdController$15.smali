.class Lcom/huanju/ssp/base/core/AdController$15;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/AdController;->checkDownload(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/AdController;

.field final synthetic val$info:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

.field final synthetic val$listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/AdController;

    .prologue
    .line 905
    iput-object p1, p0, Lcom/huanju/ssp/base/core/AdController$15;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iput-object p2, p0, Lcom/huanju/ssp/base/core/AdController$15;->val$info:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput-object p3, p0, Lcom/huanju/ssp/base/core/AdController$15;->val$listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 909
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$15;->this$0:Lcom/huanju/ssp/base/core/AdController;

    const/16 v1, 0x22

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/core/AdController;->access$600(Lcom/huanju/ssp/base/core/AdController;I)V

    .line 910
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$15;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/AdController$15;->val$info:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/AdController$15;->val$listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    invoke-static {v0, v1, v2}, Lcom/huanju/ssp/base/core/AdController;->access$700(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    .line 911
    return-void
.end method
