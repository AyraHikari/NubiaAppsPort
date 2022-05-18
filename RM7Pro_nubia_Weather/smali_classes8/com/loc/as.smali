.class public final Lcom/loc/as;
.super Ljava/lang/Object;
.source "HttpLimitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/as$a;,
        Lcom/loc/as$c;,
        Lcom/loc/as$b;
    }
.end annotation


# static fields
.field public static volatile a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/loc/as$c;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/loc/as$b;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/Random;

.field private static e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/loc/bb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x8

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/loc/as;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/loc/as;->b:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/loc/as;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/loc/as;->d:Ljava/util/Random;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/loc/as;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/loc/as;->f:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/loc/aw;
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/loc/as;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/loc/as;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "app"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/loc/as;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "app"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/as$b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/loc/as$b;->b:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    iget-object v0, v0, Lcom/loc/as$b;->a:Lcom/loc/aw;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/loc/aw;->e:Z

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v2, p2, p0, v3}, Lcom/loc/as;->a(ZLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/loc/as;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "app"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    goto :goto_0

    :cond_5
    move-object p1, p0

    goto :goto_2

    :cond_6
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/loc/as;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/loc/as;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/as$b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/loc/as$b;->b:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_8

    iget-object v0, v0, Lcom/loc/as$b;->a:Lcom/loc/aw;

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/loc/aw;->e:Z

    :cond_7
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v2, p2, p0, v3}, Lcom/loc/as;->a(ZLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/loc/as;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/j;
        }
    .end annotation

    const-class v1, Lcom/loc/as;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lcom/loc/j; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-object p0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/loc/l;->c:Landroid/content/Context;
    :try_end_1
    .catch Lcom/loc/j; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v2, Lcom/loc/as;->b:Ljava/util/List;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/loc/as;->b:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/loc/j; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    if-nez v0, :cond_4

    :cond_3
    :goto_1
    :try_start_3
    sget-object v0, Lcom/loc/as;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/as;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/loc/as;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/as;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/as$c;

    if-eqz v0, :cond_0

    invoke-static {p0, v0, p1}, Lcom/loc/as;->a(Ljava/lang/String;Lcom/loc/as$c;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Lcom/loc/j;

    const-string v2, "\u670d\u52a1QPS\u8d85\u9650"

    invoke-direct {v0, v2}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lcom/loc/j; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    :try_start_6
    sget-object v2, Lcom/loc/as;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/loc/as;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Yb3Blbl9odHRwX2NvbnRyb2w"

    invoke-static {v0, v2, p1}, Lcom/loc/x;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/loc/as;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/loc/j; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_7
    const-string v2, "hlUtil"

    const-string v3, "llhl"

    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/loc/j; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_8
    const-string v2, "hlUtil"

    const-string v3, "pcr"

    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    :cond_5
    :try_start_9
    invoke-static {p0, v0, p1}, Lcom/loc/as;->b(Ljava/lang/String;Lcom/loc/as$c;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Lcom/loc/j; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static a()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/loc/l;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/loc/as;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/loc/bc;->a(Ljava/util/List;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Lcom/loc/as$c;Lorg/json/JSONObject;)V
    .locals 7

    :try_start_0
    const-string v0, "domainMap"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/util/HashMap;

    const/16 v0, 0x8

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput-object v3, p0, Lcom/loc/as$c;->b:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "hlUtil"

    const-string v2, "pdr"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/loc/t;Lorg/json/JSONObject;)V
    .locals 5

    const-class v1, Lcom/loc/as;

    monitor-enter v1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/loc/t;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_2

    invoke-static {v0}, Lcom/loc/as;->a(Ljava/lang/String;)V

    :cond_2
    const-string v2, "able"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/loc/as;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "hlUtil"

    const-string v3, "par"

    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_2
    sget-object v2, Lcom/loc/l;->c:Landroid/content/Context;

    const-string v3, "Yb3Blbl9odHRwX2NvbnRyb2w"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v0, v4}, Lcom/loc/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/loc/as;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    const-class v1, Lcom/loc/as;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/loc/as;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/as;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/loc/l;->c:Landroid/content/Context;

    const-string v2, "Yb3Blbl9odHRwX2NvbnRyb2w"

    invoke-static {v0, v2}, Lcom/loc/x;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/loc/x;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/loc/x;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "hlUtil"

    const-string v3, "rc"

    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 14

    const/4 v1, 0x0

    :try_start_0
    new-instance v4, Lcom/loc/as$c;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/loc/as$c;-><init>(B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "block"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    if-nez v5, :cond_0

    :goto_0
    :try_start_2
    invoke-static {v4, p1}, Lcom/loc/as;->a(Lcom/loc/as$c;Lorg/json/JSONObject;)V

    iget-object v0, v4, Lcom/loc/as$c;->b:Ljava/util/Map;

    if-nez v0, :cond_6

    iget-object v0, v4, Lcom/loc/as$c;->a:Ljava/util/Map;

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/loc/as;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-void

    :cond_0
    :try_start_3
    new-instance v6, Ljava/util/HashMap;

    const/16 v0, 0x8

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    move v3, v1

    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_5

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_4

    const-string v0, "api"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_3
    const-string v0, "periods"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v5, :cond_4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_4
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v0, v9, :cond_3

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_2

    new-instance v10, Lcom/loc/as$a;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/loc/as$a;-><init>(B)V

    const-string v11, "begin"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/loc/as$a;->a:Ljava/lang/String;

    const-string v11, "duration"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/loc/as$a;->b:I

    const-string v11, "percent"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    iput-wide v12, v10, Lcom/loc/as$a;->c:D

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    invoke-virtual {v6, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    :cond_5
    iput-object v6, v4, Lcom/loc/as$c;->a:Ljava/util/Map;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "hlUtil"

    const-string v2, "pbr"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :cond_6
    :try_start_5
    sget-object v0, Lcom/loc/as;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/loc/as;->a:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_7
    sget-object v0, Lcom/loc/as;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :try_start_6
    const-string v1, "hlUtil"

    const-string v2, "ucr"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    :cond_8
    move-object v2, v0

    goto :goto_3
.end method

.method public static a(Ljava/net/URL;Lcom/loc/aw;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    :try_start_0
    sget-object v0, Lcom/loc/as;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/loc/as;->c:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    iget-object v0, p1, Lcom/loc/aw;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/loc/aw;->b:Ljava/util/Map;

    const-string v1, "nb"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/loc/aw;->b:Ljava/util/Map;

    const-string v1, "nb"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lt v1, v9, :cond_1

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    new-instance v3, Lcom/loc/as$b;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/loc/as$b;-><init>(B)V

    iput-object p1, v3, Lcom/loc/as$b;->a:Lcom/loc/aw;

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_3

    const-wide/16 v0, 0x1e

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    add-long/2addr v0, v4

    iput-wide v0, v3, Lcom/loc/as$b;->b:J

    if-ne v2, v8, :cond_4

    sget-object v0, Lcom/loc/as;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "app"

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    if-ne v2, v9, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/loc/as;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static a(ZLjava/lang/String;)V
    .locals 6

    :try_start_0
    sget-object v0, Lcom/loc/l;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_2

    const-string v2, "type"

    sget-object v3, Lcom/loc/v;->g:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "version"

    invoke-static {p1}, Lcom/loc/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/loc/bb;

    const-string v3, "core"

    const-string v4, "4.1.0"

    const-string v5, "O005"

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/loc/bb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/loc/bb;->a(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/loc/bc;->a(Lcom/loc/bb;Landroid/content/Context;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const-string v2, "type"

    sget-object v3, Lcom/loc/v;->f:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private static a(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    :try_start_0
    sget-object v0, Lcom/loc/l;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/loc/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p0, :cond_4

    const-string v3, "type"

    sget-object v4, Lcom/loc/v;->i:Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string v3, "name"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uri"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "blockLevel"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/loc/bb;

    const-string v3, "core"

    const-string v4, "4.1.0"

    const-string v5, "O005"

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/loc/bb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/loc/bb;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/loc/as;->f:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/loc/as;->f:Ljava/util/List;

    :cond_2
    sget-object v1, Lcom/loc/as;->f:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/loc/as;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/loc/as;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xf

    if-lt v0, v2, :cond_3

    invoke-static {}, Lcom/loc/as;->a()V

    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    const-string v3, "type"

    sget-object v4, Lcom/loc/v;->h:Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Lcom/loc/as$c;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p1, Lcom/loc/as$c;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const-string v3, "*"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/loc/as;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-static {v0, p2, p0, v3}, Lcom/loc/as;->a(ZLjava/lang/String;Ljava/lang/String;I)V

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/loc/as;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v3, 0x2

    invoke-static {v0, p2, p0, v3}, Lcom/loc/as;->a(ZLjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "hlUtil"

    const-string v3, "inb"

    invoke-static {v0, v1, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/as$a;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/as$a;

    if-eqz v0, :cond_5

    iget-wide v4, v0, Lcom/loc/as$a;->c:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, v0, Lcom/loc/as$a;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    iget v6, v0, Lcom/loc/as$a;->b:I

    if-lez v6, :cond_5

    iget-object v6, v0, Lcom/loc/as$a;->a:Ljava/lang/String;

    const-string v7, "HH:mm:ss"

    invoke-static {v6, v7}, Lcom/loc/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_5

    iget v8, v0, Lcom/loc/as$a;->b:I

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    iget-wide v6, v0, Lcom/loc/as$a;->c:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_3

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/loc/as;->d:Ljava/util/Random;

    if-nez v6, :cond_4

    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    sput-object v6, Lcom/loc/as;->d:Ljava/util/Random;

    :cond_4
    sget-object v6, Lcom/loc/as;->d:Ljava/util/Random;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->hashCode()I

    move-result v7

    int-to-long v8, v7

    add-long/2addr v4, v8

    invoke-virtual {v6, v4, v5}, Ljava/util/Random;->setSeed(J)V

    sget-object v4, Lcom/loc/as;->d:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    iget-wide v6, v0, Lcom/loc/as$a;->c:D

    cmpl-double v0, v4, v6

    if-lez v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Lcom/loc/as$c;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    :try_start_0
    iget-object v0, p1, Lcom/loc/as$c;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    :try_start_1
    sget-object v1, Lcom/loc/l;->c:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/loc/as;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v3, Lcom/loc/as;->e:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_2
    sget-object v3, Lcom/loc/as;->e:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object v4, Lcom/loc/as;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    :try_start_4
    sget-object v4, Lcom/loc/as;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "type"

    sget-object v5, Lcom/loc/v;->j:Ljava/lang/Integer;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "name"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "version"

    invoke-static {p2}, Lcom/loc/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "domain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "#"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/loc/bb;

    const-string v3, "core"

    const-string v4, "4.1.0"

    const-string v5, "O005"

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/loc/bb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/loc/bb;->a(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/loc/bc;->a(Lcom/loc/bb;Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "hlUtil"

    const-string v2, "pdr"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/loc/bb;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/loc/as;->f:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v0, Lcom/loc/as;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/as;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lcom/loc/as;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/loc/as;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method
