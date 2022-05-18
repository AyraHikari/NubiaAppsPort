.class public Lcom/umeng/analytics/AnalyticsConfig;
.super Ljava/lang/Object;
.source "AnalyticsConfig.java"


# static fields
.field public static ACTIVITY_DURATION_OPEN:Z

.field public static CATCH_EXCEPTION:Z

.field public static COMPRESS_DATA:Z

.field public static ENABLE_MEMORY_BUFFER:Z

.field public static final FLAG_INTERNATIONAL:Z

.field public static GPU_RENDERER:Ljava/lang/String;

.field public static GPU_VENDER:Ljava/lang/String;

.field static a:[D

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:I

.field public static kContinueSessionMillis:J

.field public static mWrapperType:Ljava/lang/String;

.field public static mWrapperVersion:Ljava/lang/String;

.field public static sEncrypt:Z

.field public static sLatentWindow:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 17
    sput-object v2, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    .line 18
    sput-object v2, Lcom/umeng/analytics/AnalyticsConfig;->c:Ljava/lang/String;

    .line 19
    sput-object v2, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    .line 21
    sput-object v2, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    .line 22
    sput-object v2, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    .line 24
    sput v3, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_VENDER:Ljava/lang/String;

    .line 26
    const-string v0, ""

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_RENDERER:Ljava/lang/String;

    .line 28
    sput-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    .line 29
    sput-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->COMPRESS_DATA:Z

    .line 30
    sput-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->ENABLE_MEMORY_BUFFER:Z

    .line 31
    sput-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    .line 32
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    .line 35
    sput-boolean v3, Lcom/umeng/analytics/AnalyticsConfig;->sEncrypt:Z

    .line 42
    sput-object v2, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    .line 49
    sput-boolean v3, Lcom/umeng/analytics/AnalyticsConfig;->sEncrypt:Z

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 137
    sput p1, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    .line 138
    invoke-static {p0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    sget v1, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/h;->a(I)V

    .line 139
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    if-nez p0, :cond_1

    .line 59
    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-static {p0}, Lu/aly/bj;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 66
    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const-string v0, "Appkey\u548cAndroidManifest.xml\u4e2d\u914d\u7f6e\u7684\u4e0d\u4e00\u81f4 "

    invoke-static {v0}, Lu/aly/bl;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_2
    invoke-static {p0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->c()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 74
    const-string v0, "Appkey\u548c\u4e0a\u6b21\u914d\u7f6e\u7684\u4e0d\u4e00\u81f4 "

    invoke-static {v0}, Lu/aly/bl;->d(Ljava/lang/String;)V

    .line 75
    invoke-static {p0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/h;->a(Ljava/lang/String;)V

    .line 80
    :cond_3
    :goto_1
    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    goto :goto_0

    .line 78
    :cond_4
    invoke-static {p0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/h;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->c:Ljava/lang/String;

    .line 86
    return-void
.end method

.method static a(Z)V
    .locals 0

    .prologue
    .line 54
    sput-boolean p0, Lcom/umeng/analytics/AnalyticsConfig;->sEncrypt:Z

    .line 55
    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    .line 120
    invoke-static {p0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/h;->c(Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method

.method public static getAppkey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {p0}, Lu/aly/bj;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {p0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    .line 96
    :cond_0
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p0}, Lu/aly/bj;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->c:Ljava/lang/String;

    .line 103
    :cond_0
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocation()[D
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    return-object v0
.end method

.method public static getSDKVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string v0, "6.0.1"

    return-object v0
.end method

.method public static getSecretKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {p0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    .line 133
    :cond_0
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static getVerticalType(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 142
    sget v0, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    if-nez v0, :cond_0

    .line 143
    invoke-static {p0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->f()I

    move-result v0

    sput v0, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    .line 145
    :cond_0
    sget v0, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    return v0
.end method
