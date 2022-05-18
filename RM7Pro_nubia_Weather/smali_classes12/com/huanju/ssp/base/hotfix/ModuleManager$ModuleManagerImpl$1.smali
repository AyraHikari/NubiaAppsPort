.class Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$1;
.super Ljava/lang/Object;
.source "ModuleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->init(Landroid/content/Context;ZLcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$initialListener:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Landroid/content/Context;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$1;->this$0:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    iput-object p2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$1;->val$initialListener:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;

    iput-object p4, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 356
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 359
    :try_start_0
    iget-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$1;->val$context:Landroid/content/Context;

    const-string v3, "nubia_ad_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 360
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "dex_update_switch"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 361
    .local v0, "isUpdate":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modules init isUpdate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 362
    if-nez v0, :cond_0

    .line 363
    const-string v2, "\u672c\u5730\u5347\u7ea7\u5f00\u5173 \u5173\u95ed,\u5220\u9664\u672c\u5730moudule"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 364
    iget-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$1;->this$0:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    sget-object v3, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->MODULE_NAME:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$700(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Ljava/lang/String;)Z

    .line 375
    .end local v0    # "isUpdate":Z
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 367
    .restart local v0    # "isUpdate":Z
    .restart local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$1;->this$0:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    iget-object v3, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$1;->this$0:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    invoke-static {v3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$1600(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$1700(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Ljava/lang/String;)V

    .line 370
    iget-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$1;->this$0:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    iget-object v3, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$1;->val$initialListener:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;

    iget-object v4, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$1;->val$handler:Landroid/os/Handler;

    invoke-static {v2, v3, v4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$1800(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 372
    .end local v0    # "isUpdate":Z
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
