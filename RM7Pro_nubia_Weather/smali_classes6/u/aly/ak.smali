.class public Lu/aly/ak;
.super Ljava/lang/Object;
.source "MemoCache.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/ai;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/ak;->a:Ljava/util/List;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ak;->b:Landroid/content/Context;

    .line 33
    iput-object p1, p0, Lu/aly/ak;->b:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private c(Lu/aly/av;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 83
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lu/aly/ak;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ai;

    .line 88
    invoke-interface {v0, p1}, Lu/aly/ai;->a(Lu/aly/av;)V

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 90
    :cond_0
    :try_start_1
    iget-object v0, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    if-nez v0, :cond_1

    .line 92
    monitor-exit p0

    .line 122
    :goto_1
    return-void

    .line 94
    :cond_1
    const-string v1, "userlevel"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 96
    iget-object v1, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iput-object v0, v1, Lu/aly/av$m;->j:Ljava/lang/String;

    .line 98
    :cond_2
    iget-object v0, p0, Lu/aly/ak;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    sget-wide v0, Lu/aly/av;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 104
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->d:Lu/aly/av$b;

    sget-wide v2, Lu/aly/av;->c:J

    iput-wide v2, v0, Lu/aly/av$b;->a:J

    .line 109
    :cond_3
    iget-object v0, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/m;->a(Landroid/content/Context;)Lu/aly/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/aly/m;->a(Lu/aly/av;)V

    .line 113
    iget-object v0, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/e;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_4

    aget-object v1, v0, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    aget-object v1, v0, v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 115
    iget-object v1, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v1, v1, Lu/aly/av$m;->g:Lu/aly/av$c;

    aget-object v2, v0, v4

    iput-object v2, v1, Lu/aly/av$c;->a:Ljava/lang/String;

    .line 116
    iget-object v1, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v1, v1, Lu/aly/av$m;->g:Lu/aly/av$c;

    aget-object v0, v0, v5

    iput-object v0, v1, Lu/aly/av$c;->b:Ljava/lang/String;

    .line 121
    :cond_4
    iget-object v0, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/aw;->a(Landroid/content/Context;)Lu/aly/aw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/aly/aw;->a(Lu/aly/av;)V

    goto :goto_1
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lu/aly/ak;->b:Landroid/content/Context;

    return-object v0
.end method

.method public declared-synchronized a(Lu/aly/ai;)V
    .locals 1

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/ak;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lu/aly/av;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ar;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 69
    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0, p1}, Lu/aly/ak;->b(Lu/aly/av;)V

    .line 73
    invoke-direct {p0, p1}, Lu/aly/ak;->c(Lu/aly/av;)V

    goto :goto_0
.end method

.method protected a(I)Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized b()I
    .locals 6

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/ak;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 47
    sget-wide v2, Lu/aly/av;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 51
    :cond_0
    monitor-exit p0

    return v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Lu/aly/av;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 133
    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/av$n;->a:Ljava/lang/String;

    .line 134
    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/AnalyticsConfig;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/av$n;->b:Ljava/lang/String;

    .line 135
    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/AnalyticsConfig;->getSecretKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu/aly/bk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/av$n;->c:Ljava/lang/String;

    .line 136
    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lu/aly/av$n;->m:I

    .line 137
    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/AnalyticsConfig;->getSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/av$n;->l:Ljava/lang/String;

    .line 138
    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bj;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/av$n;->e:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bj;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 141
    iget-object v1, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bj;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v2}, Lu/aly/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 143
    if-nez v2, :cond_5

    .line 144
    iget-object v2, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iput v0, v2, Lu/aly/av$n;->h:I

    .line 145
    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iput-object v1, v0, Lu/aly/av$n;->d:Ljava/lang/String;

    .line 151
    :goto_0
    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bj;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/av$n;->f:Ljava/lang/String;

    .line 152
    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bj;->D(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/av$n;->g:Ljava/lang/String;

    .line 154
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    iput-object v1, v0, Lu/aly/av$n;->i:Ljava/lang/String;

    .line 156
    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    iput-object v1, v0, Lu/aly/av$n;->j:Ljava/lang/String;

    .line 162
    :cond_0
    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bj;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/av$n;->t:Ljava/lang/String;

    .line 163
    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bj;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/av$n;->n:Ljava/lang/String;

    .line 164
    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bj;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/av$n;->s:Ljava/lang/String;

    .line 166
    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bj;->E(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/av$n;->B:Ljava/lang/String;

    .line 167
    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bj;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/av$n;->C:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bj;->w(Landroid/content/Context;)[I

    move-result-object v0

    .line 171
    if-eqz v0, :cond_1

    .line 172
    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lu/aly/av$n;->r:Ljava/lang/String;

    .line 175
    :cond_1
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_RENDERER:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_VENDER:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 182
    :cond_2
    iget-object v0, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bj;->m(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 184
    const-string v1, "Wi-Fi"

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 185
    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    const-string v2, "wifi"

    iput-object v2, v1, Lu/aly/av$n;->H:Ljava/lang/String;

    .line 192
    :goto_1
    const-string v1, ""

    aget-object v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 193
    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    aget-object v0, v0, v5

    iput-object v0, v1, Lu/aly/av$n;->I:Ljava/lang/String;

    .line 195
    :cond_3
    iget-object v0, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bj;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 197
    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iput-object v0, v1, Lu/aly/av$n;->J:Ljava/lang/String;

    .line 199
    :cond_4
    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bj;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/av$n;->G:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bj;->r(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 201
    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    aget-object v2, v0, v4

    iput-object v2, v1, Lu/aly/av$n;->F:Ljava/lang/String;

    .line 202
    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    aget-object v0, v0, v5

    iput-object v0, v1, Lu/aly/av$n;->E:Ljava/lang/String;

    .line 203
    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bj;->p(Landroid/content/Context;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lu/aly/av$n;->D:J

    .line 208
    iget-object v0, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lu/aly/as;->a(Landroid/content/Context;Lu/aly/av;)V

    .line 215
    :try_start_0
    iget-object v0, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/v;->a(Landroid/content/Context;)Lu/aly/v;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/v;->b()Lu/aly/bc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 216
    if-nez v0, :cond_8

    .line 239
    :goto_2
    return-void

    .line 147
    :cond_5
    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    const-string v1, "versioncode"

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lu/aly/av$n;->h:I

    .line 148
    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    const-string v1, "versionname"

    const-string v3, ""

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/av$n;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 186
    :cond_6
    const-string v1, "2G/3G"

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 187
    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    const-string v2, "2G/3G"

    iput-object v2, v1, Lu/aly/av$n;->H:Ljava/lang/String;

    goto/16 :goto_1

    .line 189
    :cond_7
    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    const-string v2, "unknow"

    iput-object v2, v1, Lu/aly/av$n;->H:Ljava/lang/String;

    goto/16 :goto_1

    .line 220
    :cond_8
    :try_start_1
    new-instance v1, Lu/aly/by;

    invoke-direct {v1}, Lu/aly/by;-><init>()V

    invoke-virtual {v1, v0}, Lu/aly/by;->a(Lu/aly/bp;)[B

    move-result-object v0

    .line 221
    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lu/aly/av$n;->O:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 229
    :goto_3
    :try_start_2
    iget-object v0, p0, Lu/aly/ak;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/x;->a(Landroid/content/Context;)Lu/aly/x;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/x;->a()Lu/aly/bd;

    move-result-object v0

    .line 230
    if-nez v0, :cond_9

    .line 231
    const-string v0, "trans the imprint is null"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 236
    :catch_0
    move-exception v0

    goto :goto_2

    .line 234
    :cond_9
    new-instance v1, Lu/aly/by;

    invoke-direct {v1}, Lu/aly/by;-><init>()V

    invoke-virtual {v1, v0}, Lu/aly/by;->a(Lu/aly/bp;)[B

    move-result-object v0

    .line 235
    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lu/aly/av$n;->N:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 222
    :catch_1
    move-exception v0

    goto :goto_3
.end method
