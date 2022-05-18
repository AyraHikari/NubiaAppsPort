.class Lcom/huanju/ssp/base/core/AdController$12;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/view/DownloadDialog$YesOnclickListener;


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

.field final synthetic val$info:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

.field final synthetic val$listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/view/DownloadDialog;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/AdController;

    .prologue
    .line 832
    iput-object p1, p0, Lcom/huanju/ssp/base/core/AdController$12;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iput-object p2, p0, Lcom/huanju/ssp/base/core/AdController$12;->val$downloadDialog:Lcom/huanju/ssp/base/core/view/DownloadDialog;

    iput-object p3, p0, Lcom/huanju/ssp/base/core/AdController$12;->val$info:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput-object p4, p0, Lcom/huanju/ssp/base/core/AdController$12;->val$listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onYesClick(Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 835
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$12;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$12;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "\u6587\u4ef6\u540d\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 857
    :cond_1
    :goto_0
    return-void

    .line 841
    :cond_2
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/Utils;->isValidityFileName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 842
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$12;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$12;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "\u6587\u4ef6\u540d\u4e0d\u80fd\u542b\u6709\u975e\u6cd5\u5b57\u7b26"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 847
    :cond_3
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$12;->val$downloadDialog:Lcom/huanju/ssp/base/core/view/DownloadDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$12;->val$downloadDialog:Lcom/huanju/ssp/base/core/view/DownloadDialog;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/DownloadDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 848
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$12;->val$downloadDialog:Lcom/huanju/ssp/base/core/view/DownloadDialog;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/DownloadDialog;->dismiss()V

    .line 850
    :cond_4
    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 851
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$12;->val$info:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->downloadName:Ljava/lang/String;

    .line 856
    :goto_1
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$12;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/AdController$12;->val$info:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/AdController$12;->val$listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    invoke-static {v0, v1, v2}, Lcom/huanju/ssp/base/core/AdController;->access$500(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    goto :goto_0

    .line 853
    :cond_5
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$12;->val$info:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput-object p1, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->downloadName:Ljava/lang/String;

    goto :goto_1
.end method
