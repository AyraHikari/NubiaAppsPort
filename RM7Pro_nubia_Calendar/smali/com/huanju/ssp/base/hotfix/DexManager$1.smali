.class Lcom/huanju/ssp/base/hotfix/DexManager$1;
.super Lcom/huanju/ssp/base/hotfix/updata/DexUpdateProcessor;
.source "DexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/hotfix/DexManager;->checkUpdateSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/hotfix/DexManager;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/hotfix/DexManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/hotfix/DexManager;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/huanju/ssp/base/hotfix/DexManager$1;->this$0:Lcom/huanju/ssp/base/hotfix/DexManager;

    invoke-direct {p0}, Lcom/huanju/ssp/base/hotfix/updata/DexUpdateProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;)V
    .locals 0
    .param p1, "result"    # Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/huanju/ssp/base/hotfix/updata/DexUpdateProcessor;->onDataReceived(Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;)V

    .line 126
    return-void
.end method

.method public onErrorReceived(Ljava/lang/String;I)V
    .locals 0
    .param p1, "eroMsg"    # Ljava/lang/String;
    .param p2, "eroCode"    # I

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Lcom/huanju/ssp/base/hotfix/updata/DexUpdateProcessor;->onErrorReceived(Ljava/lang/String;I)V

    .line 121
    return-void
.end method
