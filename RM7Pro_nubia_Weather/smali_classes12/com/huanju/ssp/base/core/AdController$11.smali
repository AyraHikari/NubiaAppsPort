.class Lcom/huanju/ssp/base/core/AdController$11;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/view/DownloadDialog$NoOnclickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/AdController;->openDownloadDialog(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/AdController;

.field final synthetic val$downloadDialog:Lcom/huanju/ssp/base/core/view/DownloadDialog;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/view/DownloadDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/AdController;

    .prologue
    .line 823
    iput-object p1, p0, Lcom/huanju/ssp/base/core/AdController$11;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iput-object p2, p0, Lcom/huanju/ssp/base/core/AdController$11;->val$downloadDialog:Lcom/huanju/ssp/base/core/view/DownloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoClick()V
    .locals 2

    .prologue
    .line 826
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$11;->val$downloadDialog:Lcom/huanju/ssp/base/core/view/DownloadDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$11;->val$downloadDialog:Lcom/huanju/ssp/base/core/view/DownloadDialog;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/DownloadDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$11;->val$downloadDialog:Lcom/huanju/ssp/base/core/view/DownloadDialog;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/DownloadDialog;->dismiss()V

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$11;->this$0:Lcom/huanju/ssp/base/core/AdController;

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/core/AdController;->access$600(Lcom/huanju/ssp/base/core/AdController;I)V

    .line 830
    return-void
.end method
