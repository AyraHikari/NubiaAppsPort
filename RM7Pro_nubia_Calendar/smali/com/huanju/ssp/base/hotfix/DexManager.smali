.class public Lcom/huanju/ssp/base/hotfix/DexManager;
.super Ljava/lang/Object;
.source "DexManager.java"


# static fields
.field public static final DEX_FILE_NAME:Ljava/lang/String;

.field public static final DEX_UPDATE_SWITCH:Ljava/lang/String; = "dex_update_switch"

.field public static final TEMP_DEX_FILE_NAME:Ljava/lang/String; = "ssp_dex.jar"

.field private static mContext:Landroid/content/Context;

.field private static mDexManager:Lcom/huanju/ssp/base/hotfix/DexManager;


# instance fields
.field private cl:Ldalvik/system/DexClassLoader;

.field private mAdUpgradeListener:Lcom/huanju/ssp/sdk/inf/AdUpgradeListener;

.field public mApkUrl:Ljava/lang/String;

.field public mCheckSume:Ljava/lang/String;

.field public mCode:I

.field private volatile mTaskManager:Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ssp_dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/hotfix/DexManager;->DEX_FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/hotfix/DexManager;->mApkUrl:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/huanju/ssp/base/hotfix/DexManager;->mCode:I

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/hotfix/DexManager;->mCheckSume:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/hotfix/DexManager;->mTaskManager:Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/huanju/ssp/base/hotfix/DexManager;)Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/hotfix/DexManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/DexManager;->mTaskManager:Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;

    return-object v0
.end method

.method private static formatString2Int4Version(Ljava/lang/String;)I
    .locals 5
    .param p0, "osv"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 76
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "osvs":[Ljava/lang/String;
    array-length v1, v0

    if-ne v1, v4, :cond_0

    .line 79
    aget-object v1, v0, v3

    invoke-static {v1}, Lcom/huanju/ssp/base/hotfix/DexManager;->toInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x2710

    .line 86
    .end local v0    # "osvs":[Ljava/lang/String;
    :goto_0
    return v1

    .line 80
    .restart local v0    # "osvs":[Ljava/lang/String;
    :cond_0
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 81
    aget-object v1, v0, v3

    invoke-static {v1}, Lcom/huanju/ssp/base/hotfix/DexManager;->toInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x2710

    aget-object v2, v0, v4

    invoke-static {v2}, Lcom/huanju/ssp/base/hotfix/DexManager;->toInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/huanju/ssp/base/hotfix/DexManager;->toInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 83
    :cond_1
    aget-object v1, v0, v3

    invoke-static {v1}, Lcom/huanju/ssp/base/hotfix/DexManager;->toInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x2710

    aget-object v2, v0, v4

    invoke-static {v2}, Lcom/huanju/ssp/base/hotfix/DexManager;->toInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    goto :goto_0

    .line 86
    .end local v0    # "osvs":[Ljava/lang/String;
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/hotfix/DexManager;
    .locals 2
    .param p0, "cx"    # Landroid/content/Context;

    .prologue
    .line 62
    const-class v1, Lcom/huanju/ssp/base/hotfix/DexManager;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 63
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/hotfix/DexManager;->mContext:Landroid/content/Context;

    .line 65
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/hotfix/DexManager;->mDexManager:Lcom/huanju/ssp/base/hotfix/DexManager;

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Lcom/huanju/ssp/base/hotfix/DexManager;

    invoke-direct {v0}, Lcom/huanju/ssp/base/hotfix/DexManager;-><init>()V

    sput-object v0, Lcom/huanju/ssp/base/hotfix/DexManager;->mDexManager:Lcom/huanju/ssp/base/hotfix/DexManager;

    .line 68
    :cond_1
    sget-object v0, Lcom/huanju/ssp/base/hotfix/DexManager;->mDexManager:Lcom/huanju/ssp/base/hotfix/DexManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isNewDex()Z
    .locals 4

    .prologue
    .line 259
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "sdk_version"

    sget-object v3, Lcom/huanju/ssp/base/core/common/Config;->SDK_VERSION:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "dexVr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dexVr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SDK_VERSION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1.46.3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 261
    invoke-static {v0}, Lcom/huanju/ssp/base/hotfix/DexManager;->formatString2Int4Version(Ljava/lang/String;)I

    move-result v1

    const-string v2, "1.46.3"

    invoke-static {v2}, Lcom/huanju/ssp/base/hotfix/DexManager;->formatString2Int4Version(Ljava/lang/String;)I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static toInt(Ljava/lang/String;)I
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 97
    const/4 v1, 0x0

    .line 99
    .local v1, "num":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 113
    :cond_0
    :goto_0
    return v1

    .line 100
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[0-9]+.*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[0-9]+.*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public checkFile(Ljava/io/File;)Z
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 299
    if-nez p1, :cond_0

    .line 300
    const-string v3, "file == null"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 322
    :goto_0
    return v2

    .line 304
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 305
    const-string v3, "\u5f85\u68c0\u6d4b\u7684\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f85\u68c0\u6d4b\u6587\u4ef6\u8def\u5f84  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_1
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/FileUtils;->getFileMD5String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "MD5":Ljava/lang/String;
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/hotfix/DexManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/hotfix/DexManager;

    move-result-object v3

    iget-object v1, v3, Lcom/huanju/ssp/base/hotfix/DexManager;->mCheckSume:Ljava/lang/String;

    .line 311
    .local v1, "SMD5":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "module updat checkFile MD5  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",SMD5:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 313
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    const-string v3, "dex\u6587\u4ef6MD5\u4e0d\u5339\u914d,\u5220\u9664\u6210\u529f"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_2
    const-string v3, "dex\u6587\u4ef6MD5\u4e0d\u5339\u914d,\u5220\u9664\u5931\u8d25"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public checkUpdate()V
    .locals 3

    .prologue
    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DexManager vercode:1 classe loader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/huanju/ssp/base/hotfix/DexManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/huanju/ssp/base/hotfix/DexManager$2;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/hotfix/DexManager$2;-><init>(Lcom/huanju/ssp/base/hotfix/DexManager;)V

    .line 218
    .local v0, "moduleUpdateProcessor":Lcom/huanju/ssp/base/hotfix/updata/ModuleUpdateProcessor;
    iget-object v1, p0, Lcom/huanju/ssp/base/hotfix/DexManager;->mTaskManager:Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/hotfix/updata/ModuleUpdateProcessor;->setNetTaskManager(Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;)V

    .line 219
    invoke-virtual {v0}, Lcom/huanju/ssp/base/hotfix/updata/ModuleUpdateProcessor;->process()V

    .line 222
    return-void
.end method

.method public checkUpdateSwitch()V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/huanju/ssp/base/hotfix/DexManager$1;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/hotfix/DexManager$1;-><init>(Lcom/huanju/ssp/base/hotfix/DexManager;)V

    .line 128
    .local v0, "updateProcessor":Lcom/huanju/ssp/base/hotfix/updata/DexUpdateProcessor;
    iget-object v1, p0, Lcom/huanju/ssp/base/hotfix/DexManager;->mTaskManager:Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/hotfix/updata/DexUpdateProcessor;->setNetTaskManager(Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;)V

    .line 129
    invoke-virtual {v0}, Lcom/huanju/ssp/base/hotfix/updata/DexUpdateProcessor;->process()V

    .line 130
    return-void
.end method

.method public getAdControl(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, "contextWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdkversion "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/huanju/ssp/base/core/common/Config;->SDK_VERSION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/huanju/ssp/base/core/common/Config;->SDK_CHANNEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 340
    :try_start_0
    iget-object v4, p0, Lcom/huanju/ssp/base/hotfix/DexManager;->cl:Ldalvik/system/DexClassLoader;

    if-eqz v4, :cond_0

    .line 341
    iget-object v4, p0, Lcom/huanju/ssp/base/hotfix/DexManager;->cl:Ldalvik/system/DexClassLoader;

    const-class v5, Lcom/huanju/ssp/base/core/AdController;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".core"

    const-string v7, ".dex.core"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 343
    .local v1, "adControlClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 344
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    .line 345
    .local v0, "adControl":Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;
    const-string v4, "LoadDex Success"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 356
    .end local v0    # "adControl":Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;
    .end local v1    # "adControlClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v0

    .line 349
    :cond_0
    const-string v4, "cl is null"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_1
    new-instance v0, Lcom/huanju/ssp/base/core/AdController;

    invoke-direct {v0, p1}, Lcom/huanju/ssp/base/core/AdController;-><init>(Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    .line 350
    :catch_0
    move-exception v3

    .line 351
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dex error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getmAdUpgradeListener()Lcom/huanju/ssp/sdk/inf/AdUpgradeListener;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/DexManager;->mAdUpgradeListener:Lcom/huanju/ssp/sdk/inf/AdUpgradeListener;

    return-object v0
.end method

.method public isDexCurrent()Z
    .locals 6

    .prologue
    .line 270
    const/4 v1, 0x0

    .line 273
    .local v1, "isDexCurrent":Z
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/huanju/ssp/base/hotfix/DexManager;->mContext:Landroid/content/Context;

    const-string v4, "dex"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/huanju/ssp/base/hotfix/DexManager;->DEX_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, "dexFile":Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/huanju/ssp/base/hotfix/DexManager;->checkFile(Ljava/io/File;)Z

    move-result v1

    .line 278
    return v1
.end method

.method public isTempFileCurrent()Z
    .locals 3

    .prologue
    .line 285
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huanju/ssp/base/utils/FileUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ssp_dex.jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    .local v0, "tempDexFile":Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/huanju/ssp/base/hotfix/DexManager;->checkFile(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public loadDexLoader()V
    .locals 6

    .prologue
    .line 230
    :try_start_0
    invoke-direct {p0}, Lcom/huanju/ssp/base/hotfix/DexManager;->isNewDex()Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    const-string v2, "\u57fa\u7840\u7248\u672c\u5927\u4e8edex\u7248\u672c,\u4efb\u52a1\u4e2d\u65ad"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 252
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/huanju/ssp/base/hotfix/DexManager;->isDexCurrent()Z

    move-result v2

    if-nez v2, :cond_1

    .line 237
    const-string v2, "dex\u6587\u4ef6\u5f02\u5e38,\u4efb\u52a1\u4e2d\u65ad"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dex re error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v2, "start update "

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 242
    sget-object v2, Lcom/huanju/ssp/base/hotfix/DexManager;->mContext:Landroid/content/Context;

    const-string v3, "dex"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "dexDif":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/huanju/ssp/base/hotfix/DexManager;->DEX_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 245
    new-instance v2, Ldalvik/system/DexClassLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/huanju/ssp/base/hotfix/DexManager;->DEX_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/huanju/ssp/base/hotfix/DexManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v2, v3, v0, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v2, p0, Lcom/huanju/ssp/base/hotfix/DexManager;->cl:Ldalvik/system/DexClassLoader;

    .line 246
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "sdk_version"

    const-string v4, "1.46.3"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/core/common/Config;->setSdkVersion(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/DexManager;->mTaskManager:Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;->removeAllTask()V

    .line 331
    return-void
.end method

.method public setmAdUpgradeListener(Lcom/huanju/ssp/sdk/inf/AdUpgradeListener;)V
    .locals 2
    .param p1, "adUpgradeListener"    # Lcom/huanju/ssp/sdk/inf/AdUpgradeListener;

    .prologue
    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setmAdUpgradeListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 361
    iput-object p1, p0, Lcom/huanju/ssp/base/hotfix/DexManager;->mAdUpgradeListener:Lcom/huanju/ssp/sdk/inf/AdUpgradeListener;

    .line 362
    return-void
.end method
