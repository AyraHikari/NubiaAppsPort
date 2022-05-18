.class Lcom/huanju/ssp/base/core/view/DownloadDialog$1;
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
    .line 90
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/DownloadDialog$1;->this$0:Lcom/huanju/ssp/base/core/view/DownloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/DownloadDialog$1;->this$0:Lcom/huanju/ssp/base/core/view/DownloadDialog;

    invoke-static {v2}, Lcom/huanju/ssp/base/core/view/DownloadDialog;->access$000(Lcom/huanju/ssp/base/core/view/DownloadDialog;)Lcom/huanju/ssp/base/core/view/DownloadDialog$YesOnclickListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/DownloadDialog$1;->this$0:Lcom/huanju/ssp/base/core/view/DownloadDialog;

    invoke-static {v2}, Lcom/huanju/ssp/base/core/view/DownloadDialog;->access$100(Lcom/huanju/ssp/base/core/view/DownloadDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 96
    .local v1, "txt":Landroid/text/Editable;
    const-string v0, ""

    .line 97
    .local v0, "content":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/DownloadDialog$1;->this$0:Lcom/huanju/ssp/base/core/view/DownloadDialog;

    invoke-static {v2}, Lcom/huanju/ssp/base/core/view/DownloadDialog;->access$000(Lcom/huanju/ssp/base/core/view/DownloadDialog;)Lcom/huanju/ssp/base/core/view/DownloadDialog$YesOnclickListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/huanju/ssp/base/core/view/DownloadDialog$YesOnclickListener;->onYesClick(Ljava/lang/String;)V

    .line 102
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "txt":Landroid/text/Editable;
    :cond_1
    return-void
.end method
