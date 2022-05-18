.class public final Lu/aly/ad;
.super Ljava/lang/Object;
.source "CacheImpl.java"

# interfaces
.implements Lu/aly/ah;
.implements Lu/aly/ao;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/ad$a;
    }
.end annotation


# static fields
.field private static o:Landroid/content/Context;


# instance fields
.field private final a:J

.field private final b:I

.field private c:Lu/aly/ak;

.field private d:Lcom/umeng/analytics/h;

.field private e:Lu/aly/as;

.field private f:Lu/aly/ax;

.field private g:Lu/aly/aw;

.field private h:Lu/aly/ay;

.field private i:Lu/aly/ad$a;

.field private j:Lu/aly/x$a;

.field private k:I

.field private l:J

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-wide/32 v0, 0x1b77400

    iput-wide v0, p0, Lu/aly/ad;->a:J

    .line 43
    const/16 v0, 0x1388

    iput v0, p0, Lu/aly/ad;->b:I

    .line 44
    iput-object v2, p0, Lu/aly/ad;->c:Lu/aly/ak;

    .line 45
    iput-object v2, p0, Lu/aly/ad;->d:Lcom/umeng/analytics/h;

    .line 46
    iput-object v2, p0, Lu/aly/ad;->e:Lu/aly/as;

    .line 47
    iput-object v2, p0, Lu/aly/ad;->f:Lu/aly/ax;

    .line 48
    iput-object v2, p0, Lu/aly/ad;->g:Lu/aly/aw;

    .line 49
    iput-object v2, p0, Lu/aly/ad;->h:Lu/aly/ay;

    .line 50
    iput-object v2, p0, Lu/aly/ad;->i:Lu/aly/ad$a;

    .line 51
    iput-object v2, p0, Lu/aly/ad;->j:Lu/aly/x$a;

    .line 53
    const/16 v0, 0xa

    iput v0, p0, Lu/aly/ad;->k:I

    .line 55
    iput-wide v6, p0, Lu/aly/ad;->l:J

    .line 56
    iput v4, p0, Lu/aly/ad;->m:I

    .line 57
    iput v4, p0, Lu/aly/ad;->n:I

    .line 62
    sput-object p1, Lu/aly/ad;->o:Landroid/content/Context;

    .line 64
    new-instance v0, Lu/aly/ak;

    invoke-direct {v0, p1}, Lu/aly/ak;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/ad;->c:Lu/aly/ak;

    .line 65
    new-instance v0, Lu/aly/as;

    invoke-direct {v0, p1}, Lu/aly/as;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/ad;->e:Lu/aly/as;

    .line 67
    invoke-static {p1}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ad;->d:Lcom/umeng/analytics/h;

    .line 68
    invoke-static {p1}, Lu/aly/x;->a(Landroid/content/Context;)Lu/aly/x;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/x;->b()Lu/aly/x$a;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ad;->j:Lu/aly/x$a;

    .line 70
    new-instance v0, Lu/aly/ad$a;

    invoke-direct {v0, p0}, Lu/aly/ad$a;-><init>(Lu/aly/ad;)V

    iput-object v0, p0, Lu/aly/ad;->i:Lu/aly/ad$a;

    .line 72
    sget-object v0, Lu/aly/ad;->o:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/aw;->a(Landroid/content/Context;)Lu/aly/aw;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ad;->g:Lu/aly/aw;

    .line 73
    sget-object v0, Lu/aly/ad;->o:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ax;->a(Landroid/content/Context;)Lu/aly/ax;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ad;->f:Lu/aly/ax;

    .line 74
    sget-object v0, Lu/aly/ad;->o:Landroid/content/Context;

    iget-object v1, p0, Lu/aly/ad;->e:Lu/aly/as;

    invoke-static {v0, v1}, Lu/aly/ay;->a(Landroid/content/Context;Lu/aly/as;)Lu/aly/ay;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ad;->h:Lu/aly/ay;

    .line 77
    sget-object v0, Lu/aly/ad;->o:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    const-string v1, "thtstart"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lu/aly/ad;->l:J

    .line 79
    const-string v1, "gkvc"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lu/aly/ad;->m:I

    .line 80
    const-string v1, "ekvc"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lu/aly/ad;->n:I

    .line 81
    return-void
.end method

.method static synthetic a(Lu/aly/ad;)Lu/aly/x$a;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lu/aly/ad;->j:Lu/aly/x$a;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lu/aly/ad;->e:Lu/aly/as;

    invoke-virtual {v2}, Lu/aly/as;->o()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 151
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-virtual {p0, v1}, Lu/aly/ad;->a([I)Lu/aly/av;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/ad;->a(Lu/aly/av;)V

    .line 152
    new-instance v0, Lu/aly/ad$1;

    invoke-direct {v0, p0}, Lu/aly/ad$1;-><init>(Lu/aly/ad;)V

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;J)V

    .line 160
    return-void
.end method

.method private a(IILu/aly/av;)V
    .locals 3

    .prologue
    .line 367
    if-lez p1, :cond_1

    .line 368
    iget-object v0, p3, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v1, v0, Lu/aly/av$m;->b:Ljava/util/List;

    .line 369
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 370
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int v2, v0, p1

    .line 371
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, v2, :cond_1

    .line 372
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 371
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 375
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p1, v0

    .line 376
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 380
    :cond_1
    if-lez p2, :cond_3

    .line 381
    iget-object v0, p3, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v1, v0, Lu/aly/av$m;->a:Ljava/util/List;

    .line 382
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p2, :cond_2

    .line 383
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int v2, v0, p2

    .line 384
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lt v0, v2, :cond_3

    .line 385
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 384
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 388
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p2, v0

    .line 389
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 393
    :cond_3
    return-void
.end method

.method static synthetic a(Lu/aly/ad;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lu/aly/ad;->b(I)V

    return-void
.end method

.method private a(Lu/aly/av;)V
    .locals 4

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 166
    :try_start_0
    sget-object v0, Lu/aly/ad;->o:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/v;->a(Landroid/content/Context;)Lu/aly/v;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lu/aly/v;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :try_start_1
    invoke-virtual {v1}, Lu/aly/v;->b()Lu/aly/bc;

    move-result-object v0

    .line 170
    new-instance v2, Lu/aly/by;

    invoke-direct {v2}, Lu/aly/by;-><init>()V

    invoke-virtual {v2, v0}, Lu/aly/by;->a(Lu/aly/bp;)[B

    move-result-object v0

    .line 171
    iget-object v2, p1, Lu/aly/av;->a:Lu/aly/av$n;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lu/aly/av$n;->O:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    :goto_0
    :try_start_2
    sget-object v0, Lu/aly/ad;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-direct {p0, p1}, Lu/aly/ad;->c(Lu/aly/av;)Lu/aly/av;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/h;->b(Lu/aly/av;)[B

    move-result-object v0

    .line 175
    if-nez v0, :cond_1

    .line 198
    :cond_0
    :goto_1
    return-void

    .line 177
    :cond_1
    sget-object v2, Lu/aly/ad;->o:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    invoke-direct {p0}, Lu/aly/ad;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    sget-object v2, Lu/aly/ad;->o:Landroid/content/Context;

    sget-object v3, Lu/aly/ad;->o:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lu/aly/t;->b(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/t;

    move-result-object v0

    .line 186
    :goto_2
    invoke-virtual {v0}, Lu/aly/t;->c()[B

    move-result-object v0

    .line 187
    sget-object v2, Lu/aly/ad;->o:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v2

    .line 188
    invoke-virtual {v2}, Lcom/umeng/analytics/h;->h()V

    .line 189
    invoke-virtual {v2, v0}, Lcom/umeng/analytics/h;->a([B)V

    .line 190
    invoke-virtual {v1}, Lu/aly/v;->d()V

    .line 191
    const-wide/16 v0, 0x0

    sput-wide v0, Lu/aly/av;->c:J

    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    goto :goto_1

    .line 184
    :cond_2
    sget-object v2, Lu/aly/ad;->o:Landroid/content/Context;

    sget-object v3, Lu/aly/ad;->o:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lu/aly/t;->a(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/t;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_2

    .line 172
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 136
    iget-object v0, p0, Lu/aly/ad;->e:Lu/aly/as;

    invoke-virtual {v0}, Lu/aly/as;->f()Z

    move-result v0

    .line 137
    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lu/aly/ad;->e:Lu/aly/as;

    invoke-virtual {v1}, Lu/aly/as;->n()J

    move-result-wide v2

    sput-wide v2, Lu/aly/av;->c:J

    .line 141
    :cond_0
    invoke-direct {p0, p1}, Lu/aly/ad;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    invoke-direct {p0}, Lu/aly/ad;->f()V

    .line 146
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0}, Lu/aly/ad;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :cond_3
    invoke-virtual {p0}, Lu/aly/ad;->b()V

    goto :goto_0
.end method

.method static synthetic b(Lu/aly/ad;)Lu/aly/ax;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lu/aly/ad;->f:Lu/aly/ax;

    return-object v0
.end method

.method private b(I)V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lu/aly/ad;->a(I)V

    .line 413
    return-void
.end method

.method private b(Lu/aly/av;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 308
    if-nez p1, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v0

    .line 313
    :cond_1
    invoke-virtual {p1}, Lu/aly/av;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Z)Z
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lu/aly/ad;->o:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bj;->o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    const-string v0, "network is unavailable"

    invoke-static {v0}, Lu/aly/bl;->b(Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x0

    .line 257
    :goto_0
    return v0

    .line 254
    :cond_0
    iget-object v0, p0, Lu/aly/ad;->e:Lu/aly/as;

    invoke-virtual {v0}, Lu/aly/as;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    const/4 v0, 0x1

    goto :goto_0

    .line 257
    :cond_1
    iget-object v0, p0, Lu/aly/ad;->i:Lu/aly/ad$a;

    invoke-virtual {v0, p1}, Lu/aly/ad$a;->b(Z)Lcom/umeng/analytics/ReportPolicy$i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/ReportPolicy$i;->a(Z)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Lu/aly/ad;)Lu/aly/as;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lu/aly/ad;->e:Lu/aly/as;

    return-object v0
.end method

.method private c(Lu/aly/av;)Lu/aly/av;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x1388

    .line 326
    .line 328
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    move v1, v2

    move v3, v2

    .line 329
    :goto_0
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 330
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/av$h;

    iget-object v0, v0, Lu/aly/av$h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 329
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 333
    :cond_1
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    move v1, v2

    .line 334
    :goto_1
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 335
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/av$h;

    iget-object v0, v0, Lu/aly/av$h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 334
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 339
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 340
    iget-wide v6, p0, Lu/aly/ad;->l:J

    sub-long v6, v0, v6

    const-wide/32 v8, 0x1b77400

    cmp-long v5, v6, v8

    if-lez v5, :cond_5

    .line 341
    const/16 v5, -0x1388

    .line 342
    add-int/lit16 v6, v3, -0x1388

    .line 344
    if-lez v6, :cond_3

    .line 345
    invoke-direct {p0, v5, v6, p1}, Lu/aly/ad;->a(IILu/aly/av;)V

    .line 348
    :cond_3
    iput v2, p0, Lu/aly/ad;->m:I

    .line 349
    if-lez v6, :cond_4

    move v3, v4

    :cond_4
    iput v3, p0, Lu/aly/ad;->n:I

    .line 350
    iput-wide v0, p0, Lu/aly/ad;->l:J

    .line 363
    :goto_2
    return-object p1

    .line 352
    :cond_5
    iget v0, p0, Lu/aly/ad;->m:I

    if-le v0, v4, :cond_8

    move v0, v2

    .line 353
    :goto_3
    iget v1, p0, Lu/aly/ad;->n:I

    if-le v1, v4, :cond_9

    move v1, v3

    .line 355
    :goto_4
    if-gtz v0, :cond_6

    if-lez v1, :cond_7

    .line 356
    :cond_6
    invoke-direct {p0, v0, v1, p1}, Lu/aly/ad;->a(IILu/aly/av;)V

    .line 359
    :cond_7
    if-lez v0, :cond_a

    move v0, v4

    :goto_5
    iput v0, p0, Lu/aly/ad;->m:I

    .line 360
    if-lez v1, :cond_b

    :goto_6
    iput v4, p0, Lu/aly/ad;->n:I

    goto :goto_2

    .line 352
    :cond_8
    iget v0, p0, Lu/aly/ad;->m:I

    add-int/2addr v0, v2

    add-int/lit16 v0, v0, -0x1388

    goto :goto_3

    .line 353
    :cond_9
    iget v1, p0, Lu/aly/ad;->n:I

    add-int/2addr v1, v3

    add-int/lit16 v1, v1, -0x1388

    goto :goto_4

    .line 359
    :cond_a
    iget v0, p0, Lu/aly/ad;->m:I

    add-int/2addr v0, v2

    goto :goto_5

    .line 360
    :cond_b
    iget v0, p0, Lu/aly/ad;->n:I

    add-int v4, v0, v3

    goto :goto_6
.end method

.method static synthetic d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lu/aly/ad;->o:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lu/aly/ad;)Lu/aly/ay;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lu/aly/ad;->h:Lu/aly/ay;

    return-object v0
.end method

.method static synthetic e(Lu/aly/ad;)Lu/aly/aw;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lu/aly/ad;->g:Lu/aly/aw;

    return-object v0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lu/aly/ad;->c:Lu/aly/ak;

    invoke-virtual {v0}, Lu/aly/ak;->b()I

    move-result v0

    iget v1, p0, Lu/aly/ad;->k:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 266
    :try_start_0
    iget-object v0, p0, Lu/aly/ad;->d:Lcom/umeng/analytics/h;

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    new-instance v0, Lu/aly/aq;

    sget-object v1, Lu/aly/ad;->o:Landroid/content/Context;

    iget-object v2, p0, Lu/aly/ad;->e:Lu/aly/as;

    invoke-direct {v0, v1, v2}, Lu/aly/aq;-><init>(Landroid/content/Context;Lu/aly/as;)V

    .line 268
    invoke-virtual {v0, p0}, Lu/aly/aq;->a(Lu/aly/ao;)V

    .line 269
    iget-object v1, p0, Lu/aly/ad;->f:Lu/aly/ax;

    invoke-virtual {v1}, Lu/aly/ax;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lu/aly/aq;->b(Z)V

    .line 272
    :cond_0
    invoke-virtual {v0}, Lu/aly/aq;->a()V

    .line 299
    :cond_1
    :goto_0
    return-void

    .line 274
    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lu/aly/ad;->a([I)Lu/aly/av;

    move-result-object v0

    .line 276
    invoke-direct {p0, v0}, Lu/aly/ad;->b(Lu/aly/av;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    new-instance v1, Lu/aly/aq;

    sget-object v2, Lu/aly/ad;->o:Landroid/content/Context;

    iget-object v3, p0, Lu/aly/ad;->e:Lu/aly/as;

    invoke-direct {v1, v2, v3}, Lu/aly/aq;-><init>(Landroid/content/Context;Lu/aly/as;)V

    .line 282
    invoke-virtual {v1, p0}, Lu/aly/aq;->a(Lu/aly/ao;)V

    .line 283
    iget-object v2, p0, Lu/aly/ad;->f:Lu/aly/ax;

    invoke-virtual {v2}, Lu/aly/ax;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 284
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lu/aly/aq;->b(Z)V

    .line 286
    :cond_3
    invoke-direct {p0, v0}, Lu/aly/ad;->c(Lu/aly/av;)Lu/aly/av;

    move-result-object v0

    invoke-virtual {v1, v0}, Lu/aly/aq;->a(Lu/aly/av;)V

    .line 287
    invoke-direct {p0}, Lu/aly/ad;->g()Z

    move-result v0

    invoke-virtual {v1, v0}, Lu/aly/aq;->a(Z)V

    .line 288
    invoke-virtual {v1}, Lu/aly/aq;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    instance-of v1, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_4

    .line 295
    :cond_4
    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private g()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 396
    iget-object v1, p0, Lu/aly/ad;->j:Lu/aly/x$a;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lu/aly/x$a;->c(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 404
    :goto_0
    :pswitch_0
    return v0

    .line 398
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 402
    :pswitch_2
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->sEncrypt:Z

    goto :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected varargs a([I)Lu/aly/av;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 202
    :try_start_0
    sget-object v0, Lu/aly/ad;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "Appkey is missing ,Please check AndroidManifest.xml"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V

    move-object v0, v3

    .line 245
    :goto_0
    return-object v0

    .line 207
    :cond_0
    sget-object v0, Lu/aly/ad;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->g()Lu/aly/av;

    move-result-object v4

    .line 209
    if-nez v4, :cond_1

    iget-object v0, p0, Lu/aly/ad;->c:Lu/aly/ak;

    invoke-virtual {v0}, Lu/aly/ak;->b()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v3

    .line 210
    goto :goto_0

    .line 213
    :cond_1
    if-nez v4, :cond_2

    .line 214
    new-instance v4, Lu/aly/av;

    invoke-direct {v4}, Lu/aly/av;-><init>()V

    .line 216
    :cond_2
    iget-object v0, p0, Lu/aly/ad;->c:Lu/aly/ak;

    invoke-virtual {v0, v4}, Lu/aly/ak;->a(Lu/aly/av;)V

    .line 218
    iget-object v0, v4, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->c:Ljava/util/List;

    if-eqz v0, :cond_4

    sget-boolean v0, Lu/aly/bl;->a:Z

    if-eqz v0, :cond_4

    iget-object v0, v4, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 220
    iget-object v0, v4, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/av$o;

    .line 221
    iget-object v0, v0, Lu/aly/av$o;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_2
    move v2, v0

    .line 224
    goto :goto_1

    .line 226
    :cond_3
    if-nez v2, :cond_4

    .line 227
    const-string v0, "missing Activities or PageViews"

    invoke-static {v0}, Lu/aly/bl;->d(Ljava/lang/String;)V

    .line 231
    :cond_4
    iget-object v0, p0, Lu/aly/ad;->f:Lu/aly/ax;

    sget-object v1, Lu/aly/ad;->o:Landroid/content/Context;

    invoke-virtual {v0, v4, v1}, Lu/aly/ax;->a(Lu/aly/av;Landroid/content/Context;)V

    .line 233
    if-eqz p1, :cond_5

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 234
    iget-object v0, v4, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->e:Lu/aly/av$g;

    const/4 v1, 0x0

    aget v1, p1, v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lu/aly/av$g;->a:Ljava/lang/Integer;

    .line 235
    iget-object v0, v4, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->e:Lu/aly/av$g;

    const/4 v1, 0x1

    aget v1, p1, v1

    int-to-long v6, v1

    iput-wide v6, v0, Lu/aly/av$g;->b:J

    .line 236
    iget-object v0, v4, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->e:Lu/aly/av$g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lu/aly/av$g;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    move-object v0, v4

    .line 238
    goto/16 :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    const-string v1, "Fail to construct message ..."

    invoke-static {v1, v0}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    sget-object v1, Lu/aly/ad;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/h;->h()V

    .line 242
    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 245
    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method public a()V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lu/aly/ad;->o:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bj;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lu/aly/ad;->f()V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v0, "network is unavailable"

    invoke-static {v0}, Lu/aly/bl;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lu/aly/ai;)V
    .locals 1

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lu/aly/ad;->c:Lu/aly/ak;

    invoke-virtual {v0, p1}, Lu/aly/ak;->a(Lu/aly/ai;)V

    .line 101
    :cond_0
    instance-of v0, p1, Lu/aly/av$o;

    invoke-direct {p0, v0}, Lu/aly/ad;->a(Z)V

    .line 102
    return-void
.end method

.method public a(Lu/aly/x$a;)V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lu/aly/ad;->g:Lu/aly/aw;

    invoke-virtual {v0, p1}, Lu/aly/aw;->a(Lu/aly/x$a;)V

    .line 417
    iget-object v0, p0, Lu/aly/ad;->f:Lu/aly/ax;

    invoke-virtual {v0, p1}, Lu/aly/ax;->a(Lu/aly/x$a;)V

    .line 418
    iget-object v0, p0, Lu/aly/ad;->h:Lu/aly/ay;

    invoke-virtual {v0, p1}, Lu/aly/ay;->a(Lu/aly/x$a;)V

    .line 419
    iget-object v0, p0, Lu/aly/ad;->i:Lu/aly/ad$a;

    invoke-virtual {v0, p1}, Lu/aly/ad$a;->a(Lu/aly/x$a;)V

    .line 420
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lu/aly/ad;->c:Lu/aly/ak;

    invoke-virtual {v0}, Lu/aly/ak;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 111
    :try_start_0
    iget-object v0, p0, Lu/aly/ad;->d:Lcom/umeng/analytics/h;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Lu/aly/ad;->a([I)Lu/aly/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/h;->a(Lu/aly/av;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    sget-object v0, Lu/aly/ad;->o:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "thtstart"

    iget-wide v2, p0, Lu/aly/ad;->l:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gkvc"

    iget v2, p0, Lu/aly/ad;->m:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ekvc"

    iget v2, p0, Lu/aly/ad;->n:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/Throwable;)V

    .line 114
    instance-of v1, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lu/aly/ad;->d:Lcom/umeng/analytics/h;

    invoke-virtual {v1}, Lcom/umeng/analytics/h;->h()V

    .line 118
    :cond_1
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Lu/aly/ai;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lu/aly/ad;->c:Lu/aly/ak;

    invoke-virtual {v0, p1}, Lu/aly/ak;->a(Lu/aly/ai;)V

    .line 106
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lu/aly/ad;->a([I)Lu/aly/av;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/ad;->a(Lu/aly/av;)V

    .line 131
    return-void
.end method
