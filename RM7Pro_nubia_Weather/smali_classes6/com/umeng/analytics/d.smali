.class public Lcom/umeng/analytics/d;
.super Ljava/lang/Object;
.source "InternalAgent.java"

# interfaces
.implements Lu/aly/an;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/umeng/analytics/c;

.field private c:Lu/aly/af;

.field private d:Lu/aly/at;

.field private e:Lu/aly/ar;

.field private f:Lu/aly/ag;

.field private g:Lu/aly/ae;

.field private h:Lu/aly/m;

.field private i:Z

.field private j:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v2, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    .line 38
    new-instance v0, Lu/aly/af;

    invoke-direct {v0}, Lu/aly/af;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->c:Lu/aly/af;

    .line 39
    new-instance v0, Lu/aly/at;

    invoke-direct {v0}, Lu/aly/at;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/at;

    .line 40
    new-instance v0, Lu/aly/ar;

    invoke-direct {v0}, Lu/aly/ar;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/ar;

    .line 43
    iput-object v2, p0, Lcom/umeng/analytics/d;->h:Lu/aly/m;

    .line 45
    iput-boolean v1, p0, Lcom/umeng/analytics/d;->i:Z

    .line 46
    iput-boolean v1, p0, Lcom/umeng/analytics/d;->j:Z

    .line 49
    iget-object v0, p0, Lcom/umeng/analytics/d;->c:Lu/aly/af;

    invoke-virtual {v0, p0}, Lu/aly/af;->a(Lu/aly/an;)V

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/d;)Lu/aly/m;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/umeng/analytics/d;->h:Lu/aly/m;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/analytics/d;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/d;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/umeng/analytics/d;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/umeng/analytics/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/analytics/d;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)V

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_1

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    .line 55
    new-instance v0, Lu/aly/ag;

    iget-object v1, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lu/aly/ag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/ag;

    .line 56
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ae;->a(Landroid/content/Context;)Lu/aly/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/ae;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    .line 59
    iget-object v0, p0, Lcom/umeng/analytics/d;->h:Lu/aly/m;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/m;->a(Landroid/content/Context;)Lu/aly/m;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/d;->h:Lu/aly/m;

    .line 62
    :cond_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->j:Z

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Lcom/umeng/analytics/d$1;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d$1;-><init>(Lcom/umeng/analytics/d;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->b(Ljava/lang/Runnable;)V

    .line 77
    :cond_1
    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/ar;

    invoke-virtual {v0, p1}, Lu/aly/ar;->c(Landroid/content/Context;)V

    .line 220
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    invoke-interface {v0}, Lcom/umeng/analytics/c;->a()V

    .line 222
    :cond_0
    return-void
.end method

.method private g(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/ar;

    invoke-virtual {v0, p1}, Lu/aly/ar;->d(Landroid/content/Context;)V

    .line 226
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/at;

    invoke-virtual {v0, p1}, Lu/aly/at;->a(Landroid/content/Context;)V

    .line 228
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    invoke-interface {v0}, Lcom/umeng/analytics/c;->b()V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/ae;

    invoke-virtual {v0}, Lu/aly/ae;->b()V

    .line 231
    return-void
.end method


# virtual methods
.method public a()Lu/aly/ar;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/ar;

    return-object v0
.end method

.method a(DD)V
    .locals 3

    .prologue
    .line 437
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    if-nez v0, :cond_0

    .line 438
    const/4 v0, 0x2

    new-array v0, v0, [D

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    .line 441
    :cond_0
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 442
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 443
    return-void
.end method

.method a(J)V
    .locals 1

    .prologue
    .line 446
    long-to-int v0, p1

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/umeng/analytics/AnalyticsConfig;->sLatentWindow:I

    .line 447
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    const-string v0, "unexpected null context in onResume"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 117
    :cond_0
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/at;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/at;->a(Ljava/lang/String;)V

    .line 122
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_2

    .line 123
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 125
    :cond_2
    new-instance v0, Lcom/umeng/analytics/d$2;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/d$2;-><init>(Lcom/umeng/analytics/d;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    const-string v1, "Exception occurred in Mobclick.onResume(). "

    invoke-static {v1, v0}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 104
    invoke-static {p1, p2}, Lcom/umeng/analytics/AnalyticsConfig;->a(Landroid/content/Context;I)V

    .line 105
    return-void
.end method

.method a(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V
    .locals 1

    .prologue
    .line 456
    if-eqz p1, :cond_0

    .line 457
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    .line 459
    :cond_0
    if-eqz p2, :cond_1

    .line 460
    invoke-virtual {p2}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;I)V

    .line 462
    :cond_1
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 176
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 180
    :cond_0
    if-nez p1, :cond_1

    .line 181
    const-string v0, "unexpected null context in reportError"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_2

    .line 187
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 188
    :cond_2
    new-instance v0, Lu/aly/av$i;

    invoke-direct {v0}, Lu/aly/av$i;-><init>()V

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lu/aly/av$i;->a:J

    .line 191
    const-wide/16 v2, 0x2

    iput-wide v2, v0, Lu/aly/av$i;->b:J

    .line 192
    iput-object p2, v0, Lu/aly/av$i;->c:Ljava/lang/String;

    .line 193
    iget-object v1, p0, Lcom/umeng/analytics/d;->g:Lu/aly/ae;

    invoke-virtual {v1, v0}, Lu/aly/ae;->a(Lu/aly/ai;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 8

    .prologue
    .line 264
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_0

    .line 265
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/d;->f:Lu/aly/ag;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lu/aly/ag;->a(Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_0

    .line 168
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/ag;

    invoke-virtual {v0, p2, p3}, Lu/aly/ag;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 274
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_0

    .line 275
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/ag;

    invoke-virtual {v0, p2, p3, p4, p5}, Lu/aly/ag;->a(Ljava/lang/String;Ljava/util/Map;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 206
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    :try_start_0
    invoke-static {p2}, Lcom/umeng/analytics/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 253
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_0

    .line 254
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/ag;

    invoke-virtual {v0, p2, p3, p4}, Lu/aly/ag;->a(Ljava/util/List;ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;)V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    .line 486
    :cond_0
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mAppkey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 487
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mAppkey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/analytics/AnalyticsConfig;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 492
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mChannelId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mChannelId:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->a(Ljava/lang/String;)V

    .line 495
    :cond_1
    iget-boolean v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mIsCrashEnable:Z

    sput-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    .line 496
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mType:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V

    .line 497
    :goto_0
    return-void

    .line 489
    :cond_2
    const-string v0, "the appkey is null!"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/umeng/analytics/c;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    .line 101
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/at;

    invoke-virtual {v0, p1}, Lu/aly/at;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    .line 109
    sput-object p2, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/at;

    invoke-virtual {v0}, Lu/aly/at;->a()V

    .line 298
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 299
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/ae;

    if-eqz v0, :cond_0

    .line 300
    new-instance v0, Lu/aly/av$i;

    invoke-direct {v0}, Lu/aly/av$i;-><init>()V

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lu/aly/av$i;->a:J

    .line 302
    const-wide/16 v2, 0x1

    iput-wide v2, v0, Lu/aly/av$i;->b:J

    .line 303
    invoke-static {p1}, Lcom/umeng/analytics/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/av$i;->c:Ljava/lang/String;

    .line 304
    iget-object v1, p0, Lcom/umeng/analytics/d;->g:Lu/aly/ae;

    invoke-virtual {v1, v0}, Lu/aly/ae;->a(Lu/aly/ai;)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->h:Lu/aly/m;

    invoke-virtual {v0}, Lu/aly/m;->c()V

    .line 307
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)V

    .line 308
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 311
    :cond_1
    invoke-static {}, Lcom/umeng/analytics/f;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    const-string v1, "Exception in onAppCrash"

    invoke-static {v1, v0}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    .prologue
    .line 386
    invoke-static {p1}, Lu/aly/bj;->a(Ljavax/microedition/khronos/opengles/GL10;)[Ljava/lang/String;

    move-result-object v0

    .line 387
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 388
    const/4 v1, 0x0

    aget-object v1, v0, v1

    sput-object v1, Lcom/umeng/analytics/AnalyticsConfig;->GPU_VENDER:Ljava/lang/String;

    .line 389
    const/4 v1, 0x1

    aget-object v0, v0, v1

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_RENDERER:Ljava/lang/String;

    .line 391
    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 368
    sput-boolean p1, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    .line 369
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 341
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/d$5;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d$5;-><init>(Lcom/umeng/analytics/d;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    const-string v1, " Excepthon  in  onProfileSignOff"

    invoke-static {v1, v0}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b(J)V
    .locals 1

    .prologue
    .line 505
    sput-wide p1, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    .line 506
    return-void
.end method

.method b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    const-string v0, "unexpected null context in onPause"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 142
    :cond_0
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/at;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/at;->b(Ljava/lang/String;)V

    .line 147
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_2

    .line 148
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 150
    :cond_2
    new-instance v0, Lcom/umeng/analytics/d$3;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/d$3;-><init>(Lcom/umeng/analytics/d;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    const-string v1, "Exception occurred in Mobclick.onRause(). "

    invoke-static {v1, v0}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 471
    if-eqz p1, :cond_0

    .line 472
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    .line 474
    :cond_0
    invoke-static {p1, p2}, Lcom/umeng/analytics/AnalyticsConfig;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/at;

    invoke-virtual {v0, p1}, Lu/aly/at;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 319
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/d$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/analytics/d$4;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    const-string v1, " Excepthon  in  onProfileSignIn"

    invoke-static {v1, v0}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b(Z)V
    .locals 0

    .prologue
    .line 377
    sput-boolean p1, Lcom/umeng/analytics/AnalyticsConfig;->ENABLE_MEMORY_BUFFER:Z

    .line 378
    return-void
.end method

.method c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 235
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_0

    .line 236
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/ae;

    invoke-virtual {v0}, Lu/aly/ae;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method c(Z)V
    .locals 0

    .prologue
    .line 399
    sput-boolean p1, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    .line 400
    return-void
.end method

.method d(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/at;

    invoke-virtual {v0}, Lu/aly/at;->a()V

    .line 285
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)V

    .line 286
    invoke-static {p1}, Lu/aly/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 287
    iget-object v0, p0, Lcom/umeng/analytics/d;->h:Lu/aly/m;

    invoke-virtual {v0}, Lu/aly/m;->b()V

    .line 288
    invoke-static {}, Lcom/umeng/analytics/f;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method d(Z)V
    .locals 0

    .prologue
    .line 408
    sput-boolean p1, Lcom/umeng/analytics/a;->e:Z

    .line 409
    return-void
.end method

.method e(Z)V
    .locals 0

    .prologue
    .line 417
    sput-boolean p1, Lu/aly/bl;->a:Z

    .line 418
    sput-boolean p1, Lcom/umeng/analytics/social/e;->v:Z

    .line 419
    return-void
.end method

.method f(Z)V
    .locals 0

    .prologue
    .line 427
    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->a(Z)V

    .line 428
    return-void
.end method
