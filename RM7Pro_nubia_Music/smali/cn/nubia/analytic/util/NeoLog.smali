.class public Lcn/nubia/analytic/util/NeoLog;
.super Ljava/lang/Object;
.source "NeoLog.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcn/nubia/analytic/util/NeoLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/analytic/util/NeoLog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcn/nubia/analytic/util/AppConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcn/nubia/analytic/util/NeoLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcn/nubia/analytic/util/AppConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    return-void
.end method

.method public static dSdk(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sIsDebugMode:Z

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcn/nubia/analytic/util/NeoLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    return-void
.end method

.method public static dSdk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    sget-boolean v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sIsDebugMode:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcn/nubia/analytic/util/AppConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcn/nubia/analytic/util/NeoLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcn/nubia/analytic/util/AppConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    return-void
.end method

.method public static eSdk(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sIsDebugMode:Z

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcn/nubia/analytic/util/NeoLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    return-void
.end method

.method public static eSdk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 130
    sget-boolean v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sIsDebugMode:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcn/nubia/analytic/util/AppConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcn/nubia/analytic/util/NeoLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcn/nubia/analytic/util/AppConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    return-void
.end method

.method public static iSdk(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    sget-boolean v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sIsDebugMode:Z

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcn/nubia/analytic/util/NeoLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    return-void
.end method

.method public static iSdk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 118
    sget-boolean v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sIsDebugMode:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcn/nubia/analytic/util/AppConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    sget-object v0, Lcn/nubia/analytic/util/NeoLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcn/nubia/analytic/util/AppConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    return-void
.end method

.method public static vSdk(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sIsDebugMode:Z

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcn/nubia/analytic/util/NeoLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    return-void
.end method

.method public static vSdk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    sget-boolean v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sIsDebugMode:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcn/nubia/analytic/util/AppConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcn/nubia/analytic/util/NeoLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcn/nubia/analytic/util/AppConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    return-void
.end method

.method public static wSdk(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sIsDebugMode:Z

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcn/nubia/analytic/util/NeoLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    return-void
.end method

.method public static wSdk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sIsDebugMode:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    return-void
.end method
