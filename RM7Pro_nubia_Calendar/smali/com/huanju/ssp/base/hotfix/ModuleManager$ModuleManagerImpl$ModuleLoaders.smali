.class Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModuleLoaders"
.end annotation


# instance fields
.field final loaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field version:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;->loaders:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huanju/ssp/base/hotfix/ModuleManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$1;

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;-><init>()V

    return-void
.end method
