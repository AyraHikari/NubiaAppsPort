.class Lcom/huanju/ssp/base/core/sdk/LockAdManager$2;
.super Ljava/lang/Object;
.source "LockAdManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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
    .line 53
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager$2;->this$0:Lcom/huanju/ssp/base/core/sdk/LockAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/LockAdManager$2;->this$0:Lcom/huanju/ssp/base/core/sdk/LockAdManager;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/sdk/LockAdManager;->access$100(Lcom/huanju/ssp/base/core/sdk/LockAdManager;)V

    .line 57
    const/4 v0, 0x1

    return v0
.end method
