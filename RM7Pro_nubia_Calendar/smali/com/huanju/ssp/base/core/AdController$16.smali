.class Lcom/huanju/ssp/base/core/AdController$16;
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


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/AdController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/AdController;

    .prologue
    .line 899
    iput-object p1, p0, Lcom/huanju/ssp/base/core/AdController$16;->this$0:Lcom/huanju/ssp/base/core/AdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 903
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$16;->this$0:Lcom/huanju/ssp/base/core/AdController;

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/core/AdController;->access$600(Lcom/huanju/ssp/base/core/AdController;I)V

    .line 904
    return-void
.end method
