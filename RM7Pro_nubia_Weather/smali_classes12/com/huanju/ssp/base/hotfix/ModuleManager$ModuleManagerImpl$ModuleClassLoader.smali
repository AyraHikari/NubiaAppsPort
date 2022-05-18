.class Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleClassLoader;
.super Ldalvik/system/BaseDexClassLoader;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModuleClassLoader"
.end annotation


# instance fields
.field private mExcludes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "optimizedDirectory"    # Ljava/io/File;
    .param p3, "librarySearchPath"    # Ljava/lang/String;
    .param p4, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1553
    invoke-direct {p0, p1, p2, p3, p4}, Ldalvik/system/BaseDexClassLoader;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1549
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleClassLoader;->mExcludes:Ljava/util/Map;

    .line 1554
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/huanju/ssp/base/hotfix/ModuleManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/io/File;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/ClassLoader;
    .param p5, "x4"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$1;

    .prologue
    .line 1542
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleClassLoader;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleClassLoader;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleClassLoader;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 1542
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleClassLoader;->setExcludedClasses([Ljava/lang/String;)V

    return-void
.end method

.method private setExcludedClasses([Ljava/lang/String;)V
    .locals 4
    .param p1, "classNames"    # [Ljava/lang/String;

    .prologue
    .line 1557
    iget-object v1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleClassLoader;->mExcludes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1558
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 1559
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 1561
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1562
    iget-object v3, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleClassLoader;->mExcludes:Ljava/util/Map;

    invoke-interface {v3, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1566
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1571
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1572
    .local v0, "c":Ljava/lang/Class;
    if-nez v0, :cond_1

    .line 1574
    iget-object v1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleClassLoader;->mExcludes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1576
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1581
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1583
    invoke-virtual {p0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1586
    :cond_1
    return-object v0

    .line 1577
    :catch_0
    move-exception v1

    goto :goto_0
.end method
