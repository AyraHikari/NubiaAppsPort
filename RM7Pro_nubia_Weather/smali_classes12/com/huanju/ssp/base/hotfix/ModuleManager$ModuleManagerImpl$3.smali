.class Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$3;
.super Ljava/lang/Object;
.source "ModuleManager.java"

# interfaces
.implements Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoadersHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getAllModules(ZLandroid/content/Context;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

.field final synthetic val$defContext:Landroid/content/Context;

.field final synthetic val$includePackageInfo:Z

.field final synthetic val$limit:I

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;ILjava/util/List;ZLandroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$3;->this$0:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    iput p2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$3;->val$limit:I

    iput-object p3, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$3;->val$list:Ljava/util/List;

    iput-boolean p4, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$3;->val$includePackageInfo:Z

    iput-object p5, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$3;->val$defContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;)Z
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mls"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;

    .prologue
    const/4 v4, 0x0

    .line 1022
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1023
    iget v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$3;->val$limit:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$3;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$3;->val$limit:I

    if-ge v0, v1, :cond_2

    .line 1024
    :cond_0
    new-instance v3, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;

    invoke-direct {v3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;-><init>()V

    .line 1025
    .local v3, "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$3;->this$0:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    iget-boolean v5, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$3;->val$includePackageInfo:Z

    iget-object v6, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$3;->val$defContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$3;->this$0:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    .line 1026
    invoke-static {v1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$1600(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;)Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    .line 1025
    invoke-static/range {v0 .. v7}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$2300(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;ZZLandroid/content/Context;Ljava/lang/String;)V

    .line 1027
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$3;->val$list:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1032
    .end local v3    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    :cond_1
    :goto_0
    return v4

    .line 1029
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method
