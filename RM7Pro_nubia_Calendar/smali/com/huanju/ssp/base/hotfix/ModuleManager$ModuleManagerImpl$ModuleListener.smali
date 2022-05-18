.class Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModuleListener"
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field listener:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huanju/ssp/base/hotfix/ModuleManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$1;

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;-><init>()V

    return-void
.end method
