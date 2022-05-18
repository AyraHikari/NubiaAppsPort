.class Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/hotfix/ModuleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModuleManagerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;,
        Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleClassLoader;,
        Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoadersHandler;,
        Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;,
        Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;,
        Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;
    }
.end annotation


# static fields
.field private static final FAKE_MODULE_BASE_DIR:Ljava/lang/String; = "/tmp"

.field private static final MODULE_BASE_APK_NAME:Ljava/lang/String; = "base.apk"

.field private static final MODULE_BASE_DEX_NAME:Ljava/lang/String; = "classes.dex"

.field private static final MODULE_DEX_NAME_PATTERN:Ljava/lang/String; = "classes.*\\.dex"

.field private static final MODULE_LIB_DIRS_PATTERN:Ljava/lang/String; = "lib/.*"

.field private static final sUseDefaultDexOptDir:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final mExcludedClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExpectedSignatures:[Landroid/content/pm/Signature;

.field private final mIndexFileLock:Ljava/lang/Object;

.field private final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLoaderThread:Ljava/lang/Thread;

.field private mModuleBaseDir:Ljava/lang/String;

.field private final mModuleLibDirs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mModuleLoaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageProcessor:Lcom/huanju/ssp/base/hotfix/ModuleManager$PackageProcessor;

.field private final mProvidersLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 292
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->sUseDefaultDexOptDir:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    .line 300
    const-string v0, "/tmp"

    iput-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleBaseDir:Ljava/lang/String;

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLibDirs:Ljava/util/ArrayList;

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mExcludedClasses:Ljava/util/HashMap;

    .line 308
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mIndexFileLock:Ljava/lang/Object;

    .line 314
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mProvidersLock:Ljava/lang/Object;

    .line 316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mListeners:Ljava/util/HashMap;

    .line 319
    return-void
.end method

.method synthetic constructor <init>(Lcom/huanju/ssp/base/hotfix/ModuleManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$1;

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->ready()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Lcom/huanju/ssp/base/hotfix/ModuleManager$PackageProcessor;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;
    .param p1, "x1"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$PackageProcessor;

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->setPackageVerifier(Lcom/huanju/ssp/base/hotfix/ModuleManager$PackageProcessor;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;[Landroid/content/pm/Signature;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;
    .param p1, "x1"    # [Landroid/content/pm/Signature;

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->setExpectedSignatures([Landroid/content/pm/Signature;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    .line 270
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->setExcludedClasses(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 270
    invoke-static {p0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->setUseDefaultDexOptDir(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->terminate()V

    return-void
.end method

.method static synthetic access$1500(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->dump()V

    return-void
.end method

.method static synthetic access$1600(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleBaseDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->loadExistingModules(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;
    .param p1, "x1"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;
    .param p2, "x2"    # Landroid/os/Handler;

    .prologue
    .line 270
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->notifyInitialLoadingComplete(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$200(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Landroid/content/Context;ZLcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;
    .param p4, "x4"    # Landroid/os/Handler;

    .prologue
    .line 270
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->init(Landroid/content/Context;ZLcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;ZZLandroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;
    .param p3, "x3"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .param p6, "x6"    # Landroid/content/Context;
    .param p7, "x7"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-direct/range {p0 .. p7}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->copyModuleInfo(Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;ZZLandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [Ljava/lang/Class;
    .param p5, "x5"    # [Ljava/lang/Object;

    .prologue
    .line 270
    invoke-direct/range {p0 .. p5}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getModuleInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Ljava/lang/String;ZZLandroid/content/Context;)Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Landroid/content/Context;

    .prologue
    .line 270
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getModuleInfo(Ljava/lang/String;ZZLandroid/content/Context;)Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;ZLandroid/content/Context;I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/content/Context;
    .param p3, "x3"    # I

    .prologue
    .line 270
    invoke-direct {p0, p1, p2, p3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getAllModules(ZLandroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Z

    .prologue
    .line 270
    invoke-direct/range {p0 .. p6}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->provideModulePackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->removeModule(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;
    .param p3, "x3"    # Landroid/os/Handler;
    .param p4, "x4"    # Z

    .prologue
    .line 270
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->addModuleUpdatedListener(Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;

    .prologue
    .line 270
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->removeModuleUpdatedListener(Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;)V

    return-void
.end method

.method private addModuleLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1052
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 1053
    iget-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    monitor-enter v2

    .line 1054
    :try_start_0
    iget-object v1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;

    .line 1055
    .local v0, "loaders":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;
    if-nez v0, :cond_0

    .line 1056
    new-instance v0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;

    .end local v0    # "loaders":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;-><init>(Lcom/huanju/ssp/base/hotfix/ModuleManager$1;)V

    .line 1057
    .restart local v0    # "loaders":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;
    iget-object v1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    :cond_0
    iget-object v1, v0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;->loaders:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    iput-object p2, v0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;->version:Ljava/lang/String;

    .line 1063
    monitor-exit v2

    .line 1065
    .end local v0    # "loaders":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;
    :cond_1
    return-void

    .line 1063
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addModuleUpdatedListener(Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;Z)V
    .locals 9
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "triggerExisting"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 421
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 422
    new-instance v7, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;

    invoke-direct {v7, v3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;-><init>(Lcom/huanju/ssp/base/hotfix/ModuleManager$1;)V

    .line 423
    .local v7, "ml":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;
    iput-object p2, v7, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;->listener:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;

    .line 424
    iput-object p3, v7, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;->handler:Landroid/os/Handler;

    .line 425
    iget-object v1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 427
    .local v8, "mls":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;>;"
    if-nez v8, :cond_0

    .line 428
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "mls":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .restart local v8    # "mls":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;>;"
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    :cond_0
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    if-eqz p4, :cond_1

    .line 434
    invoke-direct {p0, p1, v2, v2, v3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getModuleInfo(Ljava/lang/String;ZZLandroid/content/Context;)Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;

    move-result-object v6

    .line 435
    .local v6, "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    if-eqz v6, :cond_1

    .line 438
    iget-object v2, v6, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;->version:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->notifyListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;)V

    .line 442
    .end local v6    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    .end local v7    # "ml":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;
    .end local v8    # "mls":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;>;"
    :cond_1
    return-void

    .line 432
    .restart local v7    # "ml":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private checkSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 11
    .param p1, "toCheck"    # [Landroid/content/pm/Signature;
    .param p2, "expected"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v6, 0x0

    .line 813
    const/4 v3, 0x0

    .line 814
    .local v3, "result":Z
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 815
    const/4 v0, 0x0

    .line 816
    .local v0, "count":I
    array-length v8, p1

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_4

    aget-object v4, p1, v7

    .line 817
    .local v4, "tc":Landroid/content/pm/Signature;
    if-eqz v4, :cond_1

    .line 818
    const/4 v2, 0x0

    .line 819
    .local v2, "found":Z
    array-length v9, p2

    move v5, v6

    :goto_1
    if-ge v5, v9, :cond_0

    aget-object v1, p2, v5

    .line 820
    .local v1, "e":Landroid/content/pm/Signature;
    invoke-virtual {v4, v1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 821
    const/4 v2, 0x1

    .line 825
    .end local v1    # "e":Landroid/content/pm/Signature;
    :cond_0
    if-eqz v2, :cond_3

    .line 826
    add-int/lit8 v0, v0, 0x1

    .line 816
    .end local v2    # "found":Z
    :cond_1
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    .line 819
    .restart local v1    # "e":Landroid/content/pm/Signature;
    .restart local v2    # "found":Z
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 828
    .end local v1    # "e":Landroid/content/pm/Signature;
    :cond_3
    const-string v5, "Module signature is not in expected !"

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 833
    .end local v2    # "found":Z
    .end local v4    # "tc":Landroid/content/pm/Signature;
    :cond_4
    array-length v5, p1

    if-lez v5, :cond_5

    array-length v5, p1

    if-ne v0, v5, :cond_5

    .line 834
    const/4 v3, 0x1

    .line 837
    .end local v0    # "count":I
    :cond_5
    return v3
.end method

.method private cleanupModuleDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p1, "moduleBaseDir"    # Ljava/lang/String;
    .param p2, "moduleName"    # Ljava/lang/String;
    .param p3, "excludedVersion"    # Ljava/lang/String;

    .prologue
    .line 1171
    if-eqz p2, :cond_3

    .line 1172
    new-instance v4, Ljava/io/File;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v7}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getModulePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1173
    .local v4, "dir":Ljava/io/File;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1174
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 1175
    .local v6, "files":[Ljava/io/File;
    if-eqz v6, :cond_3

    .line 1176
    array-length v12, v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v12, :cond_3

    aget-object v5, v6, v7

    .line 1178
    .local v5, "f":Ljava/io/File;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1179
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1176
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1182
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Delete outdated module "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " version/directory "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1183
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1182
    invoke-static {v13}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1184
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 1185
    .local v8, "t1":J
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->deleteRecursively(Ljava/io/File;)V

    .line 1186
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 1187
    .local v10, "t2":J
    const-string v13, "ModuleManager"

    new-instance v14, Ljava/lang/StringBuffer;

    const-string v15, "Cost "

    invoke-direct {v14, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long v16, v10, v8

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    .line 1188
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, " microseconds(us) to delete directory "

    .line 1189
    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 1190
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1187
    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1196
    .end local v5    # "f":Ljava/io/File;
    .end local v6    # "files":[Ljava/io/File;
    .end local v8    # "t1":J
    .end local v10    # "t2":J
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No valid version, delete outdated module "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1197
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 1198
    .restart local v8    # "t1":J
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->deleteRecursively(Ljava/io/File;)V

    .line 1199
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 1200
    .restart local v10    # "t2":J
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v12, "Cost "

    invoke-direct {v7, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long v12, v10, v8

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v12, " microseconds(us) to delete directory "

    .line 1201
    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 1202
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1200
    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1205
    .end local v4    # "dir":Ljava/io/File;
    .end local v8    # "t1":J
    .end local v10    # "t2":J
    :cond_3
    return-void
.end method

.method private static closeSafely(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 1470
    if-eqz p0, :cond_0

    .line 1472
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1477
    :cond_0
    :goto_0
    return-void

    .line 1473
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private copy(Ljava/io/File;Ljava/io/File;)Z
    .locals 16
    .param p1, "fIn"    # Ljava/io/File;
    .param p2, "fOut"    # Ljava/io/File;

    .prologue
    .line 1422
    const/4 v5, 0x0

    .line 1423
    .local v5, "result":Z
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz p2, :cond_0

    .line 1424
    const/4 v5, 0x1

    .line 1425
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 1426
    .local v6, "t1":J
    const/4 v3, 0x0

    .line 1428
    .local v3, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1429
    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v4, "in":Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->copy(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1434
    invoke-static {v4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->closeSafely(Ljava/io/Closeable;)V

    move-object v3, v4

    .line 1436
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 1437
    .local v8, "t2":J
    new-instance v10, Ljava/lang/StringBuffer;

    const-string v11, "Cost "

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long v12, v8, v6

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " microseconds(us) to copy file "

    .line 1438
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 1439
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 1440
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1437
    invoke-static {v10}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1442
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v6    # "t1":J
    .end local v8    # "t2":J
    :cond_0
    return v5

    .line 1430
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "t1":J
    :catch_0
    move-exception v2

    .line 1431
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to do copy "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1432
    const/4 v5, 0x0

    .line 1434
    invoke-static {v3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_2
    invoke-static {v3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->closeSafely(Ljava/io/Closeable;)V

    .line 1435
    throw v10

    .line 1434
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .line 1430
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "fOut"    # Ljava/io/File;

    .prologue
    .line 1446
    const/4 v5, 0x0

    .line 1447
    .local v5, "result":Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1448
    const/4 v5, 0x1

    .line 1449
    const/4 v3, 0x0

    .line 1451
    .local v3, "out":Ljava/io/FileOutputStream;
    const/16 v6, 0x1000

    :try_start_0
    new-array v0, v6, [B

    .line 1453
    .local v0, "buffer":[B
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1454
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :goto_0
    const/4 v6, 0x0

    :try_start_1
    array-length v7, v0

    invoke-virtual {p1, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, "n":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    .line 1455
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1458
    .end local v2    # "n":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 1459
    .end local v0    # "buffer":[B
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to do copy "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1460
    const/4 v5, 0x0

    .line 1462
    invoke-static {v3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->closeSafely(Ljava/io/Closeable;)V

    .line 1463
    invoke-static {p1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->closeSafely(Ljava/io/Closeable;)V

    .line 1466
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :cond_0
    :goto_2
    return v5

    .line 1457
    .restart local v0    # "buffer":[B
    .restart local v2    # "n":I
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1462
    invoke-static {v4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->closeSafely(Ljava/io/Closeable;)V

    .line 1463
    invoke-static {p1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_2

    .line 1462
    .end local v0    # "buffer":[B
    .end local v2    # "n":I
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {v3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->closeSafely(Ljava/io/Closeable;)V

    .line 1463
    invoke-static {p1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->closeSafely(Ljava/io/Closeable;)V

    .line 1464
    throw v6

    .line 1462
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1458
    .end local v0    # "buffer":[B
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private copyModuleInfo(Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;ZZLandroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "from"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;
    .param p3, "to"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    .param p4, "includeClassLoader"    # Z
    .param p5, "includePackageInfo"    # Z
    .param p6, "defContext"    # Landroid/content/Context;
    .param p7, "moduleBaseDir"    # Ljava/lang/String;

    .prologue
    .line 963
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 964
    iput-object p1, p3, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;->moduleName:Ljava/lang/String;

    .line 965
    iget-object v1, p2, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;->version:Ljava/lang/String;

    iput-object v1, p3, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;->version:Ljava/lang/String;

    .line 966
    iget-object v1, p2, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;->loaders:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 967
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    iget-object v1, p2, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;->version:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 969
    new-instance v1, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;

    iget-object v2, p2, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;->version:Ljava/lang/String;

    .line 970
    invoke-direct {p0, p7, p1, v2}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getModuleBaseApkPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, p6, v0, v2}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    iput-object v1, p3, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;->context:Landroid/content/Context;

    .line 972
    :cond_0
    if-eqz p4, :cond_1

    .line 973
    invoke-static {p3, v0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;->access$2002(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    .line 976
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_1
    return-void
.end method

.method private createModuleLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 20
    .param p1, "modulePath"    # Ljava/lang/String;

    .prologue
    .line 1235
    const-class v3, Lcom/huanju/ssp/base/hotfix/ModuleManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 1236
    .local v6, "loader":Ljava/lang/ClassLoader;
    if-eqz p1, :cond_6

    .line 1238
    :try_start_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->ensureDir(Ljava/io/File;Z)V

    .line 1240
    new-instance v9, Ljava/io/File;

    const-string v3, "classes.dex"

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    .local v9, "fDex":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1242
    new-instance v9, Ljava/io/File;

    .end local v9    # "fDex":Ljava/io/File;
    const-string v3, "base.apk"

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    .restart local v9    # "fDex":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1244
    const-string v3, "Corrupted ! Can\'t find classes.dex or base.apk !"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    move-object v2, v6

    .line 1281
    .end local v6    # "loader":Ljava/lang/ClassLoader;
    .end local v9    # "fDex":Ljava/io/File;
    :goto_0
    return-object v6

    .line 1248
    .restart local v6    # "loader":Ljava/lang/ClassLoader;
    .restart local v9    # "fDex":Ljava/io/File;
    :cond_0
    const/4 v4, 0x0

    .line 1249
    .local v4, "dirOpt":Ljava/io/File;
    sget-object v3, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->sUseDefaultDexOptDir:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1250
    new-instance v4, Ljava/io/File;

    .end local v4    # "dirOpt":Ljava/io/File;
    const-string v3, "mopt"

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    .restart local v4    # "dirOpt":Ljava/io/File;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->ensureDir(Ljava/io/File;Z)V

    .line 1254
    :cond_1
    const/4 v5, 0x0

    .line 1255
    .local v5, "libPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1256
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLibDirs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1257
    .local v10, "p":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1258
    if-nez v5, :cond_3

    .line 1259
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1261
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v16, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1266
    .end local v10    # "p":Ljava/lang/String;
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1267
    if-nez v5, :cond_5

    .line 1268
    move-object/from16 v5, p1

    .line 1271
    :cond_5
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 1272
    .local v12, "t1":J
    new-instance v2, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleClassLoader;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleClassLoader;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/huanju/ssp/base/hotfix/ModuleManager$1;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1273
    .end local v6    # "loader":Ljava/lang/ClassLoader;
    .local v2, "loader":Ljava/lang/ClassLoader;
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 1274
    .local v14, "t2":J
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v7, "Cost "

    invoke-direct {v3, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long v16, v14, v12

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v7, " microseconds(us) to create module classloader"

    .line 1275
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1276
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1274
    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local v4    # "dirOpt":Ljava/io/File;
    .end local v5    # "libPath":Ljava/lang/String;
    .end local v9    # "fDex":Ljava/io/File;
    .end local v12    # "t1":J
    .end local v14    # "t2":J
    :goto_2
    move-object v6, v2

    .line 1281
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    .restart local v6    # "loader":Ljava/lang/ClassLoader;
    goto/16 :goto_0

    .line 1266
    .restart local v4    # "dirOpt":Ljava/io/File;
    .restart local v5    # "libPath":Ljava/lang/String;
    .restart local v9    # "fDex":Ljava/io/File;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1277
    .end local v4    # "dirOpt":Ljava/io/File;
    .end local v5    # "libPath":Ljava/lang/String;
    .end local v9    # "fDex":Ljava/io/File;
    :catch_0
    move-exception v8

    move-object v2, v6

    .line 1278
    .end local v6    # "loader":Ljava/lang/ClassLoader;
    .restart local v2    # "loader":Ljava/lang/ClassLoader;
    .local v8, "ex":Ljava/lang/Exception;
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create module loader ! "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 1277
    .end local v8    # "ex":Ljava/lang/Exception;
    .restart local v4    # "dirOpt":Ljava/io/File;
    .restart local v5    # "libPath":Ljava/lang/String;
    .restart local v9    # "fDex":Ljava/io/File;
    .restart local v12    # "t1":J
    :catch_1
    move-exception v8

    goto :goto_3

    .end local v2    # "loader":Ljava/lang/ClassLoader;
    .end local v4    # "dirOpt":Ljava/io/File;
    .end local v5    # "libPath":Ljava/lang/String;
    .end local v9    # "fDex":Ljava/io/File;
    .end local v12    # "t1":J
    .restart local v6    # "loader":Ljava/lang/ClassLoader;
    :cond_6
    move-object v2, v6

    .end local v6    # "loader":Ljava/lang/ClassLoader;
    .restart local v2    # "loader":Ljava/lang/ClassLoader;
    goto :goto_2
.end method

.method private deleteRecursively(Ljava/io/File;)V
    .locals 5
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 1209
    if-eqz p1, :cond_3

    .line 1210
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1211
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 1212
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 1213
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 1214
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1215
    invoke-direct {p0, v0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->deleteRecursively(Ljava/io/File;)V

    .line 1217
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1212
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1223
    .end local v0    # "f":Ljava/io/File;
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1227
    .end local v1    # "files":[Ljava/io/File;
    :cond_3
    return-void
.end method

.method private dump()V
    .locals 12

    .prologue
    .line 1480
    const-string v6, "ModuleManager"

    const-string v7, "Dump Module Manager:"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    iget-object v7, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    monitor-enter v7

    .line 1491
    :try_start_0
    iget-object v6, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1492
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1493
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1494
    iget-object v8, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;

    .line 1495
    .local v4, "mls":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;
    if-eqz v4, :cond_0

    .line 1496
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "        "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;->version:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1497
    iget-object v8, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleBaseDir:Ljava/lang/String;

    invoke-direct {p0, v8, v5}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getModuleIndex(Ljava/lang/String;Ljava/lang/String;)Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;

    move-result-object v3

    .line 1498
    .local v3, "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;
    if-eqz v3, :cond_1

    .line 1499
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "        index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;->currentVersion:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;->preloadInterface:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1502
    :cond_1
    iget-object v8, v4, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;->loaders:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    goto :goto_0

    .line 1522
    .end local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;
    .end local v4    # "mls":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;
    .end local v5    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1509
    .restart local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    const-string v6, "    Excluded classes:"

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1510
    iget-object v6, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mExcludedClasses:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1522
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1523
    const-string v6, "    Module update listener:"

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1524
    iget-object v7, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mListeners:Ljava/util/HashMap;

    monitor-enter v7

    .line 1525
    :try_start_2
    iget-object v6, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1526
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1527
    .restart local v5    # "name":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 1528
    iget-object v8, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1529
    .local v2, "ll":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;>;"
    if-eqz v2, :cond_3

    .line 1530
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;

    .line 1531
    .local v1, "l":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;
    if-eqz v1, :cond_4

    .line 1532
    const-string v9, "ModuleManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "        "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;->listener:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;->handler:Landroid/os/Handler;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1539
    .end local v1    # "l":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;
    .end local v2    # "ll":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;>;"
    .end local v5    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    :cond_5
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1540
    return-void
.end method

.method private ensureDir(Ljava/io/File;Z)V
    .locals 1
    .param p1, "f"    # Ljava/io/File;
    .param p2, "parentOnly"    # Z

    .prologue
    .line 1411
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1412
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 1414
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1415
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1416
    const-string v0, "Failed to create directory"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 1419
    :cond_1
    return-void
.end method

.method private getAllModules(ZLandroid/content/Context;I)Ljava/util/List;
    .locals 6
    .param p1, "includePackageInfo"    # Z
    .param p2, "defContext"    # Landroid/content/Context;
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1018
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1019
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;>;"
    new-instance v0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$3;

    move-object v1, p0

    move v2, p3

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$3;-><init>(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;ILjava/util/List;ZLandroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->traversalModuleLoaders(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoadersHandler;)V

    .line 1035
    return-object v3
.end method

.method private getExcludedClasses(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 584
    const/4 v1, 0x0

    .line 585
    .local v1, "classNames":[Ljava/lang/String;
    iget-object v3, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    monitor-enter v3

    .line 586
    :try_start_0
    iget-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mExcludedClasses:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 587
    monitor-exit v3

    .line 588
    return-object v1

    .line 587
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getInterfaceInstance(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "cl"    # Ljava/lang/ClassLoader;
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "staticMethod"    # Ljava/lang/String;
    .param p4, "paramObjs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 868
    .local p3, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 869
    .local v3, "iface":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 871
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 872
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 873
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_1

    .line 875
    :try_start_1
    invoke-virtual {v0, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 876
    .local v4, "m":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 877
    invoke-virtual {v4, v0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 901
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "iface":Ljava/lang/Object;, "TT;"
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v3

    .line 879
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "iface":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v2

    .line 880
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to invoke static method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 897
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v3    # "iface":Ljava/lang/Object;, "TT;"
    :catch_1
    move-exception v2

    .line 898
    .restart local v2    # "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get interface instance "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 884
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "iface":Ljava/lang/Object;, "TT;"
    :cond_1
    :try_start_3
    invoke-virtual {v0, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 885
    .local v1, "ctor":Ljava/lang/reflect/Constructor;
    if-eqz v1, :cond_2

    .line 886
    invoke-virtual {v1, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v3

    .line 892
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;
    .end local v3    # "iface":Ljava/lang/Object;, "TT;"
    :cond_2
    :goto_1
    if-nez v3, :cond_0

    .line 893
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "iface":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 888
    :catch_2
    move-exception v2

    .line 889
    .restart local v2    # "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create instance, try default "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method private getModuleApkSuffix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "base.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getModuleBaseApkPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "moduleBaseDir"    # Ljava/lang/String;
    .param p2, "moduleName"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getModulePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getModuleApkSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getModuleIndex(Ljava/lang/String;Ljava/lang/String;)Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;
    .locals 8
    .param p1, "moduleBaseDir"    # Ljava/lang/String;
    .param p2, "moduleName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1109
    new-instance v4, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;

    invoke-direct {v4, v5}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;-><init>(Lcom/huanju/ssp/base/hotfix/ModuleManager$1;)V

    .line 1110
    .local v4, "index":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;
    if-eqz p2, :cond_3

    .line 1111
    iget-object v6, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mIndexFileLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1112
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getModuleIndexPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1113
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 1114
    const/4 v0, 0x0

    .line 1116
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1117
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;->currentVersion:Ljava/lang/String;

    .line 1118
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;->preloadInterface:Ljava/lang/String;

    .line 1119
    iget-object v5, v4, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;->currentVersion:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1120
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;->currentVersion:Ljava/lang/String;

    .line 1122
    :cond_0
    iget-object v5, v4, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;->preloadInterface:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1123
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;->preloadInterface:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1128
    :cond_1
    :try_start_3
    invoke-static {v1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->closeSafely(Ljava/io/Closeable;)V

    .line 1131
    .end local v1    # "br":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1133
    .end local v3    # "f":Ljava/io/File;
    :cond_3
    return-object v4

    .line 1125
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "f":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 1126
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read index file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1128
    :try_start_5
    invoke-static {v0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1131
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "f":Ljava/io/File;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    .line 1128
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "f":Ljava/io/File;
    :catchall_1
    move-exception v5

    :goto_2
    :try_start_6
    invoke-static {v0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->closeSafely(Ljava/io/Closeable;)V

    .line 1129
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1128
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1125
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private getModuleIndexPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "moduleBaseDir"    # Ljava/lang/String;
    .param p2, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getModulePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getModuleInfo(Ljava/lang/String;ZZLandroid/content/Context;)Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    .locals 10
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "includeClassLoader"    # Z
    .param p3, "includePackageInfo"    # Z
    .param p4, "defContext"    # Landroid/content/Context;

    .prologue
    .line 1001
    const/4 v8, 0x0

    .line 1002
    .local v8, "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    if-eqz p1, :cond_1

    .line 1003
    iget-object v9, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    monitor-enter v9

    .line 1004
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;

    .line 1005
    .local v2, "mls":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;
    if-eqz v2, :cond_0

    .line 1006
    new-instance v3, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;

    invoke-direct {v3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1007
    .end local v8    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    .local v3, "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    :try_start_1
    iget-object v7, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleBaseDir:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->copyModuleInfo(Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;ZZLandroid/content/Context;Ljava/lang/String;)V

    .line 1011
    :goto_0
    monitor-exit v9

    .line 1013
    .end local v2    # "mls":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;
    :goto_1
    return-object v3

    .line 1011
    .end local v3    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    .restart local v8    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    :catchall_0
    move-exception v0

    move-object v3, v8

    .end local v8    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    .restart local v3    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    :goto_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .end local v3    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    .restart local v2    # "mls":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;
    .restart local v8    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    :cond_0
    move-object v3, v8

    .end local v8    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    .restart local v3    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    goto :goto_0

    .end local v2    # "mls":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;
    .end local v3    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    .restart local v8    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    :cond_1
    move-object v3, v8

    .end local v8    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    .restart local v3    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    goto :goto_1
.end method

.method private getModuleInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "staticMethod"    # Ljava/lang/String;
    .param p5, "paramObjs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 843
    .local p4, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 844
    .local v0, "iface":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 845
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getModuleInfo(Ljava/lang/String;ZZLandroid/content/Context;)Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;

    move-result-object v1

    .line 846
    .local v1, "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    if-eqz v1, :cond_2

    .line 847
    invoke-static {v1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;->access$2000(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;)Ljava/lang/ClassLoader;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 848
    invoke-static {v1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;->access$2000(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;)Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2, p2, p3, p4, p5}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getInterfaceInstance(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 862
    .end local v0    # "iface":Ljava/lang/Object;, "TT;"
    .end local v1    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    :cond_0
    :goto_0
    return-object v0

    .line 851
    .restart local v0    # "iface":Ljava/lang/Object;, "TT;"
    .restart local v1    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No loader for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", try preloaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 853
    const-class v2, Lcom/huanju/ssp/base/hotfix/ModuleManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2, p2, p3, p4, p5}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getInterfaceInstance(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 857
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such module "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", try preloaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 858
    const-class v2, Lcom/huanju/ssp/base/hotfix/ModuleManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2, p2, p3, p4, p5}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getInterfaceInstance(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private getModulePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "moduleBaseDir"    # Ljava/lang/String;
    .param p2, "moduleName"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    .line 1082
    .line 1083
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, p1

    .line 1084
    .local v0, "path":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_0

    .line 1085
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1086
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1091
    :cond_0
    :goto_1
    return-object v0

    .line 1083
    .end local v0    # "path":Ljava/lang/String;
    :cond_1
    const-string v0, "/tmp"

    goto :goto_0

    .line 1088
    .restart local v0    # "path":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getVersionLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 5
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 1039
    const/4 v1, 0x0

    .line 1040
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1041
    iget-object v4, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    monitor-enter v4

    .line 1042
    :try_start_0
    iget-object v3, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;

    .line 1043
    .local v2, "loaders":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;
    if-eqz v2, :cond_0

    .line 1044
    iget-object v3, v2, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;->loaders:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/ClassLoader;

    move-object v1, v0

    .line 1046
    :cond_0
    monitor-exit v4

    .line 1048
    .end local v2    # "loaders":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;
    :cond_1
    return-object v1

    .line 1046
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private inPatterns(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "patterns"    # [Ljava/lang/String;

    .prologue
    .line 1395
    const/4 v1, 0x0

    .line 1397
    .local v1, "result":Z
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1398
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p2, v2

    .line 1399
    .local v0, "p":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1400
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1401
    const/4 v1, 0x1

    .line 1407
    .end local v0    # "p":Ljava/lang/String;
    :cond_0
    return v1

    .line 1398
    .restart local v0    # "p":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private inflatePackage(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 20
    .param p1, "fZip"    # Ljava/io/File;
    .param p2, "outDir"    # Ljava/io/File;
    .param p3, "includes"    # [Ljava/lang/String;
    .param p4, "excludes"    # [Ljava/lang/String;

    .prologue
    .line 1326
    const/4 v7, 0x0

    .line 1327
    .local v7, "result":Z
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1328
    const/4 v7, 0x1

    .line 1329
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "outDir path "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",fZip path:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 1331
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1332
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 1333
    .local v8, "t1":J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->deleteRecursively(Ljava/io/File;)V

    .line 1334
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 1335
    .local v10, "t2":J
    new-instance v14, Ljava/lang/StringBuffer;

    const-string v15, "Cost "

    invoke-direct {v14, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long v16, v10, v8

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, " microseconds(us) to delete directory "

    .line 1336
    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 1337
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1335
    invoke-static {v14}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1339
    .end local v8    # "t1":J
    .end local v10    # "t2":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 1340
    .restart local v8    # "t1":J
    const/4 v4, 0x0

    .line 1341
    .local v4, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    const/4 v12, 0x0

    .line 1343
    .local v12, "zip":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v13, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1344
    .end local v12    # "zip":Ljava/util/zip/ZipFile;
    .local v13, "zip":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 1345
    if-eqz v4, :cond_9

    .line 1346
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1347
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 1348
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1349
    :cond_2
    const-string v14, " zip entry null"

    invoke-static {v14}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1373
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v3

    move-object v12, v13

    .line 1374
    .end local v13    # "zip":Ljava/util/zip/ZipFile;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v12    # "zip":Ljava/util/zip/ZipFile;
    :goto_1
    :try_start_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to inflate package file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1375
    const/4 v7, 0x0

    .line 1378
    if-eqz v12, :cond_3

    .line 1380
    :try_start_3
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1386
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 1387
    .restart local v10    # "t2":J
    new-instance v14, Ljava/lang/StringBuffer;

    const-string v15, "Cost "

    invoke-direct {v14, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long v16, v10, v8

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, " microseconds(us) to unzip module package "

    .line 1388
    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 1389
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1387
    invoke-static {v14}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1391
    .end local v4    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v8    # "t1":J
    .end local v10    # "t2":J
    .end local v12    # "zip":Ljava/util/zip/ZipFile;
    :cond_4
    return v7

    .line 1352
    .restart local v4    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .restart local v5    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v8    # "t1":J
    .restart local v13    # "zip":Ljava/util/zip/ZipFile;
    :cond_5
    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1353
    .local v6, "name":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " zip name :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 1354
    if-eqz v6, :cond_1

    .line 1357
    if-eqz p3, :cond_7

    move-object/from16 v0, p3

    array-length v14, v0

    if-lez v14, :cond_7

    .line 1358
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->inPatterns(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 1359
    const-string v14, " not include"

    invoke-static {v14}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1378
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v14

    move-object v12, v13

    .end local v13    # "zip":Ljava/util/zip/ZipFile;
    .restart local v12    # "zip":Ljava/util/zip/ZipFile;
    :goto_3
    if-eqz v12, :cond_6

    .line 1380
    :try_start_5
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1385
    :cond_6
    :goto_4
    throw v14

    .line 1363
    .end local v12    # "zip":Ljava/util/zip/ZipFile;
    .restart local v5    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v13    # "zip":Ljava/util/zip/ZipFile;
    :cond_7
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v6, v1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->inPatterns(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1364
    const-string v14, "excludes true"

    invoke-static {v14}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1367
    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "outDir path 1 "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",name:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 1368
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1369
    .local v2, "destination":Ljava/io/File;
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->ensureDir(Ljava/io/File;Z)V

    .line 1370
    invoke-virtual {v13, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->copy(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1378
    .end local v2    # "destination":Ljava/io/File;
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "name":Ljava/lang/String;
    :cond_9
    if-eqz v13, :cond_a

    .line 1380
    :try_start_7
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-object v12, v13

    .line 1383
    .end local v13    # "zip":Ljava/util/zip/ZipFile;
    .restart local v12    # "zip":Ljava/util/zip/ZipFile;
    goto/16 :goto_2

    .line 1381
    .end local v12    # "zip":Ljava/util/zip/ZipFile;
    .restart local v13    # "zip":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v14

    move-object v12, v13

    .line 1383
    .end local v13    # "zip":Ljava/util/zip/ZipFile;
    .restart local v12    # "zip":Ljava/util/zip/ZipFile;
    goto/16 :goto_2

    .line 1381
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v14

    goto/16 :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v15

    goto :goto_4

    .line 1378
    :catchall_1
    move-exception v14

    goto :goto_3

    .line 1373
    :catch_4
    move-exception v3

    goto/16 :goto_1

    .end local v12    # "zip":Ljava/util/zip/ZipFile;
    .restart local v13    # "zip":Ljava/util/zip/ZipFile;
    :cond_a
    move-object v12, v13

    .end local v13    # "zip":Ljava/util/zip/ZipFile;
    .restart local v12    # "zip":Ljava/util/zip/ZipFile;
    goto/16 :goto_2
.end method

.method private init(Landroid/content/Context;ZLcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "possibleSlow"    # Z
    .param p3, "initialListener"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 338
    const/4 v4, 0x0

    .line 339
    .local v4, "toLoadLocal":Ljava/lang/String;
    const-string v5, "modules init isUpdate:"

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 340
    iget-object v6, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    monitor-enter v6

    .line 341
    :try_start_0
    iget-object v5, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleBaseDir:Ljava/lang/String;

    const-string v7, "/tmp"

    if-ne v5, v7, :cond_0

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modules init isUpdate mModuleBaseDir:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleBaseDir:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 343
    if-eqz p1, :cond_0

    .line 344
    const-string v5, "modules"

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 346
    .local v2, "moduleDir":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modules init isUpdate moduleDir:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 347
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .local v0, "baseDir":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 348
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "moduleDir :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 349
    iput-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleBaseDir:Ljava/lang/String;

    .line 350
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->setModuleLibDirsLocked(Landroid/content/Context;)V

    .line 351
    if-eqz p2, :cond_2

    .line 353
    new-instance v5, Ljava/lang/Thread;

    new-instance v7, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$1;

    invoke-direct {v7, p0, p1, p3, p4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$1;-><init>(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Landroid/content/Context;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;)V

    invoke-direct {v5, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v5, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mLoaderThread:Ljava/lang/Thread;

    .line 378
    iget-object v5, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mLoaderThread:Ljava/lang/Thread;

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Ljava/lang/Thread;->setPriority(I)V

    .line 379
    iget-object v5, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mLoaderThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 395
    .end local v0    # "baseDir":Ljava/lang/String;
    .end local v2    # "moduleDir":Ljava/io/File;
    :cond_0
    :goto_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    if-eqz v4, :cond_1

    .line 397
    invoke-direct {p0, v4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->loadExistingModules(Ljava/lang/String;)V

    .line 400
    invoke-direct {p0, p3, p4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->notifyInitialLoadingComplete(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;)V

    .line 402
    :cond_1
    return-void

    .line 381
    .restart local v0    # "baseDir":Ljava/lang/String;
    .restart local v2    # "moduleDir":Ljava/io/File;
    :cond_2
    :try_start_1
    const-string v5, "nubia_ad_info"

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 382
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v5, "dex_update_switch"

    const/4 v7, 0x1

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 383
    .local v1, "isUpdate":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modules init isUpdate:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 384
    if-nez v1, :cond_3

    .line 385
    const-string v5, "\u672c\u5730\u5347\u7ea7\u5f00\u5173 \u5173\u95ed,\u5220\u9664\u672c\u5730moudule"

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 395
    .end local v0    # "baseDir":Ljava/lang/String;
    .end local v1    # "isUpdate":Z
    .end local v2    # "moduleDir":Ljava/io/File;
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 389
    .restart local v0    # "baseDir":Ljava/lang/String;
    .restart local v1    # "isUpdate":Z
    .restart local v2    # "moduleDir":Ljava/io/File;
    .restart local v3    # "sp":Landroid/content/SharedPreferences;
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleBaseDir:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private loadExistingModules(Ljava/lang/String;)V
    .locals 17
    .param p1, "moduleBaseDir"    # Ljava/lang/String;

    .prologue
    .line 905
    if-eqz p1, :cond_6

    .line 906
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moduleBaseDir :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 907
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 908
    .local v10, "fBase":Ljava/io/File;
    const/4 v11, 0x0

    .line 909
    .local v11, "files":[Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 910
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 912
    :cond_0
    if-eqz v11, :cond_6

    .line 913
    array-length v0, v11

    move/from16 v16, v0

    const/4 v2, 0x0

    move v15, v2

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    aget-object v9, v11, v15

    .line 915
    .local v9, "f":Ljava/io/File;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .local v3, "moduleName":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Try to load found module: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 917
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getModuleIndex(Ljava/lang/String;Ljava/lang/String;)Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;

    move-result-object v12

    .line 918
    .local v12, "index":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;
    iget-object v14, v12, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;->currentVersion:Ljava/lang/String;

    .line 919
    .local v14, "version":Ljava/lang/String;
    iget-object v4, v12, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;->preloadInterface:Ljava/lang/String;

    .line 920
    .local v4, "preloadInterface":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Try to load found module version: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",preloadInterface:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",SDKInfo.VER_CODE :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 921
    if-eqz v14, :cond_5

    const/4 v2, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 922
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getVersionLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_4

    .line 923
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v14}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getModulePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 925
    .local v13, "modulePath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modulePath: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 926
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->createModuleLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v8

    .line 927
    .local v8, "cl":Ljava/lang/ClassLoader;
    if-eqz v8, :cond_3

    .line 929
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getExcludedClasses(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 928
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->updateExcludedClasses(Ljava/lang/ClassLoader;[Ljava/lang/String;)V

    .line 930
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v8}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->addModuleLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 934
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 935
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getModuleInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    .end local v8    # "cl":Ljava/lang/ClassLoader;
    .end local v13    # "modulePath":Ljava/lang/String;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v14}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->cleanupModuleDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    .end local v3    # "moduleName":Ljava/lang/String;
    .end local v4    # "preloadInterface":Ljava/lang/String;
    .end local v12    # "index":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;
    .end local v14    # "version":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto/16 :goto_0

    .line 939
    .restart local v3    # "moduleName":Ljava/lang/String;
    .restart local v4    # "preloadInterface":Ljava/lang/String;
    .restart local v8    # "cl":Ljava/lang/ClassLoader;
    .restart local v12    # "index":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;
    .restart local v13    # "modulePath":Ljava/lang/String;
    .restart local v14    # "version":Ljava/lang/String;
    :cond_3
    const-string v2, "Failed to create module loader"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 942
    .end local v8    # "cl":Ljava/lang/ClassLoader;
    .end local v13    # "modulePath":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected duplicate module "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", version "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 946
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No valid version found for module "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",curVercod:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",Exit ver:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 957
    .end local v3    # "moduleName":Ljava/lang/String;
    .end local v4    # "preloadInterface":Ljava/lang/String;
    .end local v9    # "f":Ljava/io/File;
    .end local v10    # "fBase":Ljava/io/File;
    .end local v11    # "files":[Ljava/io/File;
    .end local v12    # "index":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;
    .end local v14    # "version":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private notifyInitialLoadingComplete(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;)V
    .locals 10
    .param p1, "initialListener"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x0

    .line 534
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v3, v1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getAllModules(ZLandroid/content/Context;I)Ljava/util/List;

    move-result-object v8

    .line 535
    .local v8, "lmi":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;>;"
    if-eqz v8, :cond_3

    .line 537
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;

    .line 538
    .local v9, "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    if-eqz v9, :cond_0

    .line 539
    iget-object v1, v9, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;->moduleName:Ljava/lang/String;

    iget-object v2, v9, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;->version:Ljava/lang/String;

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->notifyListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 544
    .end local v9    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;

    .line 545
    .restart local v9    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    if-eqz v9, :cond_2

    .line 546
    iget-object v1, v9, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;->moduleName:Ljava/lang/String;

    iget-object v2, v9, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;->version:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->notifyListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v9    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    :cond_3
    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, p1

    move-object v7, p2

    .line 551
    invoke-direct/range {v2 .. v7}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->notifyListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;)V

    .line 552
    return-void
.end method

.method private notifyListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;)V
    .locals 6
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "oldVersion"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 517
    if-eqz p4, :cond_0

    .line 518
    if-eqz p5, :cond_1

    .line 519
    new-instance v0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$2;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$2;-><init>(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p5, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    invoke-interface {p4, p1, p2, p3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;->onModuleUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private notifyListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "oldVersion"    # Ljava/lang/String;

    .prologue
    .line 489
    if-eqz p1, :cond_3

    .line 490
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v6, "dlist":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;>;"
    iget-object v1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 493
    .local v9, "mls":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;>;"
    if-eqz v9, :cond_1

    .line 494
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;

    .line 495
    .local v8, "ml":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;
    if-eqz v8, :cond_0

    iget-object v2, v8, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;->listener:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;

    if-eqz v2, :cond_0

    .line 496
    new-instance v7, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;

    const/4 v2, 0x0

    invoke-direct {v7, v2}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;-><init>(Lcom/huanju/ssp/base/hotfix/ModuleManager$1;)V

    .line 497
    .local v7, "dupl":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;
    iget-object v2, v8, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;->listener:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;

    iput-object v2, v7, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;->listener:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;

    .line 498
    iget-object v2, v8, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;->handler:Landroid/os/Handler;

    iput-object v2, v7, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;->handler:Landroid/os/Handler;

    .line 499
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 503
    .end local v7    # "dupl":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;
    .end local v8    # "ml":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;
    .end local v9    # "mls":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;>;"
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .restart local v9    # "mls":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;>;"
    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;

    .line 507
    .restart local v8    # "ml":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;
    if-eqz v8, :cond_2

    .line 508
    iget-object v4, v8, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;->listener:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;

    iget-object v5, v8, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;->handler:Landroid/os/Handler;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->notifyListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;)V

    goto :goto_1

    .line 512
    .end local v6    # "dlist":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;>;"
    .end local v8    # "ml":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;
    .end local v9    # "mls":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;>;"
    :cond_3
    return-void
.end method

.method private provideModulePackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "moduleName"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "modulePackagePath"    # Ljava/lang/String;
    .param p5, "preloadInterface"    # Ljava/lang/String;
    .param p6, "deleteSource"    # Z

    .prologue
    .line 601
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p4

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 602
    .local v12, "fPackage":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 603
    .end local v12    # "fPackage":Ljava/io/File;
    :cond_0
    const-string v4, "Valid module package expected !"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 604
    const/16 v21, 0x0

    .line 767
    :cond_1
    :goto_0
    return v21

    .line 610
    .restart local v12    # "fPackage":Ljava/io/File;
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    monitor-enter v5

    .line 611
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleBaseDir:Ljava/lang/String;

    .line 612
    .local v15, "moduleBaseDir":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mPackageProcessor:Lcom/huanju/ssp/base/hotfix/ModuleManager$PackageProcessor;

    move-object/from16 v19, v0

    .line 613
    .local v19, "processor":Lcom/huanju/ssp/base/hotfix/ModuleManager$PackageProcessor;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mExpectedSignatures:[Landroid/content/pm/Signature;

    .line 614
    .local v11, "expectedSignatures":[Landroid/content/pm/Signature;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    if-eqz v19, :cond_4

    .line 619
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3, v12}, Lcom/huanju/ssp/base/hotfix/ModuleManager$PackageProcessor;->process(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object v12

    .line 620
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 621
    :cond_3
    const-string v4, "The processor rejected the module package !"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 622
    const/16 v21, 0x0

    goto :goto_0

    .line 614
    .end local v11    # "expectedSignatures":[Landroid/content/pm/Signature;
    .end local v15    # "moduleBaseDir":Ljava/lang/String;
    .end local v19    # "processor":Lcom/huanju/ssp/base/hotfix/ModuleManager$PackageProcessor;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 626
    .restart local v11    # "expectedSignatures":[Landroid/content/pm/Signature;
    .restart local v15    # "moduleBaseDir":Ljava/lang/String;
    .restart local v19    # "processor":Lcom/huanju/ssp/base/hotfix/ModuleManager$PackageProcessor;
    :cond_4
    const/16 v17, 0x0

    .line 627
    .local v17, "pi":Landroid/content/pm/PackageInfo;
    if-eqz p1, :cond_5

    .line 629
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 630
    .local v18, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v17

    .line 637
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    :cond_5
    :goto_1
    if-eqz v17, :cond_9

    .line 638
    if-eqz v11, :cond_6

    array-length v4, v11

    if-lez v4, :cond_6

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 639
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->checkSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 640
    const-string v4, "Module signature doesn\'t match expected !"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 641
    const/16 v21, 0x0

    goto :goto_0

    .line 645
    :cond_6
    if-nez p2, :cond_7

    .line 646
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 p2, v0

    .line 648
    :cond_7
    if-nez p3, :cond_8

    .line 650
    move-object/from16 v0, v17

    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    .line 652
    :cond_8
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_9

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_9

    .line 653
    if-nez p5, :cond_9

    .line 654
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "dynamic.modules.preload_interface"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 665
    :cond_9
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 666
    :cond_a
    const-string v4, "moduleName or version can\'t be empty !"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 667
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 670
    :cond_b
    const/16 v21, 0x0

    .line 672
    .local v21, "toLoad":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mProvidersLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 673
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getModuleInfo(Ljava/lang/String;ZZLandroid/content/Context;)Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;

    move-result-object v14

    .line 674
    .local v14, "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    if-eqz v14, :cond_c

    iget-object v4, v14, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;->version:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 675
    :cond_c
    const-string v4, "Provide a new module"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 677
    const/16 v21, 0x1

    .line 690
    :goto_2
    if-eqz v21, :cond_d

    .line 692
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getVersionLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v10

    .line 693
    .local v10, "cl":Ljava/lang/ClassLoader;
    if-eqz v10, :cond_d

    .line 694
    const-string v4, "Reuse existing version loader"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 695
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getExcludedClasses(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->updateExcludedClasses(Ljava/lang/ClassLoader;[Ljava/lang/String;)V

    .line 697
    const/16 v21, 0x0

    .line 701
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v10}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->addModuleLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 702
    new-instance v13, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;

    const/4 v4, 0x0

    invoke-direct {v13, v4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;-><init>(Lcom/huanju/ssp/base/hotfix/ModuleManager$1;)V

    .line 703
    .local v13, "index":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;
    move-object/from16 v0, p3

    iput-object v0, v13, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;->currentVersion:Ljava/lang/String;

    .line 704
    move-object/from16 v0, p5

    iput-object v0, v13, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;->preloadInterface:Ljava/lang/String;

    .line 705
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v15, v1, v13}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->updateModuleIndex(Ljava/lang/String;Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;)V

    .line 708
    if-eqz v14, :cond_13

    iget-object v4, v14, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;->version:Ljava/lang/String;

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->notifyListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    .end local v10    # "cl":Ljava/lang/ClassLoader;
    .end local v13    # "index":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;
    :cond_d
    if-eqz v21, :cond_10

    .line 717
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v15, v1, v2}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getModulePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 724
    .local v16, "modulePath":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/4 v4, 0x0

    const-string v5, "lib/.*"

    aput-object v5, v20, v4

    const/4 v4, 0x1

    const-string v5, "classes.*\\.dex"

    aput-object v5, v20, v4

    .line 729
    .local v20, "toInclude":[Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v12, v4, v1, v5}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->inflatePackage(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v21

    .line 730
    if-eqz v21, :cond_14

    new-instance v4, Ljava/io/File;

    const-string v5, "base.apk"

    move-object/from16 v0, v16

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/16 v21, 0x1

    .line 732
    :goto_4
    const/4 v10, 0x0

    .line 733
    .restart local v10    # "cl":Ljava/lang/ClassLoader;
    if-eqz v21, :cond_e

    .line 734
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->createModuleLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v10

    .line 736
    :cond_e
    if-eqz v10, :cond_16

    .line 737
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getExcludedClasses(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->updateExcludedClasses(Ljava/lang/ClassLoader;[Ljava/lang/String;)V

    .line 738
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v10}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->addModuleLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 739
    new-instance v13, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;

    const/4 v4, 0x0

    invoke-direct {v13, v4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;-><init>(Lcom/huanju/ssp/base/hotfix/ModuleManager$1;)V

    .line 740
    .restart local v13    # "index":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;
    move-object/from16 v0, p3

    iput-object v0, v13, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;->currentVersion:Ljava/lang/String;

    .line 741
    move-object/from16 v0, p5

    iput-object v0, v13, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;->preloadInterface:Ljava/lang/String;

    .line 742
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v15, v1, v13}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->updateModuleIndex(Ljava/lang/String;Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;)V

    .line 746
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 747
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    invoke-direct/range {v4 .. v9}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getModuleInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    :cond_f
    if-eqz v14, :cond_15

    iget-object v4, v14, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;->version:Ljava/lang/String;

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->notifyListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    .end local v10    # "cl":Ljava/lang/ClassLoader;
    .end local v13    # "index":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;
    .end local v16    # "modulePath":Ljava/lang/String;
    .end local v20    # "toInclude":[Ljava/lang/String;
    :cond_10
    :goto_6
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 761
    if-eqz p6, :cond_1

    .line 763
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1

    .line 764
    const-string v4, "Failed to delete source module package file"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 679
    :cond_11
    :try_start_4
    iget-object v4, v14, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;->version:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 680
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provide a different version, previous "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v14, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 682
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 685
    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unnecessary duplicate module "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 760
    .end local v14    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    :catchall_1
    move-exception v4

    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 708
    .restart local v10    # "cl":Ljava/lang/ClassLoader;
    .restart local v13    # "index":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;
    .restart local v14    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 730
    .end local v10    # "cl":Ljava/lang/ClassLoader;
    .end local v13    # "index":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;
    .restart local v16    # "modulePath":Ljava/lang/String;
    .restart local v20    # "toInclude":[Ljava/lang/String;
    :cond_14
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 751
    .restart local v10    # "cl":Ljava/lang/ClassLoader;
    .restart local v13    # "index":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;
    :cond_15
    const/4 v4, 0x0

    goto :goto_5

    .line 757
    .end local v13    # "index":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;
    :cond_16
    :try_start_5
    const-string v4, "Failed to create module loader"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    .line 632
    .end local v10    # "cl":Ljava/lang/ClassLoader;
    .end local v14    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    .end local v16    # "modulePath":Ljava/lang/String;
    .end local v20    # "toInclude":[Ljava/lang/String;
    .end local v21    # "toLoad":Z
    :catch_0
    move-exception v4

    goto/16 :goto_1
.end method

.method private ready()Z
    .locals 3

    .prologue
    .line 322
    iget-object v1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    monitor-enter v1

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleBaseDir:Ljava/lang/String;

    const-string v2, "/tmp"

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeModule(Ljava/lang/String;)Z
    .locals 9
    .param p1, "moduleName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 771
    const/4 v3, 0x0

    .line 772
    .local v3, "removed":Z
    if-eqz p1, :cond_3

    .line 774
    const/4 v4, 0x0

    .line 775
    .local v4, "versionToRemove":Ljava/lang/String;
    iget-object v6, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    monitor-enter v6

    .line 776
    :try_start_0
    iget-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleBaseDir:Ljava/lang/String;

    .line 777
    .local v2, "moduleBaseDir":Ljava/lang/String;
    iget-object v5, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;

    .line 778
    .local v1, "mls":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;
    if-eqz v1, :cond_0

    .line 779
    iget-object v4, v1, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;->version:Ljava/lang/String;

    .line 781
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 784
    iget-object v6, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mIndexFileLock:Ljava/lang/Object;

    monitor-enter v6

    .line 785
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, v2, p1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getModuleIndexPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 786
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 787
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 788
    const/4 v3, 0x1

    .line 793
    :cond_1
    :goto_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 794
    if-eqz v3, :cond_3

    .line 796
    iget-object v6, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    monitor-enter v6

    .line 797
    :try_start_2
    iget-object v5, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mls":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;
    check-cast v1, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;

    .line 798
    .restart local v1    # "mls":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;
    if-eqz v1, :cond_2

    .line 799
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;->version:Ljava/lang/String;

    .line 801
    :cond_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 804
    invoke-direct {p0, p1, v8, v4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->notifyListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "mls":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;
    .end local v2    # "moduleBaseDir":Ljava/lang/String;
    .end local v4    # "versionToRemove":Ljava/lang/String;
    :cond_3
    return v3

    .line 781
    .restart local v4    # "versionToRemove":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 790
    .restart local v0    # "f":Ljava/io/File;
    .restart local v1    # "mls":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;
    .restart local v2    # "moduleBaseDir":Ljava/lang/String;
    :cond_4
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete index for module "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 793
    .end local v0    # "f":Ljava/io/File;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 801
    .end local v1    # "mls":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;
    .restart local v0    # "f":Ljava/io/File;
    :catchall_2
    move-exception v5

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v5
.end method

.method private removeModuleUpdatedListener(Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;)V
    .locals 6
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;

    .prologue
    .line 464
    iget-object v4, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 465
    if-eqz p1, :cond_2

    .line 466
    if-nez p2, :cond_1

    .line 467
    :try_start_0
    iget-object v3, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    :cond_0
    :goto_0
    monitor-exit v4

    .line 485
    return-void

    .line 469
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->removeNonnullListenerLocked(Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;)V

    goto :goto_0

    .line 484
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 472
    :cond_2
    if-nez p2, :cond_3

    .line 473
    :try_start_1
    iget-object v3, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 475
    :cond_3
    iget-object v3, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 477
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 479
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 480
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0, v1, p2}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->removeNonnullListenerLocked(Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private removeNonnullListenerLocked(Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;)V
    .locals 4
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;

    .prologue
    .line 446
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 447
    iget-object v3, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 448
    .local v2, "mls":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;>;"
    if-eqz v2, :cond_2

    .line 449
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 450
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;

    .line 451
    .local v1, "ml":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;->listener:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;

    if-ne v3, p2, :cond_0

    .line 452
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 449
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 455
    .end local v1    # "ml":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 456
    iget-object v3, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .end local v0    # "i":I
    .end local v2    # "mls":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleListener;>;"
    :cond_2
    return-void
.end method

.method private setExcludedClasses(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "classNames"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "copy":[Ljava/lang/String;
    if-eqz p2, :cond_0

    array-length v2, p2

    if-lez v2, :cond_0

    .line 569
    array-length v2, p2

    new-array v0, v2, [Ljava/lang/String;

    .line 570
    array-length v2, p2

    invoke-static {p2, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 572
    :cond_0
    iget-object v3, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    monitor-enter v3

    .line 573
    :try_start_0
    iget-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mExcludedClasses:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v4, v3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getModuleInfo(Ljava/lang/String;ZZLandroid/content/Context;)Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;

    move-result-object v1

    .line 578
    .local v1, "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    if-eqz v1, :cond_1

    .line 579
    invoke-static {v1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;->access$2000(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;)Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->updateExcludedClasses(Ljava/lang/ClassLoader;[Ljava/lang/String;)V

    .line 581
    :cond_1
    return-void

    .line 574
    .end local v1    # "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private setExpectedSignatures([Landroid/content/pm/Signature;)V
    .locals 2
    .param p1, "signatures"    # [Landroid/content/pm/Signature;

    .prologue
    .line 561
    iget-object v1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    monitor-enter v1

    .line 562
    :try_start_0
    iput-object p1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mExpectedSignatures:[Landroid/content/pm/Signature;

    .line 563
    monitor-exit v1

    .line 564
    return-void

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setModuleLibDirsLocked(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1288
    if-eqz p1, :cond_0

    .line 1289
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1290
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    .line 1291
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 1292
    .local v3, "path":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1293
    const-string v0, "/lib/"

    .line 1294
    .local v0, "PATTERN":Ljava/lang/String;
    const-string v5, "/lib/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1295
    .local v4, "pos":I
    if-ltz v4, :cond_0

    .line 1296
    const-string v5, "/lib/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1297
    .local v1, "abi":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1298
    const-string v5, "arm64"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1299
    iget-object v5, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLibDirs:Ljava/util/ArrayList;

    const-string v6, "lib/arm64-v8a"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    .end local v0    # "PATTERN":Ljava/lang/String;
    .end local v1    # "abi":Ljava/lang/String;
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "pos":I
    :cond_0
    :goto_0
    return-void

    .line 1300
    .restart local v0    # "PATTERN":Ljava/lang/String;
    .restart local v1    # "abi":Ljava/lang/String;
    .restart local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "pos":I
    :cond_1
    const-string v5, "arm"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1301
    iget-object v5, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLibDirs:Ljava/util/ArrayList;

    const-string v6, "lib/armeabi-v7a"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1302
    iget-object v5, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLibDirs:Ljava/util/ArrayList;

    const-string v6, "lib/armeabi"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1303
    :cond_2
    const-string v5, "mips64"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1304
    iget-object v5, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLibDirs:Ljava/util/ArrayList;

    const-string v6, "lib/mips64"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1305
    :cond_3
    const-string v5, "mips"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1306
    iget-object v5, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLibDirs:Ljava/util/ArrayList;

    const-string v6, "lib/mips"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1307
    :cond_4
    const-string v5, "x86_64"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "x64"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1308
    :cond_5
    iget-object v5, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLibDirs:Ljava/util/ArrayList;

    const-string v6, "lib/x86_64"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1309
    :cond_6
    const-string v5, "x86"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1310
    iget-object v5, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLibDirs:Ljava/util/ArrayList;

    const-string v6, "lib/x86"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setPackageVerifier(Lcom/huanju/ssp/base/hotfix/ModuleManager$PackageProcessor;)V
    .locals 2
    .param p1, "processor"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$PackageProcessor;

    .prologue
    .line 555
    iget-object v1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    monitor-enter v1

    .line 556
    :try_start_0
    iput-object p1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mPackageProcessor:Lcom/huanju/ssp/base/hotfix/ModuleManager$PackageProcessor;

    .line 557
    monitor-exit v1

    .line 558
    return-void

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static setUseDefaultDexOptDir(Z)V
    .locals 1
    .param p0, "useDefault"    # Z

    .prologue
    .line 405
    sget-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->sUseDefaultDexOptDir:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 406
    return-void
.end method

.method private terminate()V
    .locals 2

    .prologue
    .line 410
    iget-object v1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    monitor-enter v1

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mLoaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 417
    return-void

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 413
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private traversalModuleLoaders(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoadersHandler;)V
    .locals 6
    .param p1, "handler"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoadersHandler;

    .prologue
    .line 985
    if-eqz p1, :cond_2

    .line 986
    iget-object v4, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    monitor-enter v4

    .line 987
    :try_start_0
    iget-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mModuleLoaders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 988
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 989
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;>;"
    if-eqz v0, :cond_0

    .line 990
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;

    invoke-interface {p1, v2, v3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoadersHandler;->handle(Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 995
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;>;"
    :cond_1
    monitor-exit v4

    .line 997
    .end local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleLoaders;>;>;"
    :cond_2
    return-void

    .line 995
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private updateExcludedClasses(Ljava/lang/ClassLoader;[Ljava/lang/String;)V
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "classNames"    # [Ljava/lang/String;

    .prologue
    .line 592
    instance-of v0, p1, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleClassLoader;

    if-eqz v0, :cond_0

    .line 593
    check-cast p1, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleClassLoader;

    .end local p1    # "cl":Ljava/lang/ClassLoader;
    invoke-static {p1, p2}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleClassLoader;->access$2100(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleClassLoader;[Ljava/lang/String;)V

    .line 595
    :cond_0
    return-void
.end method

.method private updateModuleIndex(Ljava/lang/String;Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;)V
    .locals 7
    .param p1, "moduleBaseDir"    # Ljava/lang/String;
    .param p2, "moduleName"    # Ljava/lang/String;
    .param p3, "index"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;

    .prologue
    .line 1138
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v4, p3, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;->currentVersion:Ljava/lang/String;

    .line 1139
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1140
    iget-object v5, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->mIndexFileLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1141
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->getModuleIndexPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1142
    .local v1, "f":Ljava/io/File;
    const/4 v4, 0x1

    invoke-direct {p0, v1, v4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->ensureDir(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1143
    const/4 v2, 0x0

    .line 1145
    .local v2, "pw":Ljava/io/PrintWriter;
    :try_start_1
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1146
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .local v3, "pw":Ljava/io/PrintWriter;
    :try_start_2
    iget-object v4, p3, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;->currentVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1147
    iget-object v4, p3, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;->preloadInterface:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p3, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleIndex;->preloadInterface:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1151
    :try_start_3
    invoke-static {v3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->closeSafely(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 1153
    .end local v3    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :goto_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1155
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_0
    return-void

    .line 1147
    .restart local v1    # "f":Ljava/io/File;
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    :cond_1
    :try_start_4
    const-string v4, ""
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 1148
    .end local v3    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :catch_0
    move-exception v0

    .line 1149
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to write to index file "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1151
    :try_start_6
    invoke-static {v2}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_1

    .line 1153
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v4

    .line 1151
    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v4

    :goto_3
    :try_start_7
    invoke-static {v2}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->closeSafely(Ljava/io/Closeable;)V

    .line 1152
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1151
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    goto :goto_3

    .line 1148
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    goto :goto_2
.end method
