.class public Lcn/nubia/analytic/sdk/NubiaConfig;
.super Ljava/lang/Object;
.source "NubiaConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/analytic/sdk/NubiaConfig$Rom;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIME_OUT:I = 0x1e

.field public static final MAX_EVENT_NUM_DEBUG_MODE:I = 0x7530

.field public static final MAX_EVENT_NUM_RELEASE_MODE:I = 0xbb8

.field public static final MAX_TIME_INTERVAL:I = 0x5a0

.field public static final MAX_TIME_OUT:I = 0x258

.field public static final MIN_TIME_INTERVAL:I = 0x3c

.field public static final MIN_TIME_OUT:I = 0x1e

.field public static sAppBackground:J

.field public static sAppId:Ljava/lang/String;

.field public static sAppKey:Ljava/lang/String;

.field public static sChannel:Ljava/lang/String;

.field public static sConnectLine:Ljava/lang/String;

.field public static sEventCollectNum:I

.field public static sEventCollectTime:J

.field public static sEventCollectTimeInterval:J

.field public static sIsDebugMode:Z

.field public static sMaxEventNum:I

.field public static sPackageName:Ljava/lang/String;

.field public static sSdkCode:I

.field public static sSdkName:Ljava/lang/String;

.field public static sSdkType:Ljava/lang/String;

.field public static sServerTimeOffset:J

.field public static sSessionTimeout:J

.field public static sTimeInterval:I

.field public static sUploadOnlyWifi:Z

.field public static sUploadPolicy:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    const/4 v2, 0x0

    .line 25
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sSessionTimeout:J

    .line 26
    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sAppBackground:J

    .line 27
    sput v6, Lcn/nubia/analytic/sdk/NubiaConfig;->sSdkCode:I

    .line 28
    const-string v0, "2.0.0"

    sput-object v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sSdkName:Ljava/lang/String;

    .line 29
    sput-boolean v6, Lcn/nubia/analytic/sdk/NubiaConfig;->sIsDebugMode:Z

    .line 30
    sput-object v2, Lcn/nubia/analytic/sdk/NubiaConfig;->sPackageName:Ljava/lang/String;

    .line 31
    sput-object v2, Lcn/nubia/analytic/sdk/NubiaConfig;->sAppId:Ljava/lang/String;

    .line 32
    sput-object v2, Lcn/nubia/analytic/sdk/NubiaConfig;->sAppKey:Ljava/lang/String;

    .line 33
    sput-object v2, Lcn/nubia/analytic/sdk/NubiaConfig;->sChannel:Ljava/lang/String;

    .line 34
    const-string v0, "Android"

    sput-object v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sSdkType:Ljava/lang/String;

    .line 35
    const-string v0, "|"

    sput-object v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sConnectLine:Ljava/lang/String;

    .line 36
    sput-boolean v3, Lcn/nubia/analytic/sdk/NubiaConfig;->sUploadOnlyWifi:Z

    .line 37
    const/4 v0, -0x3

    sput v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sUploadPolicy:I

    .line 38
    const/16 v0, 0xe10

    sput v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sTimeInterval:I

    .line 39
    const/16 v0, 0xbb8

    sput v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sMaxEventNum:I

    .line 40
    sput v3, Lcn/nubia/analytic/sdk/NubiaConfig;->sEventCollectNum:I

    .line 41
    sput-wide v8, Lcn/nubia/analytic/sdk/NubiaConfig;->sEventCollectTime:J

    .line 42
    sput-wide v8, Lcn/nubia/analytic/sdk/NubiaConfig;->sServerTimeOffset:J

    .line 44
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sEventCollectTimeInterval:J

    .line 58
    invoke-static {}, Lcn/nubia/analytic/util/AppConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-wide/16 v0, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    mul-long/2addr v0, v2

    sput-wide v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sEventCollectTimeInterval:J

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcn/nubia/analytic/sdk/NubiaConfig;->sEventCollectTimeInterval:J

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
