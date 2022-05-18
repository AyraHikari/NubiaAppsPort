.class public final Lcom/loc/ee;
.super Ljava/lang/Object;
.source "LocNetManager.java"


# static fields
.field private static b:Lcom/loc/ee;


# instance fields
.field a:Lcom/loc/aq;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Z

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/ee;->b:Lcom/loc/ee;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/ee;->a:Lcom/loc/aq;

    iput-object v0, p0, Lcom/loc/ee;->c:Landroid/content/Context;

    sget v0, Lcom/loc/ej;->g:I

    iput v0, p0, Lcom/loc/ee;->d:I

    iput-boolean v1, p0, Lcom/loc/ee;->e:Z

    iput v1, p0, Lcom/loc/ee;->f:I

    :try_start_0
    invoke-static {}, Lcom/loc/p;->a()Lcom/loc/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/p;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p1, p0, Lcom/loc/ee;->c:Landroid/content/Context;

    invoke-static {}, Lcom/loc/aq;->a()Lcom/loc/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ee;->a:Lcom/loc/aq;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/loc/ee;
    .locals 1

    sget-object v0, Lcom/loc/ee;->b:Lcom/loc/ee;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/ee;

    invoke-direct {v0, p0}, Lcom/loc/ee;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/loc/ee;->b:Lcom/loc/ee;

    :cond_0
    sget-object v0, Lcom/loc/ee;->b:Lcom/loc/ee;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/loc/ee;->d:I

    return v0
.end method

.method public final a(Lcom/loc/ef;)Lcom/loc/aw;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/loc/ee;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/ee;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/ep;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/loc/aq;->a(Lcom/loc/av;Z)Lcom/loc/aw;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/loc/ef;I)Lcom/loc/aw;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/loc/ee;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/ee;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/ep;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0, p2}, Lcom/loc/aq;->a(Lcom/loc/av;ZI)Lcom/loc/aw;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Z)Lcom/loc/ef;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    const/16 v0, 0x10

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    new-instance v0, Lcom/loc/ef;

    invoke-static {}, Lcom/loc/ej;->c()Lcom/loc/t;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Lcom/loc/ef;-><init>(Landroid/content/Context;Lcom/loc/t;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gzipped"

    const-string v3, "1"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Connection"

    const-string v3, "Keep-Alive"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "User-Agent"

    const-string v3, "AMAP_Location_SDK_Android 5.2.0"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KEY"

    invoke-static {p1}, Lcom/loc/k;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "enginever"

    const-string v3, "5.1"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/loc/m;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "key="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/loc/k;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcom/loc/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ts"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "scode"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "encr"

    const-string v3, "1"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v0, Lcom/loc/ef;->f:Ljava/util/Map;

    const-string v1, "loc"

    if-nez p5, :cond_0

    const-string v1, "locf"

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/loc/ef;->n:Z

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "5.2.0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/ef;->l:Ljava/lang/String;

    iput-boolean p5, v0, Lcom/loc/ef;->k:Z

    iput-object p3, v0, Lcom/loc/ef;->g:Ljava/lang/String;

    iput-object p4, v0, Lcom/loc/ef;->h:Ljava/lang/String;

    invoke-static {p2}, Lcom/loc/ep;->a([B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/loc/ef;->i:[B

    invoke-static {p1}, Lcom/loc/s;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/ef;->a(Ljava/net/Proxy;)V

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "output"

    const-string v3, "bin"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "policy"

    const-string v3, "3103"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/loc/ee;->f:I

    packed-switch v2, :pswitch_data_0

    const-string v2, "custom"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iput-object v1, v0, Lcom/loc/ef;->m:Ljava/util/Map;

    iget v1, p0, Lcom/loc/ee;->d:I

    invoke-virtual {v0, v1}, Lcom/loc/ef;->a(I)V

    iget v1, p0, Lcom/loc/ee;->d:I

    invoke-virtual {v0, v1}, Lcom/loc/ef;->b(I)V

    iget-boolean v1, p0, Lcom/loc/ee;->e:Z

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/loc/ep;->k(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "http:"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/loc/ef;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https:"

    const-string v3, "https:"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/ef;->g:Ljava/lang/String;

    :cond_2
    :goto_1
    return-object v0

    :pswitch_0
    const-string v2, "custom"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :pswitch_1
    const-string v2, "custom"

    const-string v3, "language:cn"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    const-string v2, "custom"

    const-string v3, "language:en"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Landroid/content/Context;DD)Ljava/lang/String;
    .locals 10

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    const/16 v0, 0x10

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    new-instance v4, Lcom/loc/ef;

    invoke-static {}, Lcom/loc/ej;->c()Lcom/loc/t;

    move-result-object v0

    invoke-direct {v4, p1, v0}, Lcom/loc/ef;-><init>(Landroid/content/Context;Lcom/loc/t;)V

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    const-string v0, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Connection"

    const-string v2, "Keep-Alive"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "User-Agent"

    const-string v2, "AMAP_Location_SDK_Android 5.2.0"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/util/HashMap;

    const/16 v0, 0x10

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "custom"

    const-string v2, "26260A1F00020002"

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key"

    invoke-static {p1}, Lcom/loc/k;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/loc/ee;->f:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "language"

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {}, Lcom/loc/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Lcom/loc/u;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/loc/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "ts"

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "scode"

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "output=json&radius=1000&extensions=all&location="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    array-length v6, v0

    invoke-static {v6}, Lcom/loc/u;->a(I)[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v4, Lcom/loc/ef;->j:[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, v4, Lcom/loc/ef;->n:Z

    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/loc/ef;->k:Z

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "5.2.0"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "loc"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/loc/ef;->l:Ljava/lang/String;

    iput-object v5, v4, Lcom/loc/ef;->m:Ljava/util/Map;

    iput-object v3, v4, Lcom/loc/ef;->f:Ljava/util/Map;

    invoke-static {p1}, Lcom/loc/s;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/loc/ef;->a(Ljava/net/Proxy;)V

    sget v0, Lcom/loc/ej;->g:I

    invoke-virtual {v4, v0}, Lcom/loc/ef;->a(I)V

    sget v0, Lcom/loc/ej;->g:I

    invoke-virtual {v4, v0}, Lcom/loc/ef;->b(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    const-string v0, "http://restsdk.amap.com/v3/geocode/regeo"

    const-string v2, "http://dualstack-restsdk.amap.com/v3/geocode/regeo"

    iput-object v2, v4, Lcom/loc/ef;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/ep;->k(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "http:"

    const-string v3, "https:"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/loc/ef;->g:Ljava/lang/String;

    invoke-static {v4}, Lcom/loc/aq;->a(Lcom/loc/av;)[B

    move-result-object v0

    move-object v2, v0

    :goto_2
    new-instance v0, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    :goto_3
    return-object v0

    :pswitch_0
    :try_start_6
    const-string v0, "language"

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :pswitch_1
    const-string v0, "language"

    const-string v2, "zh-CN"

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "language"

    const-string v2, "en"

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v1

    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_1

    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_2

    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    :cond_2
    :goto_6
    :try_start_b
    throw v0

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_6

    :cond_3
    :try_start_c
    iput-object v0, v4, Lcom/loc/ef;->g:Ljava/lang/String;

    invoke-static {v4}, Lcom/loc/aq;->b(Lcom/loc/av;)[B
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :catch_5
    move-exception v0

    :try_start_d
    const-string v2, "LocNetManager"

    const-string v3, "post"

    invoke-static {v0, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(JZI)V
    .locals 3

    :try_start_0
    iput-boolean p3, p0, Lcom/loc/ee;->e:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/loc/p;->a()Lcom/loc/p;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/loc/p;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/loc/ee;->d:I

    iput p4, p0, Lcom/loc/ee;->f:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocNetManager"

    const-string v2, "setOption"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
