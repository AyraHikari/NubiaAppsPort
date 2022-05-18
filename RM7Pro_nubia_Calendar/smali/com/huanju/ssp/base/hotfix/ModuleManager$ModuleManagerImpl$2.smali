.class Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$2;
.super Ljava/lang/Object;
.source "ModuleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->notifyListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

.field final synthetic val$listener:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;

.field final synthetic val$moduleName:Ljava/lang/String;

.field final synthetic val$oldVersion:Ljava/lang/String;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$2;->this$0:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    iput-object p2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$2;->val$listener:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;

    iput-object p3, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$2;->val$moduleName:Ljava/lang/String;

    iput-object p4, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$2;->val$version:Ljava/lang/String;

    iput-object p5, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$2;->val$oldVersion:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 522
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$2;->val$listener:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;

    iget-object v1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$2;->val$moduleName:Ljava/lang/String;

    iget-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$2;->val$version:Ljava/lang/String;

    iget-object v3, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$2;->val$oldVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;->onModuleUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 523
    return-void
.end method
