.class Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;
.super Landroid/content/ContextWrapper;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModuleContext"
.end annotation


# static fields
.field private static sModuleApplications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApkPath:Ljava/lang/String;

.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mClassAccessor:Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mModuleName:Ljava/lang/String;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mResources:Landroid/content/res/Resources;

.field private mTheme:Landroid/content/res/Resources$Theme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1592
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->sModuleApplications:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 5
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .param p4, "apkPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1606
    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 1602
    new-instance v2, Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;

    invoke-direct {v2}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;-><init>()V

    iput-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mClassAccessor:Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;

    .line 1607
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1608
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1609
    iput-object p1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mModuleName:Ljava/lang/String;

    .line 1610
    iput-object p3, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mClassLoader:Ljava/lang/ClassLoader;

    .line 1611
    iput-object p4, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mApkPath:Ljava/lang/String;

    .line 1612
    const/16 v0, 0x40cf

    .line 1616
    .local v0, "flags":I
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1617
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 1618
    invoke-virtual {v1, p4, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 1620
    :cond_0
    invoke-direct {p0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->createResources()V

    .line 1621
    iget-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_1

    .line 1622
    iget-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    iput-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mTheme:Landroid/content/res/Resources$Theme;

    .line 1623
    iget-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->theme:I

    if-eqz v2, :cond_2

    .line 1627
    iget-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mTheme:Landroid/content/res/Resources$Theme;

    iget-object v3, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1636
    .end local v0    # "flags":I
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return-void

    .line 1630
    .restart local v0    # "flags":I
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    iget-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mTheme:Landroid/content/res/Resources$Theme;

    const v3, 0x1030005

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0

    .line 1634
    .end local v0    # "flags":I
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    const-string v2, "Invalid module context due to invalid parameters"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private cleanupLayoutInflaterCache(Landroid/view/LayoutInflater;)V
    .locals 14
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v10, 0x0

    .line 1835
    if-eqz p1, :cond_4

    .line 1836
    const/4 v9, 0x4

    new-array v0, v9, [Ljava/lang/String;

    const-string v9, "android.widget."

    aput-object v9, v0, v10

    const/4 v9, 0x1

    const-string v11, "android.webkit."

    aput-object v11, v0, v9

    const/4 v9, 0x2

    const-string v11, "android.app."

    aput-object v11, v0, v9

    const/4 v9, 0x3

    const-string v11, "android.view."

    aput-object v11, v0, v9

    .line 1842
    .local v0, "PREFIXSKEEP":[Ljava/lang/String;
    iget-object v9, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mClassAccessor:Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;

    const-string v11, "sConstructorMap"

    invoke-virtual {v9, p1, v11}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1843
    .local v1, "cache":Ljava/lang/Object;
    instance-of v9, v1, Ljava/util/HashMap;

    if-eqz v9, :cond_4

    .line 1844
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v5, v1

    .line 1845
    check-cast v5, Ljava/util/HashMap;

    .line 1846
    .local v5, "map":Ljava/util/HashMap;
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1847
    .local v4, "keys":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1848
    .local v3, "k":Ljava/lang/Object;
    instance-of v9, v3, Ljava/lang/String;

    if-eqz v9, :cond_0

    move-object v7, v3

    .line 1849
    check-cast v7, Ljava/lang/String;

    .line 1850
    .local v7, "sk":Ljava/lang/String;
    const/16 v9, 0x2e

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_0

    .line 1851
    const/4 v2, 0x0

    .line 1852
    .local v2, "found":Z
    array-length v12, v0

    move v9, v10

    :goto_1
    if-ge v9, v12, :cond_1

    aget-object v6, v0, v9

    .line 1853
    .local v6, "prefix":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1854
    const/4 v2, 0x1

    .line 1858
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_0

    .line 1859
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1852
    .restart local v6    # "prefix":Ljava/lang/String;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1864
    .end local v2    # "found":Z
    .end local v3    # "k":Ljava/lang/Object;
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v7    # "sk":Ljava/lang/String;
    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1865
    .local v3, "k":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1869
    .end local v0    # "PREFIXSKEEP":[Ljava/lang/String;
    .end local v1    # "cache":Ljava/lang/Object;
    .end local v3    # "k":Ljava/lang/String;
    .end local v4    # "keys":Ljava/util/Set;
    .end local v5    # "map":Ljava/util/HashMap;
    .end local v8    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method private static createAssetManager(Ljava/lang/String;[I)Landroid/content/res/AssetManager;
    .locals 11
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "cookieHolder"    # [I

    .prologue
    const/4 v2, 0x0

    .line 1783
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1784
    const/4 v1, 0x0

    .line 1799
    :cond_0
    :goto_0
    return-object v1

    .line 1786
    :cond_1
    const/4 v1, 0x0

    .line 1788
    .local v1, "asset":Landroid/content/res/AssetManager;
    :try_start_0
    const-class v6, Landroid/content/res/AssetManager;

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/content/res/AssetManager;

    move-object v1, v0

    .line 1789
    const-class v6, Landroid/content/res/AssetManager;

    const-string v7, "addAssetPath"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1790
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1791
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1792
    .local v5, "ret":Ljava/lang/Integer;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1793
    .local v2, "cookie":I
    :cond_2
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    array-length v6, p1

    if-lez v6, :cond_0

    .line 1794
    const/4 v6, 0x0

    aput v2, p1, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1796
    .end local v2    # "cookie":I
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "ret":Ljava/lang/Integer;
    :catch_0
    move-exception v3

    .line 1797
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create AssetManager for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createResources()V
    .locals 4

    .prologue
    .line 1804
    const/4 v2, 0x1

    :try_start_0
    new-array v0, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2

    .line 1805
    .local v0, "cookie":[I
    iget-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mApkPath:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->createAssetManager(Ljava/lang/String;[I)Landroid/content/res/AssetManager;

    move-result-object v2

    iput-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mAssetManager:Landroid/content/res/AssetManager;

    .line 1806
    const/4 v2, 0x0

    aget v2, v0, v2

    if-eqz v2, :cond_1

    .line 1807
    invoke-direct {p0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->recreateResources()V

    .line 1818
    .end local v0    # "cookie":[I
    :cond_0
    :goto_0
    return-void

    .line 1809
    .restart local v0    # "cookie":[I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create resource for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mApkPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 1810
    iget-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mAssetManager:Landroid/content/res/AssetManager;

    if-eqz v2, :cond_0

    .line 1811
    iget-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->close()V

    .line 1812
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mAssetManager:Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1815
    .end local v0    # "cookie":[I
    :catch_0
    move-exception v1

    .line 1816
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create resource for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mApkPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private recreateResources()V
    .locals 5

    .prologue
    .line 1822
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1823
    .local v0, "superRes":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 1824
    new-instance v1, Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mAssetManager:Landroid/content/res/AssetManager;

    .line 1825
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mResources:Landroid/content/res/Resources;

    .line 1827
    :cond_0
    return-void
.end method


# virtual methods
.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 5
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 1710
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 1711
    .local v0, "c":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1712
    new-instance v1, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;

    iget-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mModuleName:Ljava/lang/String;

    iget-object v3, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mClassLoader:Ljava/lang/ClassLoader;

    iget-object v4, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mApkPath:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .end local v0    # "c":Landroid/content/Context;
    .local v1, "c":Landroid/content/Context;
    move-object v0, v1

    .line 1714
    .end local v1    # "c":Landroid/content/Context;
    .restart local v0    # "c":Landroid/content/Context;
    :cond_0
    return-object v0
.end method

.method public createDeviceProtectedStorageContext()Landroid/content/Context;
    .locals 5

    .prologue
    .line 1738
    invoke-super {p0}, Landroid/content/ContextWrapper;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 1739
    .local v0, "c":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1740
    new-instance v1, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;

    iget-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mModuleName:Ljava/lang/String;

    iget-object v3, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mClassLoader:Ljava/lang/ClassLoader;

    iget-object v4, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mApkPath:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .end local v0    # "c":Landroid/content/Context;
    .local v1, "c":Landroid/content/Context;
    move-object v0, v1

    .line 1742
    .end local v1    # "c":Landroid/content/Context;
    .restart local v0    # "c":Landroid/content/Context;
    :cond_0
    return-object v0
.end method

.method public createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .locals 5
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 1729
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    .line 1730
    .local v0, "c":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1731
    new-instance v1, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;

    iget-object v2, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mModuleName:Ljava/lang/String;

    iget-object v3, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mClassLoader:Ljava/lang/ClassLoader;

    iget-object v4, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mApkPath:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .end local v0    # "c":Landroid/content/Context;
    .local v1, "c":Landroid/content/Context;
    move-object v0, v1

    .line 1733
    .end local v1    # "c":Landroid/content/Context;
    .restart local v0    # "c":Landroid/content/Context;
    :cond_0
    return-object v0
.end method

.method public createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1720
    invoke-static {}, Lcom/huanju/ssp/base/hotfix/ModuleManager;->access$2600()Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, p1, v2, v3, v4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$400(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Ljava/lang/String;ZZLandroid/content/Context;)Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;

    move-result-object v0

    .line 1721
    .local v0, "mi":Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1722
    iget-object v1, v0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;->context:Landroid/content/Context;

    .line 1724
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    goto :goto_0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1676
    sget-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->sModuleApplications:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mModuleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    .line 1677
    .local v3, "ma":Landroid/app/Application;
    if-eqz v3, :cond_1

    move-object v2, v3

    .line 1689
    :cond_0
    :goto_0
    return-object v2

    .line 1681
    :cond_1
    invoke-super {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1682
    .local v2, "base":Landroid/content/Context;
    instance-of v0, v2, Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mModuleName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1683
    new-instance v3, Landroid/app/Application;

    .end local v3    # "ma":Landroid/app/Application;
    invoke-direct {v3}, Landroid/app/Application;-><init>()V

    .line 1684
    .restart local v3    # "ma":Landroid/app/Application;
    sget-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->sModuleApplications:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mModuleName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mClassAccessor:Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;

    const-class v1, Landroid/app/Application;

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;->copyFields(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Z)V

    .line 1686
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mClassAccessor:Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;

    const-class v1, Landroid/content/ContextWrapper;

    const-string v4, "mBase"

    invoke-virtual {v0, v1, v3, v4, p0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v3

    .line 1687
    goto :goto_0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    .line 1669
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1671
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mAssetManager:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_0

    .line 1748
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mAssetManager:Landroid/content/res/AssetManager;

    .line 1750
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    .line 1695
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mClassLoader:Ljava/lang/ClassLoader;

    .line 1697
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/content/ContextWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 1763
    invoke-super {p0}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getPackageCodePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mApkPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1777
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mApkPath:Ljava/lang/String;

    .line 1779
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/content/ContextWrapper;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mModuleName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1661
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mModuleName:Ljava/lang/String;

    .line 1663
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mApkPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1769
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mApkPath:Ljava/lang/String;

    .line 1771
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/content/ContextWrapper;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 1703
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mResources:Landroid/content/res/Resources;

    .line 1705
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1640
    const/4 v0, 0x0

    .line 1641
    .local v0, "o":Ljava/lang/Object;
    const-string v1, "layout_inflater"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1642
    iget-object v1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v1, :cond_0

    .line 1643
    iget-object v1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, v1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->cleanupLayoutInflaterCache(Landroid/view/LayoutInflater;)V

    .line 1644
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1655
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 1646
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1647
    if-eqz v0, :cond_1

    .line 1648
    check-cast v0, Landroid/view/LayoutInflater;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1651
    :cond_1
    iget-object v1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, v1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->cleanupLayoutInflaterCache(Landroid/view/LayoutInflater;)V

    goto :goto_0

    .line 1653
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl$ModuleContext;->mTheme:Landroid/content/res/Resources$Theme;

    .line 1758
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/content/ContextWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0
.end method
