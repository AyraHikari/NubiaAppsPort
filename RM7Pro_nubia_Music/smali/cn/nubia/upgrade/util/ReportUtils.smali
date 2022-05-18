.class public Lcn/nubia/upgrade/util/ReportUtils;
.super Ljava/lang/Object;
.source "ReportUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/upgrade/util/ReportUtils$ReportStatus;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ReportUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-static/range {p0 .. p7}, Lcn/nubia/upgrade/util/ReportUtils;->reportInstallEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static checkInstallEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v5, -0x1

    .line 75
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 77
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 79
    const-string v1, "version_code"

    invoke-static {p0, v1, v5}, Lcn/nubia/upgrade/util/PrefEditor;->readPublicInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 80
    const-string v1, "from_version_name"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcn/nubia/upgrade/util/PrefEditor;->readPublicString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 82
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 87
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 88
    const-string v1, "ReportUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preVersionCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newVersionCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    if-eq v4, v5, :cond_0

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-gt v1, v4, :cond_1

    .line 90
    :cond_0
    const-string v1, "ReportUtils"

    const-string v2, "no install event to be report."

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "version_code"

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0, v1, v2}, Lcn/nubia/upgrade/util/PrefEditor;->writePublicInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 92
    const-string v1, "from_version_name"

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcn/nubia/upgrade/util/PrefEditor;->writePublicString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 95
    :cond_1
    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 96
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 97
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcn/nubia/upgrade/util/ReportUtils$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Lcn/nubia/upgrade/util/ReportUtils$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 103
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    const-string v1, "ReportUtils"

    const-string v2, "catch an exception when check install event."

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static report(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 4

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 37
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 38
    invoke-static {p0, v1}, Lcn/nubia/upgrade/util/InfoCollect;->getUniqueKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    const-string v0, "ReportUtils"

    const-string v3, "unique_key is null."

    invoke-static {v0, v3}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, ""

    .line 44
    :cond_0
    const-string v3, "unique_key"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {p0}, Lcn/nubia/upgrade/util/InfoCollect;->getPhoneParameter(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 46
    const-string v0, "upgrade_type"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v0, "from_version_code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "version_code"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v0, "from_version_name"

    invoke-static {p0}, Lcn/nubia/upgrade/util/InfoCollect;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "package_name"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "upgrade_status"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "ReportUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report()\nappKey:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nsecretKey:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\npreVersionCode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nnewVersionCode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nstatus:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcn/nubia/upgrade/util/WorkQueue;->getInstance()Lcn/nubia/upgrade/util/WorkQueue;

    move-result-object v0

    new-instance v1, Lcn/nubia/upgrade/util/ReportUtils$1;

    invoke-direct {v1, v2, p1, p2}, Lcn/nubia/upgrade/util/ReportUtils$1;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/util/WorkQueue;->add(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method private static reportInstallEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 113
    invoke-static {p0}, Lcn/nubia/upgrade/util/InfoCollect;->getPhoneParameter(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 114
    const-string v0, "upgrade_type"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "from_version_code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v0, "version_code"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v0, "from_version_name"

    invoke-interface {v1, v0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {p0, p5}, Lcn/nubia/upgrade/util/InfoCollect;->getUniqueKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    :cond_0
    const-string v2, "ReportUtils"

    const-string v3, "unique_key in AndroidManifest.xml can\'t be null or empty, please setup."

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_1
    const-string v2, "unique_key"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v0, "package_name"

    invoke-interface {v1, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v0, "upgrade_status"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {}, Lcn/nubia/upgrade/util/WorkQueue;->getInstance()Lcn/nubia/upgrade/util/WorkQueue;

    move-result-object v7

    new-instance v0, Lcn/nubia/upgrade/util/ReportUtils$3;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move v5, p4

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/upgrade/util/ReportUtils$3;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcn/nubia/upgrade/util/WorkQueue;->add(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method
