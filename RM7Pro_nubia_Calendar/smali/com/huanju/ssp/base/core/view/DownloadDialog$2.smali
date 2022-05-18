.class Lcom/huanju/ssp/base/core/view/DownloadDialog$2;
.super Ljava/lang/Object;
.source "DownloadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/view/DownloadDialog;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/view/DownloadDialog;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/view/DownloadDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/view/DownloadDialog;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/DownloadDialog$2;->this$0:Lcom/huanju/ssp/base/core/view/DownloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/DownloadDialog$2;->this$0:Lcom/huanju/ssp/base/core/view/DownloadDialog;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/DownloadDialog;->access$200(Lcom/huanju/ssp/base/core/view/DownloadDialog;)Lcom/huanju/ssp/base/core/view/DownloadDialog$NoOnclickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/DownloadDialog$2;->this$0:Lcom/huanju/ssp/base/core/view/DownloadDialog;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/DownloadDialog;->access$200(Lcom/huanju/ssp/base/core/view/DownloadDialog;)Lcom/huanju/ssp/base/core/view/DownloadDialog$NoOnclickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/huanju/ssp/base/core/view/DownloadDialog$NoOnclickListener;->onNoClick()V

    .line 111
    :cond_0
    return-void
.end method
