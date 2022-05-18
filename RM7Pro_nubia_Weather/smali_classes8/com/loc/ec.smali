.class public final Lcom/loc/ec;
.super Ljava/lang/Object;
.source "AMapDnsManager.java"


# static fields
.field public static a:I

.field public static b:I

.field private static e:Lcom/loc/ec;


# instance fields
.field private c:J

.field private d:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/loc/dq;

.field private h:Lcom/loc/dq;

.field private i:J

.field private j:Landroid/content/Context;

.field private k:Ljava/lang/String;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/loc/ec;->a:I

    const/4 v0, 0x2

    sput v0, Lcom/loc/ec;->b:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/ec;->c:J

    iput-boolean v2, p0, Lcom/loc/ec;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/ec;->f:Ljava/util/ArrayList;

    new-instance v0, Lcom/loc/dq;

    invoke-direct {v0}, Lcom/loc/dq;-><init>()V

    iput-object v0, p0, Lcom/loc/ec;->g:Lcom/loc/dq;

    new-instance v0, Lcom/loc/dq;

    invoke-direct {v0}, Lcom/loc/dq;-><init>()V

    iput-object v0, p0, Lcom/loc/ec;->h:Lcom/loc/dq;

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/loc/ec;->i:J

    iput-boolean v2, p0, Lcom/loc/ec;->l:Z

    iput-object p1, p0, Lcom/loc/ec;->j:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/loc/ec;J)J
    .locals 1

    iput-wide p1, p0, Lcom/loc/ec;->i:J

    return-wide p1
.end method

.method static synthetic a(Lcom/loc/ec;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/loc/ec;->j:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/loc/ec;I)Lcom/loc/dq;
    .locals 1

    invoke-direct {p0, p1}, Lcom/loc/ec;->b(I)Lcom/loc/dq;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/loc/ec;
    .locals 2

    const-class v1, Lcom/loc/ec;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/loc/ec;->e:Lcom/loc/ec;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/ec;

    invoke-direct {v0, p0}, Lcom/loc/ec;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/loc/ec;->e:Lcom/loc/ec;

    :cond_0
    sget-object v0, Lcom/loc/ec;->e:Lcom/loc/ec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    array-length v1, p0

    array-length v2, p1

    if-ne v1, v2, :cond_0

    array-length v2, p0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, p0, v1

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lorg/json/JSONArray;I)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    sget v4, Lcom/loc/ec;->b:I

    if-ne p1, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    aput-object v0, v1, v2

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private b(I)Lcom/loc/dq;
    .locals 1

    sget v0, Lcom/loc/ec;->b:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/loc/ec;->h:Lcom/loc/dq;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/loc/ec;->g:Lcom/loc/dq;

    goto :goto_0
.end method

.method static synthetic b(Lcom/loc/ec;I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/loc/ec;->b(I)Lcom/loc/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/dq;->a()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/loc/ec;->b(I)Lcom/loc/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/dq;->a()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/loc/ec;->b(I)Lcom/loc/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/dq;->a()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/loc/ec;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/loc/ec;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/loc/ec;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/loc/ec;->j:Landroid/content/Context;

    const-string v2, "cbG9jaXA"

    invoke-static {v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {p1}, Lcom/loc/ec;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method private declared-synchronized b(ZI)V
    .locals 7

    monitor-enter p0

    if-nez p1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/loc/ei;->o()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/loc/ec;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/loc/ec;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/loc/ec;->c:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/loc/ec;->i:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/loc/ec;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ec;->c:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/ec;->l:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v1, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "),"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/loc/ab;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/loc/ec$1;

    invoke-direct {v1, p0, p2}, Lcom/loc/ec$1;-><init>(Lcom/loc/ec;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    sget v0, Lcom/loc/ec;->b:I

    if-ne p0, v0, :cond_0

    const-string v0, "last_ip_6"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "last_ip_4"

    goto :goto_0
.end method

.method private d(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/loc/ec;->b(I)Lcom/loc/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/dq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ec;->j:Landroid/content/Context;

    const-string v1, "cbG9jaXA"

    invoke-static {v0, v1}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lcom/loc/ec;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;)V

    invoke-direct {p0, p1}, Lcom/loc/ec;->b(I)Lcom/loc/dq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loc/dq;->a(Z)V

    :cond_0
    return-void
.end method

.method private e(I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/loc/ec;->b(ZI)V

    invoke-direct {p0, p1}, Lcom/loc/ec;->b(I)Lcom/loc/dq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/loc/dq;->a()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v2, v3

    if-lez v2, :cond_2

    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v0, v3, v2

    iget-object v5, p0, Lcom/loc/ec;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_2
    return-object v1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/loc/ec;->b(I)Lcom/loc/dq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/loc/dq;->a(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/loc/ec;->j:Landroid/content/Context;

    const-string v2, "cbG9jaXA"

    invoke-static {p1}, Lcom/loc/ec;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/loc/ec;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lcom/loc/ec;->b(I)Lcom/loc/dq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/loc/dq;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/loc/ec;->b(I)Lcom/loc/dq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/loc/dq;->b(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/loc/ec;->b(I)Lcom/loc/dq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/loc/dq;->a(Z)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/loc/ec;->b(I)Lcom/loc/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/dq;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/loc/ef;I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/loc/ei;->p()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/loc/ef;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v1, "http://abroad.apilocate.amap.com/mobile/binary"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "abroad.apilocate.amap.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "apilocate.amap.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "httpdns.apilocate.amap.com"

    move-object v2, v1

    :goto_1
    invoke-direct {p0, p2}, Lcom/loc/ec;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    sget v5, Lcom/loc/ec;->b:I

    if-ne p2, v5, :cond_3

    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/loc/ef;->h:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1}, Lcom/loc/ef;->b()Ljava/util/Map;

    move-result-object v3

    const-string v4, "host"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/loc/ef;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v2, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/loc/ef;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/loc/ec;->b(I)Lcom/loc/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/dq;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/ec;->f:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/loc/ec;->b(I)Lcom/loc/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loc/dq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/loc/ec;->d(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/loc/ec;->b(ZI)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/loc/ec;->d(I)V

    goto :goto_0
.end method

.method public final a(ZI)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/loc/ec;->b(I)Lcom/loc/dq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/dq;->b(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/loc/ec;->b(I)Lcom/loc/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/dq;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/loc/ec;->b(I)Lcom/loc/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loc/dq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/ec;->j:Landroid/content/Context;

    const-string v2, "cbG9jaXA"

    invoke-static {v0, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p2}, Lcom/loc/ec;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;)V

    :cond_0
    return-void
.end method
