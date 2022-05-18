.class public final Lcom/loc/l;
.super Ljava/lang/Object;
.source "AuthConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/l$a;,
        Lcom/loc/l$d;,
        Lcom/loc/l$f;,
        Lcom/loc/l$e;,
        Lcom/loc/l$c;,
        Lcom/loc/l$b;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field public static c:Landroid/content/Context;

.field public static volatile d:Z

.field private static volatile e:Z

.field private static f:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/loc/l$e;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/lang/String;

.field private static i:J

.field private static volatile j:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile k:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile l:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/loc/l$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v0, -0x1

    sput v0, Lcom/loc/l;->a:I

    const-string v0, ""

    sput-object v0, Lcom/loc/l;->b:Ljava/lang/String;

    sput-object v1, Lcom/loc/l;->c:Landroid/content/Context;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/l;->e:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/loc/l;->f:Ljava/util/Vector;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/loc/l;->g:Ljava/util/Map;

    sput-object v1, Lcom/loc/l;->h:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/loc/l;->i:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/l;->d:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/loc/l;->j:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/loc/l;->k:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/loc/l;->l:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/loc/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/loc/l$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/loc/t;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/loc/l$b;"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Lcom/loc/l;->b(Landroid/content/Context;Lcom/loc/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/loc/l$b;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)V
    .locals 5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/loc/l;->c:Landroid/content/Context;

    const-string v1, "IPV6_CONFIG_NAME"

    invoke-static {v0, v1}, Lcom/loc/l;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/loc/l$e;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "yyyyMMdd"

    invoke-static {v2, v3, v1}, Lcom/loc/u;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/loc/l$e;->a(Lcom/loc/l$e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/loc/l$e;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/loc/l$e;->b(Lcom/loc/l$e;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_2
    invoke-static {v0}, Lcom/loc/l$e;->b(Lcom/loc/l$e;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    sget-object v1, Lcom/loc/l;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/loc/l$e;->c(Lcom/loc/l$e;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/loc/l$e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "i"

    new-instance v3, Lcom/loc/x;

    const-string v4, "IPV6_CONFIG_NAME"

    invoke-direct {v3, v4}, Lcom/loc/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2, v0}, Lcom/loc/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/loc/l;->c:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/loc/t;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "amap_sdk_auth_fail"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "amap_sdk_auth_fail_type"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "amap_sdk_name"

    invoke-virtual {p1}, Lcom/loc/t;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "amap_sdk_version"

    invoke-virtual {p1}, Lcom/loc/t;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lcom/loc/bb;

    const-string v2, "core"

    const-string v3, "1.0"

    const-string v4, "O001"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/loc/bb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/loc/bb;->a(Ljava/lang/String;)V

    invoke-static {v1, p0}, Lcom/loc/bc;->a(Lcom/loc/bb;Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/loc/j; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/loc/t;Ljava/lang/String;Lcom/loc/l$a;)V
    .locals 5

    const-class v1, Lcom/loc/l;

    monitor-enter v1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/loc/l;->c:Landroid/content/Context;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/loc/l;->c:Landroid/content/Context;

    :cond_2
    invoke-virtual {p1}, Lcom/loc/t;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/loc/l;->a(Lcom/loc/t;)V

    sget-object v2, Lcom/loc/l;->l:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v2, Lcom/loc/l;->l:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_3
    sget-object v2, Lcom/loc/l;->k:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v2, Lcom/loc/l;->k:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_4
    sget-object v2, Lcom/loc/l;->j:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_5

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v2, Lcom/loc/l;->j:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_5
    sget-object v2, Lcom/loc/l;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/loc/l$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/loc/l$d;-><init>(B)V

    iput-object p1, v2, Lcom/loc/l$d;->a:Lcom/loc/t;

    iput-object p2, v2, Lcom/loc/l$d;->b:Ljava/lang/String;

    iput-object p3, v2, Lcom/loc/l$d;->c:Lcom/loc/l$a;

    sget-object v3, Lcom/loc/l;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/loc/l;->c:Landroid/content/Context;

    const-string v3, "open_common"

    invoke-static {v2, v3, v0}, Lcom/loc/x;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    sget-object v4, Lcom/loc/l;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "at"

    const-string v3, "rglc"

    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;Lcom/loc/t;Ljava/lang/String;Lcom/loc/l$b;Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Lcom/loc/l$b$a;

    invoke-direct {v1}, Lcom/loc/l$b$a;-><init>()V

    iput-boolean v0, v1, Lcom/loc/l$b$a;->a:Z

    iput-boolean v0, v1, Lcom/loc/l$b$a;->b:Z

    iput-object v1, p3, Lcom/loc/l$b;->g:Lcom/loc/l$b$a;

    :try_start_0
    const-string v2, ";"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-virtual {p4, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p3, Lcom/loc/l$b;->f:Lorg/json/JSONObject;

    invoke-virtual {p4, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "at"

    const-string v3, "co"

    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "16H"

    invoke-static {p4, v0}, Lcom/loc/u;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_1
    const-string v0, "16H"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "able"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p3, v0}, Lcom/loc/l$b;->a(Lcom/loc/l$b;Z)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    const-string v0, "11K"

    invoke-static {p4, v0}, Lcom/loc/u;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_2
    const-string v0, "11K"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "able"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/loc/l$b$a;->a:Z

    const-string v2, "off"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "off"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/l$b$a;->c:Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_2
    const-string v0, "145"

    invoke-static {p4, v0}, Lcom/loc/u;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_3
    const-string v0, "145"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p3, Lcom/loc/l$b;->a:Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_3
    const-string v0, "14D"

    invoke-static {p4, v0}, Lcom/loc/u;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_4
    const-string v0, "14D"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p3, Lcom/loc/l$b;->b:Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :cond_5
    :goto_4
    const-string v0, "151"

    invoke-static {p4, v0}, Lcom/loc/u;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :try_start_5
    const-string v0, "151"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/loc/l$b$b;

    invoke-direct {v1}, Lcom/loc/l$b$b;-><init>()V

    if-eqz v0, :cond_6

    const-string v2, "able"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/loc/l$b$b;->a:Z

    :cond_6
    iput-object v1, p3, Lcom/loc/l$b;->h:Lcom/loc/l$b$b;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    :cond_7
    :goto_5
    const-string v0, "17S"

    invoke-static {p4, v0}, Lcom/loc/u;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_6
    const-string v0, "17S"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, "able"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    sget-boolean v1, Lcom/loc/l;->e:Z

    if-eq v0, v1, :cond_8

    sput-boolean v0, Lcom/loc/l;->e:Z

    if-eqz p0, :cond_8

    const-string v1, "open_common"

    invoke-static {p0, v1}, Lcom/loc/x;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "a2"

    invoke-static {v1, v2, v0}, Lcom/loc/x;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    invoke-static {v1}, Lcom/loc/x;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    :cond_8
    :goto_6
    const-string v0, "15K"

    invoke-static {p4, v0}, Lcom/loc/u;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :try_start_7
    const-string v0, "15K"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "ucf"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/loc/l$f;->a:Z

    invoke-static {v1, v2}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "fsv2"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/loc/l$f;->b:Z

    invoke-static {v2, v3}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "usc"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/loc/l$f;->c:Z

    invoke-static {v3, v4}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "umv"

    sget v5, Lcom/loc/l$f;->d:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "ust"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-boolean v6, Lcom/loc/l$f;->e:Z

    invoke-static {v5, v6}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "ustv"

    sget v7, Lcom/loc/l$f;->f:I

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sget-boolean v6, Lcom/loc/l$f;->a:Z

    if-ne v1, v6, :cond_9

    sget-boolean v6, Lcom/loc/l$f;->b:Z

    if-ne v2, v6, :cond_9

    sget-boolean v6, Lcom/loc/l$f;->c:Z

    if-ne v3, v6, :cond_9

    sget v6, Lcom/loc/l$f;->d:I

    if-ne v4, v6, :cond_9

    sget-boolean v6, Lcom/loc/l$f;->e:Z

    if-ne v5, v6, :cond_9

    sget v6, Lcom/loc/l$f;->d:I

    if-eq v0, v6, :cond_a

    :cond_9
    sput-boolean v1, Lcom/loc/l$f;->a:Z

    sput-boolean v2, Lcom/loc/l$f;->b:Z

    sput-boolean v3, Lcom/loc/l$f;->c:Z

    sput v4, Lcom/loc/l$f;->d:I

    sput-boolean v5, Lcom/loc/l$f;->e:Z

    sput v0, Lcom/loc/l$f;->f:I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    :try_start_8
    const-string v0, "open_common"

    invoke-static {p0, v0}, Lcom/loc/x;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ucf"

    sget-boolean v2, Lcom/loc/l$f;->a:Z

    invoke-static {v0, v1, v2}, Lcom/loc/x;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    const-string v1, "fsv2"

    sget-boolean v2, Lcom/loc/l$f;->b:Z

    invoke-static {v0, v1, v2}, Lcom/loc/x;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    const-string v1, "usc"

    sget-boolean v2, Lcom/loc/l$f;->c:Z

    invoke-static {v0, v1, v2}, Lcom/loc/x;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    const-string v1, "umv"

    sget v2, Lcom/loc/l$f;->d:I

    invoke-static {v0, v1, v2}, Lcom/loc/x;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    const-string v1, "ust"

    sget-boolean v2, Lcom/loc/l$f;->e:Z

    invoke-static {v0, v1, v2}, Lcom/loc/x;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    const-string v1, "ustv"

    sget v2, Lcom/loc/l$f;->f:I

    invoke-static {v0, v1, v2}, Lcom/loc/x;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/loc/x;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_9

    :cond_a
    :goto_7
    const-string v0, "183"

    invoke-static {p4, v0}, Lcom/loc/u;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :try_start_9
    const-string v0, "183"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/loc/as;->a(Lcom/loc/t;Lorg/json/JSONObject;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8

    :cond_b
    :goto_8
    return-void

    :catch_1
    move-exception v0

    const-string v2, "AuthConfigManager"

    const-string v3, "load 16H"

    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    const-string v1, "AuthConfigManager"

    const-string v2, "load 11K"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    const-string v1, "AuthConfigManager"

    const-string v2, "load 145"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_4
    move-exception v0

    const-string v1, "AuthConfigManager"

    const-string v2, "load 14D"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_5
    move-exception v0

    const-string v1, "AuthConfigManager"

    const-string v2, "load 151"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_6
    move-exception v0

    const-string v1, "AuthConfigManager"

    const-string v2, "load 17S"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_7
    move-exception v0

    const-string v1, "AuthConfigManager"

    const-string v2, "load 15K"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_8
    move-exception v0

    const-string v1, "AuthConfigManager"

    const-string v2, "load 183"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_9
    move-exception v0

    goto :goto_7
.end method

.method private static a(Landroid/content/Context;Lcom/loc/t;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/loc/l;->a(Landroid/content/Context;Lcom/loc/t;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/loc/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/loc/t;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/loc/t;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/loc/t;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/loc/t;->b()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/loc/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/loc/v;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-class v1, Lcom/loc/l;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/loc/l;->k:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/loc/l;->k:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_2
    sget-object v0, Lcom/loc/l;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/loc/l;->l:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/l;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/loc/as;->a(ZLjava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/loc/ab;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/loc/l$1;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/loc/l$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "at"

    const-string v3, "lca"

    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;ZZZJ)V
    .locals 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/loc/l;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "url"

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "downLevel"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ant"

    sget-object v0, Lcom/loc/l;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/n;->q(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0"

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    if-eqz p1, :cond_3

    const-string v0, "6"

    :goto_2
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "status"

    if-eqz p3, :cond_4

    const-string v0, "0"

    :goto_3
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "duration"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lcom/loc/bb;

    sget-object v2, Lcom/loc/l;->c:Landroid/content/Context;

    const-string v3, "core"

    const-string v4, "1.0"

    const-string v5, "O002"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/loc/bb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/loc/bb;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/loc/l;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/loc/bc;->a(Lcom/loc/bb;Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/loc/j; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const-string v0, "1"

    goto :goto_1

    :cond_3
    const-string v0, "4"

    goto :goto_2

    :cond_4
    const-string v0, "1"

    goto :goto_3
.end method

.method public static a()Z
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/loc/l;->c:Landroid/content/Context;

    if-eqz v0, :cond_a

    :try_start_0
    sget-object v0, Lcom/loc/l;->c:Landroid/content/Context;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/loc/l;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/n;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/loc/l;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/loc/l;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/loc/l;->i:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/loc/l;->c()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    :goto_1
    return v0

    :cond_1
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sput-object v0, Lcom/loc/l;->h:Ljava/lang/String;

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/loc/l;->i:J

    sget-object v0, Lcom/loc/l;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InterfaceAddress;

    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v7, v0, Ljava/net/Inet6Address;

    if-eqz v7, :cond_6

    check-cast v0, Ljava/net/Inet6Address;

    invoke-static {v0}, Lcom/loc/l;->a(Ljava/net/InetAddress;)Z

    move-result v0

    if-nez v0, :cond_e

    or-int/lit8 v0, v1, 0x2

    :goto_4
    move v1, v0

    goto :goto_3

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Lcom/loc/l;->i:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    goto :goto_0

    :cond_6
    instance-of v7, v0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_4

    check-cast v0, Ljava/net/Inet4Address;

    invoke-static {v0}, Lcom/loc/l;->a(Ljava/net/InetAddress;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v7, "FMTkyLjE2OC40My4"

    invoke-static {v7}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    or-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_3

    if-eqz v5, :cond_8

    const-string v0, "wlan"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/loc/l;->g:Ljava/util/Map;

    const-string v5, "WIFI"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const-string v1, "at"

    const-string v4, "ipstack"

    invoke-static {v0, v1, v4}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    if-eqz v5, :cond_3

    :try_start_2
    const-string v0, "rmnet"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/loc/l;->g:Ljava/util/Map;

    const-string v5, "MOBILE"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :cond_9
    invoke-static {}, Lcom/loc/l;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    goto/16 :goto_1

    :cond_a
    sget-boolean v0, Lcom/loc/l;->e:Z

    if-nez v0, :cond_b

    move v0, v2

    goto/16 :goto_1

    :cond_b
    sget-object v0, Lcom/loc/l;->c:Landroid/content/Context;

    const-string v1, "IPV6_CONFIG_NAME"

    invoke-static {v0, v1}, Lcom/loc/l;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/loc/l$e;

    move-result-object v0

    if-nez v0, :cond_c

    move v0, v2

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v0}, Lcom/loc/l$e;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_d

    move v0, v3

    goto/16 :goto_1

    :cond_d
    move v0, v2

    goto/16 :goto_1

    :cond_e
    move v0, v1

    goto/16 :goto_4
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const-class v2, Lcom/loc/l;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    return v0

    :cond_1
    :try_start_1
    sget-object v1, Lcom/loc/l;->l:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/loc/l;->k:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x8

    invoke-direct {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lcom/loc/l;->k:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_2
    sget-object v1, Lcom/loc/l;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/loc/l;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/loc/l;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "at"

    const-string v4, "cslct"

    invoke-static {v1, v3, v4}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;J)Z
    .locals 9

    const/4 v1, 0x0

    const-class v4, Lcom/loc/l;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v4

    return v1

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/loc/l;->c(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-lez v0, :cond_2

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/loc/l;->k:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/loc/l;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/loc/l;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    sub-long v2, v6, v2

    const-wide/16 v6, 0x7530

    cmp-long v0, v2, v6

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return p1

    :cond_0
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    rem-int/lit8 v1, v1, 0x2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v0, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/net/InetAddress;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/loc/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/loc/l$b;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/loc/t;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/loc/l$b;"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    new-instance v7, Lcom/loc/l$b;

    invoke-direct {v7}, Lcom/loc/l$b;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, v7, Lcom/loc/l$b;->f:Lorg/json/JSONObject;

    sget-object v0, Lcom/loc/p$a;->a:Lcom/loc/p;

    invoke-virtual {v0, p0}, Lcom/loc/p;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/loc/l;->b(Landroid/content/Context;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/loc/l;->c:Landroid/content/Context;

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/loc/l;->a(Lcom/loc/t;)V

    new-instance v0, Lcom/loc/aq;

    invoke-direct {v0}, Lcom/loc/aq;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lcom/loc/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6

    move-result v11

    if-nez v11, :cond_10

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";15K;16H;17I;17S;183"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lcom/loc/j; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    :goto_0
    :try_start_2
    new-instance v0, Lcom/loc/l$c;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/loc/l$c;-><init>(Landroid/content/Context;Lcom/loc/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/loc/l$c;->a()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/loc/aq;->a(Lcom/loc/av;Z)Lcom/loc/aw;
    :try_end_2
    .catch Lcom/loc/j; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_c

    move-result-object v1

    if-eqz v11, :cond_1

    move-object v0, v7

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    throw v0
    :try_end_3
    .catch Lcom/loc/j; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    :catch_1
    move-exception v0

    move-object v1, v8

    move-object v2, v9

    move-object v3, p2

    :goto_3
    invoke-virtual {v0}, Lcom/loc/j;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lcom/loc/l$b;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/loc/j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p1, v4}, Lcom/loc/l;->a(Landroid/content/Context;Lcom/loc/t;Ljava/lang/String;)V

    const-string v4, "/v3/iasdkauth"

    invoke-static {p1, v4, v0}, Lcom/loc/ab;->a(Lcom/loc/t;Ljava/lang/String;Lcom/loc/j;)V

    move-object v0, v10

    move-object v6, v3

    :goto_4
    if-nez v2, :cond_3

    move-object v0, v7

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_5
    :try_start_4
    new-instance v0, Lcom/loc/j;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lcom/loc/j; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    :catch_3
    move-exception v0

    move-object v1, v8

    move-object v2, v9

    move-object v3, p2

    :goto_6
    invoke-static {p0, p1, v0}, Lcom/loc/l;->a(Landroid/content/Context;Lcom/loc/t;Ljava/lang/Throwable;)V

    move-object v0, v10

    move-object v6, v3

    goto :goto_4

    :cond_1
    if-eqz v1, :cond_f

    :try_start_5
    iget-object v2, v1, Lcom/loc/aw;->a:[B
    :try_end_5
    .catch Lcom/loc/j; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_a

    :try_start_6
    iget-object v0, v1, Lcom/loc/aw;->b:Ljava/util/Map;

    if-eqz v0, :cond_2

    const-string v4, "lct"

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "lct"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v7, Lcom/loc/l$b;->e:J

    if-eqz p1, :cond_2

    iget-wide v4, v7, Lcom/loc/l$b;->e:J

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/loc/t;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-wide v4, v7, Lcom/loc/l$b;->e:J

    invoke-static {v0, v4, v5}, Lcom/loc/l;->b(Ljava/lang/String;J)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/loc/j; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_6 .. :try_end_6} :catch_e

    :cond_2
    :goto_7
    const/16 v0, 0x10

    :try_start_7
    new-array v0, v0, [B

    array-length v4, v2

    add-int/lit8 v4, v4, -0x10

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x10

    invoke-static {v2, v5, v0, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x10

    const/4 v6, 0x0

    array-length v8, v2

    add-int/lit8 v8, v8, -0x10

    invoke-static {v2, v5, v4, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "EQUVT"

    invoke-static {v6}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "CQUVTL0NCQy9QS0NTNVBhZGRpbmc"

    invoke-static {v0}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/loc/u;->c()[B

    move-result-object v8

    invoke-direct {v6, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v8, 0x2

    invoke-virtual {v0, v8, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/u;->a([B)Ljava/lang/String;

    move-result-object v0

    move-object v6, v3

    goto/16 :goto_4

    :catch_4
    move-exception v0

    const-string v4, "at"

    const-string v5, "lct"

    invoke-static {v0, v4, v5}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/loc/j; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_b

    goto :goto_7

    :catch_5
    move-exception v0

    goto/16 :goto_3

    :catch_6
    move-exception v0

    move-object v1, v8

    move-object v2, v9

    move-object v3, p2

    :goto_8
    const-string v4, "at"

    const-string v5, "lc"

    invoke-static {v0, v4, v5}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/loc/l;->a(Landroid/content/Context;Lcom/loc/t;Ljava/lang/Throwable;)V

    move-object v0, v10

    move-object v6, v3

    goto/16 :goto_4

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2}, Lcom/loc/u;->a([B)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "result is null"

    invoke-static {p0, p1, v2}, Lcom/loc/l;->a(Landroid/content/Context;Lcom/loc/t;Ljava/lang/String;)V

    :cond_5
    :try_start_8
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "status"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    const/4 v0, 0x1

    sput v0, Lcom/loc/l;->a:I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    :cond_6
    :try_start_9
    const-string v0, "ver"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "ver"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v7, Lcom/loc/l$b;->d:I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    :cond_7
    :goto_9
    :try_start_a
    const-string v0, "result"

    invoke-static {v8, v0}, Lcom/loc/u;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "result"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, p1, v6, v7, v0}, Lcom/loc/l;->a(Landroid/content/Context;Lcom/loc/t;Ljava/lang/String;Lcom/loc/l$b;Lorg/json/JSONObject;)V

    const-string v1, "17I"

    invoke-static {v0, v1}, Lcom/loc/u;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "17I"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "na"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "aa"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v2, Lcom/loc/v;->d:Z

    sput-boolean v1, Lcom/loc/v;->e:Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_8

    :cond_8
    :try_start_b
    const-string v1, "15K"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "isTargetAble"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "able"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/loc/p$a;->a:Lcom/loc/p;

    invoke-static {p0}, Lcom/loc/p;->b(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_9

    :cond_9
    :goto_a
    move-object v0, v7

    goto/16 :goto_1

    :cond_a
    if-nez v0, :cond_6

    :try_start_c
    const-string v4, "authcsid"

    const-string v3, "authgsid"

    if-eqz v1, :cond_b

    iget-object v4, v1, Lcom/loc/aw;->c:Ljava/lang/String;

    iget-object v3, v1, Lcom/loc/aw;->d:Ljava/lang/String;

    :cond_b
    invoke-static {p0, v4, v3, v8}, Lcom/loc/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    sput v0, Lcom/loc/l;->a:I

    const-string v0, "info"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "info"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/l;->b:Ljava/lang/String;

    :cond_c
    const-string v5, ""

    const-string v0, "infocode"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "infocode"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_d
    const-string v1, "/v3/iasdkauth"

    sget-object v2, Lcom/loc/l;->b:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/loc/ab;->a(Lcom/loc/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/loc/l;->a:I

    if-nez v0, :cond_6

    sget-object v0, Lcom/loc/l;->b:Ljava/lang/String;

    iput-object v0, v7, Lcom/loc/l$b;->c:Ljava/lang/String;

    move-object v0, v7

    goto/16 :goto_1

    :catch_7
    move-exception v0

    const-string v1, "at"

    const-string v2, "lc"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_9

    :catch_8
    move-exception v0

    const-string v1, "at"

    const-string v2, "lc"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_e
    :try_start_d
    sget-object v0, Lcom/loc/p$a;->a:Lcom/loc/p;

    invoke-virtual {v0, p0, v1}, Lcom/loc/p;->a(Landroid/content/Context;Z)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_a

    :catch_9
    move-exception v0

    goto :goto_a

    :catch_a
    move-exception v0

    move-object v2, v9

    goto/16 :goto_8

    :catch_b
    move-exception v0

    goto/16 :goto_8

    :catch_c
    move-exception v0

    move-object v1, v8

    move-object v2, v9

    goto/16 :goto_6

    :catch_d
    move-exception v0

    move-object v2, v9

    goto/16 :goto_6

    :catch_e
    move-exception v0

    goto/16 :goto_6

    :catch_f
    move-exception v0

    move-object v2, v9

    goto/16 :goto_3

    :catch_10
    move-exception v0

    move-object p2, v3

    goto/16 :goto_5

    :catch_11
    move-exception v0

    move-object p2, v3

    goto/16 :goto_2

    :cond_f
    move-object v2, v9

    goto/16 :goto_7

    :cond_10
    move-object v3, p2

    goto/16 :goto_0
.end method

.method private static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)Lcom/loc/l$e;
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-class v3, Lcom/loc/l;

    monitor-enter v3

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    :goto_0
    sget-object v0, Lcom/loc/l;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    sget-object v0, Lcom/loc/l;->f:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/l$e;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/loc/l$e;->c(Lcom/loc/l$e;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    if-eqz v0, :cond_2

    :goto_2
    monitor-exit v3

    return-object v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    if-nez p0, :cond_3

    move-object v0, v1

    goto :goto_2

    :cond_3
    :try_start_1
    new-instance v0, Lcom/loc/x;

    invoke-direct {v0, p1}, Lcom/loc/x;-><init>(Ljava/lang/String;)V

    const-string v1, "i"

    invoke-virtual {v0, p0, v1}, Lcom/loc/x;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/l$e;->b(Ljava/lang/String;)Lcom/loc/l$e;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v1, "yyyyMMdd"

    invoke-static {v4, v5, v1}, Lcom/loc/u;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_4

    new-instance v0, Lcom/loc/l$e;

    const-string v2, "IPV6_CONFIG_NAME"

    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v4}, Lcom/loc/l$e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    invoke-static {v0}, Lcom/loc/l$e;->a(Lcom/loc/l$e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0, v1}, Lcom/loc/l$e;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/loc/l$e;->b(Lcom/loc/l$e;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_5
    sget-object v1, Lcom/loc/l;->f:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "open_common"

    const-string v1, "a2"

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/loc/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/loc/l;->e:Z

    goto :goto_0
.end method

.method public static declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/loc/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/loc/l;->k:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/loc/l;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/l;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized b(Ljava/lang/String;J)V
    .locals 5

    const-class v1, Lcom/loc/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/loc/l;->l:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/l;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/loc/l;->j:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/loc/l;->j:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_2
    sget-object v0, Lcom/loc/l;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/loc/l;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/l;->c:Landroid/content/Context;

    const-string v2, "open_common"

    invoke-static {v0, v2}, Lcom/loc/x;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/loc/x;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/loc/x;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "at"

    const-string v3, "ucut"

    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;Z)V
    .locals 4

    const-class v0, Lcom/loc/l;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, p1, v1, v2, v3}, Lcom/loc/l;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b()Z
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lcom/loc/l;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/loc/l;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/n;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/loc/l;->g:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized c(Ljava/lang/String;)J
    .locals 4

    const-class v2, Lcom/loc/l;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/loc/l;->j:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/loc/l;->j:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    sget-object v0, Lcom/loc/l;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/loc/l;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    :goto_0
    monitor-exit v2

    return-wide v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "at"

    const-string v3, "glcut"

    invoke-static {v0, v1, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static c()Z
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lcom/loc/l;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/loc/l;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/n;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/loc/l;->g:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static d()V
    .locals 4

    sget-boolean v0, Lcom/loc/l;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/loc/l;->d:Z

    sget-object v0, Lcom/loc/l;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/loc/p$a;->a:Lcom/loc/p;

    sget-object v2, Lcom/loc/l;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/loc/p;->a(Landroid/content/Context;)V

    sget-object v1, Lcom/loc/l;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/l;->b(Landroid/content/Context;)V

    const-string v1, "open_common"

    const-string v2, "ucf"

    sget-boolean v3, Lcom/loc/l$f;->a:Z

    invoke-static {v0, v1, v2, v3}, Lcom/loc/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/loc/l$f;->a:Z

    const-string v1, "open_common"

    const-string v2, "fsv2"

    sget-boolean v3, Lcom/loc/l$f;->b:Z

    invoke-static {v0, v1, v2, v3}, Lcom/loc/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/loc/l$f;->b:Z

    const-string v1, "open_common"

    const-string v2, "usc"

    sget-boolean v3, Lcom/loc/l$f;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/loc/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/loc/l$f;->c:Z

    const-string v1, "open_common"

    const-string v2, "umv"

    sget v3, Lcom/loc/l$f;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/loc/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/loc/l$f;->d:I

    const-string v1, "open_common"

    const-string v2, "ust"

    sget-boolean v3, Lcom/loc/l$f;->e:Z

    invoke-static {v0, v1, v2, v3}, Lcom/loc/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/loc/l$f;->e:Z

    const-string v1, "open_common"

    const-string v2, "ustv"

    sget v3, Lcom/loc/l$f;->f:I

    invoke-static {v0, v1, v2, v3}, Lcom/loc/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/loc/l$f;->f:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic e()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/loc/l;->l:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method
