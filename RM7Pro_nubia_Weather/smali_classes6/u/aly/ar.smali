.class public Lu/aly/ar;
.super Ljava/lang/Object;
.source "SessionTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "session_start_time"

.field private static final b:Ljava/lang/String; = "session_end_time"

.field private static final c:Ljava/lang/String; = "session_id"

.field private static final f:Ljava/lang/String; = "activities"

.field private static final g:Ljava/lang/String; = "uptr"

.field private static final h:Ljava/lang/String; = "dntr"

.field private static i:Ljava/lang/String;

.field private static j:Landroid/content/Context;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lu/aly/ar;->i:Ljava/lang/String;

    .line 36
    sput-object v0, Lu/aly/ar;->j:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "a_start_time"

    iput-object v0, p0, Lu/aly/ar;->d:Ljava/lang/String;

    .line 28
    const-string v0, "a_end_time"

    iput-object v0, p0, Lu/aly/ar;->e:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 299
    :try_start_0
    sget-object v0, Lu/aly/ar;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 300
    sget-object v0, Lu/aly/ar;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "session_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu/aly/ar;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :cond_0
    :goto_0
    sget-object v0, Lu/aly/ar;->i:Ljava/lang/String;

    return-object v0

    .line 302
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 212
    invoke-static {p1}, Lu/aly/ae;->a(Landroid/content/Context;)Lu/aly/ae;

    move-result-object v1

    .line 213
    invoke-virtual {p0, p1}, Lu/aly/ar;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-virtual {p0, p1}, Lu/aly/ar;->a(Landroid/content/Context;)Lu/aly/av$o;

    move-result-object v0

    .line 217
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 219
    const-string v4, "session_id"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 220
    const-string v4, "session_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 221
    const-string v4, "session_end_time"

    invoke-interface {v3, v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 222
    const-string v4, "a_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 223
    const-string v4, "a_end_time"

    invoke-interface {v3, v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 224
    const-string v4, "versioncode"

    invoke-static {p1}, Lu/aly/bj;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 225
    const-string v4, "versionname"

    invoke-static {p1}, Lu/aly/bj;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 226
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 228
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v1, v0}, Lu/aly/ae;->a(Lu/aly/ai;)V

    .line 234
    :goto_0
    return-object v2

    .line 231
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lu/aly/av$o;

    invoke-virtual {v1, v0}, Lu/aly/ae;->a(Lu/aly/ai;)V

    goto :goto_0
.end method

.method private a(Landroid/content/SharedPreferences;)V
    .locals 3

    .prologue
    .line 110
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 112
    const-string v1, "session_start_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    const-string v1, "session_end_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    const-string v1, "a_start_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    const-string v1, "a_end_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    const-string v1, "activities"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    return-void
.end method

.method private b(Landroid/content/SharedPreferences;)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    const-wide/16 v8, 0x0

    .line 195
    const-string v1, "a_start_time"

    invoke-interface {p1, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 196
    const-string v1, "a_end_time"

    invoke-interface {p1, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 200
    cmp-long v1, v2, v8

    if-eqz v1, :cond_1

    sub-long v2, v6, v2

    sget-wide v8, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long v1, v2, v8

    if-gez v1, :cond_1

    .line 201
    const-string v1, "onResume called before onPause"

    invoke-static {v1}, Lu/aly/bl;->e(Ljava/lang/String;)V

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 205
    :cond_1
    sub-long v2, v6, v4

    sget-wide v4, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 206
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 291
    sget-object v0, Lu/aly/ar;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 292
    invoke-static {p0}, Lu/aly/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "session_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu/aly/ar;->i:Ljava/lang/String;

    .line 294
    :cond_0
    sget-object v0, Lu/aly/ar;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lu/aly/av$o;
    .locals 14

    .prologue
    .line 39
    invoke-static {p1}, Lu/aly/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 41
    const-string v0, "session_id"

    const/4 v1, 0x0

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 43
    if-nez v4, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    .line 46
    :cond_0
    const-string v0, "session_start_time"

    const-wide/16 v6, 0x0

    invoke-interface {v3, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 47
    const-string v0, "session_end_time"

    const-wide/16 v8, 0x0

    invoke-interface {v3, v0, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 48
    const-wide/16 v0, 0x0

    .line 50
    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_1

    .line 51
    sub-long v0, v8, v6

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0x5265c00

    cmp-long v2, v10, v12

    if-lez v2, :cond_1

    .line 53
    const-wide/16 v0, 0x0

    .line 57
    :cond_1
    new-instance v2, Lu/aly/av$o;

    invoke-direct {v2}, Lu/aly/av$o;-><init>()V

    .line 58
    iput-object v4, v2, Lu/aly/av$o;->b:Ljava/lang/String;

    .line 59
    iput-wide v6, v2, Lu/aly/av$o;->c:J

    .line 60
    iput-wide v8, v2, Lu/aly/av$o;->d:J

    .line 61
    iput-wide v0, v2, Lu/aly/av$o;->e:J

    .line 63
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->getLocation()[D

    move-result-object v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    iget-object v1, v2, Lu/aly/av$o;->j:Lu/aly/av$k;

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    iput-wide v4, v1, Lu/aly/av$k;->a:D

    .line 66
    iget-object v1, v2, Lu/aly/av$o;->j:Lu/aly/av$k;

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    iput-wide v4, v1, Lu/aly/av$k;->b:D

    .line 67
    iget-object v0, v2, Lu/aly/av$o;->j:Lu/aly/av$k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lu/aly/av$k;->c:J

    .line 72
    :cond_2
    :try_start_0
    const-string v0, "android.net.TrafficStats"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 73
    const-string v1, "getUidRxBytes"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 74
    const-string v4, "getUidTxBytes"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 76
    const/4 v0, -0x1

    if-ne v5, v0, :cond_3

    .line 77
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_3
    const/4 v0, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 79
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v8

    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 80
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-lez v4, :cond_4

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_5

    .line 102
    :cond_4
    :goto_1
    invoke-static {v3, v2}, Lu/aly/at;->a(Landroid/content/SharedPreferences;Lu/aly/av$o;)V

    .line 104
    invoke-direct {p0, v3}, Lu/aly/ar;->a(Landroid/content/SharedPreferences;)V

    move-object v0, v2

    .line 106
    goto/16 :goto_0

    .line 83
    :cond_5
    :try_start_1
    const-string v4, "uptr"

    const-wide/16 v8, -0x1

    invoke-interface {v3, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 84
    const-string v8, "dntr"

    const-wide/16 v10, -0x1

    invoke-interface {v3, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 85
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "uptr"

    invoke-interface {v10, v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "dntr"

    invoke-interface {v10, v11, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_4

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_4

    .line 89
    sub-long/2addr v6, v8

    .line 90
    sub-long/2addr v0, v4

    .line 91
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-lez v4, :cond_4

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_4

    .line 94
    iget-object v4, v2, Lu/aly/av$o;->i:Lu/aly/av$p;

    iput-wide v6, v4, Lu/aly/av$p;->a:J

    .line 95
    iget-object v4, v2, Lu/aly/av$o;->i:Lu/aly/av$p;

    iput-wide v0, v4, Lu/aly/av$p;->b:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 123
    invoke-static {p1}, Lu/aly/bj;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 127
    if-nez v1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Appkey is null or empty, Please check AndroidManifest.xml"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu/aly/ar;->i:Ljava/lang/String;

    .line 134
    sget-object v0, Lu/aly/ar;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 138
    sput-object p1, Lu/aly/ar;->j:Landroid/content/Context;

    .line 139
    invoke-static {p1}, Lu/aly/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 146
    const-string v2, "versioncode"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 147
    sget-object v3, Lu/aly/ar;->j:Landroid/content/Context;

    invoke-static {v3}, Lu/aly/bj;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 148
    if-eqz v2, :cond_2

    if-eq v3, v2, :cond_2

    .line 149
    invoke-static {p1}, Lu/aly/ar;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 150
    invoke-direct {p0, p1, v0}, Lu/aly/ar;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    .line 152
    :cond_1
    sget-object v0, Lu/aly/ar;->j:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lu/aly/ar;->e(Landroid/content/Context;)Z

    .line 153
    sget-object v0, Lu/aly/ar;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ae;->a(Landroid/content/Context;)Lu/aly/ae;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/ae;->c()V

    .line 154
    sget-object v0, Lu/aly/ar;->j:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lu/aly/ar;->f(Landroid/content/Context;)V

    goto :goto_0

    .line 158
    :cond_2
    invoke-direct {p0, v0}, Lu/aly/ar;->b(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    invoke-direct {p0, p1, v0}, Lu/aly/ar;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start new session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bl;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_3
    const-string v2, "session_id"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    const-string v2, "a_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 164
    const-string v2, "a_end_time"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extend current session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bl;->c(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public d(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 172
    invoke-static {p1}, Lu/aly/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 173
    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 177
    :cond_0
    const-string v1, "a_start_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 179
    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v1, :cond_1

    .line 180
    const-string v0, "onPause called before onResume"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 184
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 186
    const-string v1, "a_start_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 187
    const-string v1, "a_end_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 188
    const-string v1, "session_end_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 190
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public e(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 238
    const/4 v0, 0x0

    .line 240
    invoke-static {p1}, Lu/aly/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 241
    if-nez v1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v0

    .line 245
    :cond_1
    const-string v2, "session_id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 246
    if-eqz v2, :cond_0

    .line 250
    const-string v2, "a_start_time"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 251
    const-string v4, "a_end_time"

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 253
    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 254
    const/4 v0, 0x1

    .line 255
    invoke-virtual {p0, p1}, Lu/aly/ar;->d(Landroid/content/Context;)V

    .line 259
    :cond_2
    invoke-static {p1}, Lu/aly/ae;->a(Landroid/content/Context;)Lu/aly/ae;

    move-result-object v1

    .line 260
    invoke-virtual {p0, p1}, Lu/aly/ar;->a(Landroid/content/Context;)Lu/aly/av$o;

    move-result-object v2

    .line 261
    if-eqz v2, :cond_0

    .line 262
    invoke-virtual {v1, v2}, Lu/aly/ae;->b(Lu/aly/ai;)V

    goto :goto_0
.end method

.method public f(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 269
    invoke-static {p1}, Lu/aly/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 270
    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-virtual {p0, p1}, Lu/aly/ar;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 278
    const-string v2, "session_id"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 279
    const-string v2, "session_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 280
    const-string v2, "session_end_time"

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 281
    const-string v2, "a_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 282
    const-string v2, "a_end_time"

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 283
    const-string v2, "versioncode"

    invoke-static {p1}, Lu/aly/bj;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 284
    const-string v2, "versionname"

    invoke-static {p1}, Lu/aly/bj;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restart session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bl;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
