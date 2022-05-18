.class Lcom/huanju/ssp/base/core/download/DownLoadManager$1;
.super Ljava/lang/Object;
.source "DownLoadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/download/DownLoadManager;->downloadWithShow(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/download/DownLoadManager;

.field final synthetic val$item:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/download/DownLoadManager;Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/download/DownLoadManager;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$1;->this$0:Lcom/huanju/ssp/base/core/download/DownLoadManager;

    iput-object p2, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$1;->val$item:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$1;->this$0:Lcom/huanju/ssp/base/core/download/DownLoadManager;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownLoadManager$1;->val$item:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->access$000(Lcom/huanju/ssp/base/core/download/DownLoadManager;Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 168
    return-void
.end method
