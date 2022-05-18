.class Lcom/huanju/ssp/base/core/sdk/LockAdManager$1;
.super Landroid/content/BroadcastReceiver;
.source "LockAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/sdk/LockAdManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/sdk/LockAdManager;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/sdk/LockAdManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/sdk/LockAdManager;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager$1;->this$0:Lcom/huanju/ssp/base/core/sdk/LockAdManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager$1;->this$0:Lcom/huanju/ssp/base/core/sdk/LockAdManager;

    invoke-static {v0, p2}, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->access$000(Lcom/huanju/ssp/base/core/sdk/LockAdManager;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    goto :goto_0
.end method
