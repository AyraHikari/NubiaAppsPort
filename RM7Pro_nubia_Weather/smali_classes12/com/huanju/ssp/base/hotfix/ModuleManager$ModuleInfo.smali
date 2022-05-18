.class public final Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/hotfix/ModuleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModuleInfo"
.end annotation


# instance fields
.field private classLoader:Ljava/lang/ClassLoader;

.field public context:Landroid/content/Context;

.field public moduleName:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2000(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    .param p1, "x1"    # Ljava/lang/ClassLoader;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;->classLoader:Ljava/lang/ClassLoader;

    return-object p1
.end method
