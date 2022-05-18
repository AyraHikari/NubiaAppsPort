.class public Lcn/nubia/analytic/sdk/NubiaAnalytic;
.super Ljava/lang/Object;
.source "NubiaAnalytic.java"


# static fields
.field public static final NUBIA_APPID:Ljava/lang/String; = "NUBIA_APPID"

.field public static final NUBIA_APPKEY:Ljava/lang/String; = "NUBIA_APPKEY"

.field public static final NUBIA_CHANNEL:Ljava/lang/String; = "NUBIA_CHANNEL"

.field private static final TAG:Ljava/lang/String; = "NubiaAnalytic"

.field public static final UPLOAD_POLICY_APP_START:I = -0x3

.field public static final UPLOAD_POLICY_REAL_TIME:I = -0x1

.field public static final UPLOAD_POLICY_TIME_INTERVAL:I = -0x2

.field private static sInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/analytic/sdk/NubiaAnalytic;->sInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fetchWhiteSheet(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;)V
    .locals 2

    .prologue
    .line 115
    const-string v0, "NubiaAnalytic"

    const-string v1, "fetchWhiteSheet"

    invoke-static {v0, v1}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcn/nubia/analytic/sdk/ComponentAgent;->getInstance()Lcn/nubia/analytic/sdk/ComponentAgent;

    move-result-object v0

    new-instance v1, Lcn/nubia/analytic/sdk/NubiaAnalytic$1;

    invoke-direct {v1, p2, p1}, Lcn/nubia/analytic/sdk/NubiaAnalytic$1;-><init>(Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcn/nubia/analytic/sdk/ComponentAgent;->fetchWhiteSheet(Landroid/content/Context;Lcn/nubia/analytic/interfaces/RemoteDataCallback;)V

    .line 156
    return-void
.end method

.method public static initialize(Landroid/content/Context;Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 37
    if-nez p0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initialize() context is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 44
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/nubia/analytic/sdk/NubiaConfig;->sPackageName:Ljava/lang/String;

    .line 46
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 47
    sget-object v2, Lcn/nubia/analytic/sdk/NubiaConfig;->sPackageName:Ljava/lang/String;

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 48
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 49
    if-eqz v3, :cond_7

    .line 50
    const-string v1, "NUBIA_APPID"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 51
    const-string v1, "NUBIA_APPID"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 53
    :goto_0
    :try_start_1
    const-string v1, "NUBIA_APPKEY"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 54
    const-string v1, "NUBIA_APPKEY"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 56
    :goto_1
    :try_start_2
    const-string v5, "NUBIA_CHANNEL"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    const-string v5, "NUBIA_CHANNEL"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 63
    :cond_1
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 64
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appID,appKey or channel is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :catch_0
    move-exception v1

    move-object v3, v1

    move-object v2, v0

    move-object v1, v0

    .line 61
    :goto_3
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 66
    :cond_3
    const-string v3, "NubiaAnalytic"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "appID:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",appKey:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",channel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sput-object v2, Lcn/nubia/analytic/sdk/NubiaConfig;->sAppId:Ljava/lang/String;

    .line 68
    sput-object v1, Lcn/nubia/analytic/sdk/NubiaConfig;->sAppKey:Ljava/lang/String;

    .line 69
    sput-object v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sChannel:Ljava/lang/String;

    .line 70
    sget-boolean v0, Lcn/nubia/analytic/sdk/NubiaAnalytic;->sInitialized:Z

    if-nez v0, :cond_4

    .line 71
    invoke-static {}, Lcn/nubia/analytic/sdk/ComponentAgent;->getInstance()Lcn/nubia/analytic/sdk/ComponentAgent;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/nubia/analytic/sdk/ComponentAgent;->setParams(Landroid/content/Context;)V

    .line 73
    :cond_4
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/analytic/sdk/NubiaAnalytic;->sInitialized:Z

    .line 74
    sget-object v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v4, v0, p1, v1}, Lcn/nubia/analytic/sdk/NubiaAnalytic;->isTrafficReport(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;Z)V

    .line 75
    return-void

    .line 60
    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_3

    :cond_5
    move-object v1, v0

    goto :goto_1

    :cond_6
    move-object v2, v0

    goto/16 :goto_0

    :cond_7
    move-object v1, v0

    move-object v2, v0

    goto :goto_2
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;Z)V
    .locals 2

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initialize() context is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appID,appKey or channel is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/nubia/analytic/sdk/NubiaConfig;->sPackageName:Ljava/lang/String;

    .line 86
    sput-object p1, Lcn/nubia/analytic/sdk/NubiaConfig;->sAppId:Ljava/lang/String;

    .line 87
    sput-object p2, Lcn/nubia/analytic/sdk/NubiaConfig;->sAppKey:Ljava/lang/String;

    .line 88
    sput-object p3, Lcn/nubia/analytic/sdk/NubiaConfig;->sChannel:Ljava/lang/String;

    .line 89
    sget-boolean v1, Lcn/nubia/analytic/sdk/NubiaAnalytic;->sInitialized:Z

    if-nez v1, :cond_3

    .line 90
    invoke-static {}, Lcn/nubia/analytic/sdk/ComponentAgent;->getInstance()Lcn/nubia/analytic/sdk/ComponentAgent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/analytic/sdk/ComponentAgent;->setParams(Landroid/content/Context;)V

    .line 92
    :cond_3
    const/4 v1, 0x1

    sput-boolean v1, Lcn/nubia/analytic/sdk/NubiaAnalytic;->sInitialized:Z

    .line 94
    sget-object v1, Lcn/nubia/analytic/sdk/NubiaConfig;->sPackageName:Ljava/lang/String;

    invoke-static {v0, v1, p4, p5}, Lcn/nubia/analytic/sdk/NubiaAnalytic;->isTrafficReport(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;Z)V

    .line 95
    return-void
.end method

.method private static isTrafficReport(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;Z)V
    .locals 2

    .prologue
    .line 106
    invoke-static {p0}, Lcn/nubia/analytic/util/AppUtil;->getSendBy(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {p0}, Lcn/nubia/analytic/sdk/ClientSdk;->getInstance(Landroid/content/Context;)Lcn/nubia/analytic/sdk/ClientSdk;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcn/nubia/analytic/sdk/ClientSdk;->setIsSystemUid(Z)V

    .line 108
    invoke-static {p0, p1, p2}, Lcn/nubia/analytic/sdk/NubiaAnalytic;->fetchWhiteSheet(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;->onResult(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public static sendData(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-static {}, Lcn/nubia/analytic/sdk/ComponentAgent;->getInstance()Lcn/nubia/analytic/sdk/ComponentAgent;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/nubia/analytic/sdk/ComponentAgent;->sendData(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0
.end method
