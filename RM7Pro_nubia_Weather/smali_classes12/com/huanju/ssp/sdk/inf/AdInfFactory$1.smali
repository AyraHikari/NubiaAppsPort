.class Lcom/huanju/ssp/sdk/inf/AdInfFactory$1;
.super Ljava/lang/Object;
.source "AdInfFactory.java"

# interfaces
.implements Lcom/huanju/ssp/sdk/inf/AdUpgradeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/inf/AdInfFactory;->getAdManager()Lcom/huanju/ssp/sdk/inf/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/sdk/inf/AdInfFactory;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/inf/AdInfFactory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/inf/AdInfFactory;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory$1;->this$0:Lcom/huanju/ssp/sdk/inf/AdInfFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public upgradeAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfFactory.upgradeAvailable: install module "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory$1;->this$0:Lcom/huanju/ssp/sdk/inf/AdInfFactory;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->access$000(Lcom/huanju/ssp/sdk/inf/AdInfFactory;)Lcom/huanju/ssp/base/hotfix/ModuleManager;

    move-result-object v0

    sget-object v1, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->MODULE_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/ssp/base/hotfix/ModuleManager;->provideModulePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 169
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory$1;->this$0:Lcom/huanju/ssp/sdk/inf/AdInfFactory;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->access$300(Lcom/huanju/ssp/sdk/inf/AdInfFactory;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/huanju/ssp/sdk/inf/AdInfFactory$1$1;

    invoke-direct {v1, p0, p2}, Lcom/huanju/ssp/sdk/inf/AdInfFactory$1$1;-><init>(Lcom/huanju/ssp/sdk/inf/AdInfFactory$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method
