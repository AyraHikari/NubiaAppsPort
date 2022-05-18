.class public Lcom/nubia/nucms/utils/NuCmsCpuUtils;
.super Ljava/lang/Object;
.source "NuCmsCpuUtils.java"


# static fields
.field private static CPU_CORES:I = 0x0

.field private static final CPU_FILTER:Ljava/lang/String; = "cpu[0-9]+"

.field private static final PATH_CPU:Ljava/lang/String; = "/sys/devices/system/cpu/"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/nubia/nucms/utils/NuCmsCpuUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nubia/nucms/utils/NuCmsCpuUtils;->TAG:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/nubia/nucms/utils/NuCmsCpuUtils;->CPU_CORES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCoresNumbers()I
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 25
    sget v3, Lcom/nubia/nucms/utils/NuCmsCpuUtils;->CPU_CORES:I

    if-lez v3, :cond_0

    .line 26
    sget v3, Lcom/nubia/nucms/utils/NuCmsCpuUtils;->CPU_CORES:I

    .line 56
    .local v0, "dir":Ljava/io/File;
    :goto_0
    return v3

    .line 41
    .end local v0    # "dir":Ljava/io/File;
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .restart local v0    # "dir":Ljava/io/File;
    new-instance v3, Lcom/nubia/nucms/utils/NuCmsCpuUtils$1CpuFilter;

    invoke-direct {v3}, Lcom/nubia/nucms/utils/NuCmsCpuUtils$1CpuFilter;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 45
    .local v2, "files":[Ljava/io/File;
    array-length v3, v2

    sput v3, Lcom/nubia/nucms/utils/NuCmsCpuUtils;->CPU_CORES:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v2    # "files":[Ljava/io/File;
    :goto_1
    sget v3, Lcom/nubia/nucms/utils/NuCmsCpuUtils;->CPU_CORES:I

    if-ge v3, v4, :cond_1

    .line 50
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    sput v3, Lcom/nubia/nucms/utils/NuCmsCpuUtils;->CPU_CORES:I

    .line 52
    :cond_1
    sget v3, Lcom/nubia/nucms/utils/NuCmsCpuUtils;->CPU_CORES:I

    if-ge v3, v4, :cond_2

    .line 53
    sput v4, Lcom/nubia/nucms/utils/NuCmsCpuUtils;->CPU_CORES:I

    .line 55
    :cond_2
    sget-object v3, Lcom/nubia/nucms/utils/NuCmsCpuUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CPU cores: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/nubia/nucms/utils/NuCmsCpuUtils;->CPU_CORES:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget v3, Lcom/nubia/nucms/utils/NuCmsCpuUtils;->CPU_CORES:I

    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
