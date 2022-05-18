.class public final Lcom/loc/dx;
.super Ljava/lang/Object;
.source "WifiManagerWrapper.java"


# static fields
.field static d:J

.field static e:J

.field static f:J

.field public static g:J

.field static h:J

.field public static s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static t:J

.field static u:I

.field public static w:J


# instance fields
.field private A:Lcom/loc/do;

.field a:Landroid/net/wifi/WifiManager;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/dd;",
            ">;"
        }
    .end annotation
.end field

.field i:Landroid/content/Context;

.field j:Z

.field k:Ljava/lang/StringBuilder;

.field l:Z

.field m:Z

.field n:Z

.field o:Ljava/lang/String;

.field p:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public q:Z

.field public r:Z

.field v:Landroid/net/ConnectivityManager;

.field volatile x:Z

.field private volatile y:Landroid/net/wifi/WifiInfo;

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/loc/dx;->d:J

    sput-wide v2, Lcom/loc/dx;->e:J

    sput-wide v2, Lcom/loc/dx;->f:J

    sput-wide v2, Lcom/loc/dx;->g:J

    sput-wide v2, Lcom/loc/dx;->h:J

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/loc/dx;->s:Ljava/util/HashMap;

    sput-wide v2, Lcom/loc/dx;->t:J

    const/4 v0, 0x0

    sput v0, Lcom/loc/dx;->u:I

    sput-wide v2, Lcom/loc/dx;->w:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/dx;->c:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/loc/dx;->j:Z

    iput-object v1, p0, Lcom/loc/dx;->k:Ljava/lang/StringBuilder;

    iput-boolean v2, p0, Lcom/loc/dx;->l:Z

    iput-boolean v2, p0, Lcom/loc/dx;->m:Z

    iput-boolean v2, p0, Lcom/loc/dx;->n:Z

    iput-object v1, p0, Lcom/loc/dx;->y:Landroid/net/wifi/WifiInfo;

    iput-object v1, p0, Lcom/loc/dx;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/dx;->p:Ljava/util/TreeMap;

    iput-boolean v2, p0, Lcom/loc/dx;->q:Z

    iput-boolean v3, p0, Lcom/loc/dx;->r:Z

    iput-object v1, p0, Lcom/loc/dx;->v:Landroid/net/ConnectivityManager;

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/loc/dx;->z:J

    iput-boolean v3, p0, Lcom/loc/dx;->x:Z

    iput-object p2, p0, Lcom/loc/dx;->a:Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/loc/dx;->i:Landroid/content/Context;

    return-void
.end method

.method private static a(I)Z
    .locals 4

    const/16 v0, 0x14

    const/16 v1, 0x14

    :try_start_0
    invoke-static {p0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v1

    const-string v2, "Aps"

    const-string v3, "wifiSigFine"

    invoke-static {v1, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/net/wifi/WifiInfo;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/ep;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static b()J
    .locals 4

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/loc/dx;->t:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private c(Z)V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v2

    sget-wide v4, Lcom/loc/dx;->g:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/loc/dx;->g()V

    :cond_2
    iget-object v1, p0, Lcom/loc/dx;->p:Ljava/util/TreeMap;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/loc/dx;->p:Ljava/util/TreeMap;

    :cond_3
    iget-object v1, p0, Lcom/loc/dx;->p:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    iget-boolean v1, p0, Lcom/loc/dx;->r:Z

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/loc/dx;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    :goto_2
    if-ge v2, v3, :cond_c

    iget-object v0, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_a

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    :goto_3
    invoke-static {v1}, Lcom/loc/ep;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x14

    if-le v3, v1, :cond_5

    iget v1, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v1}, Lcom/loc/dx;->a(I)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_5
    iget-boolean v1, p0, Lcom/loc/dx;->r:Z

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    :try_start_1
    new-instance v1, Lcom/loc/dd;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/loc/dd;-><init>(Z)V

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v4, v1, Lcom/loc/dd;->b:Ljava/lang/String;

    iget v4, v0, Landroid/net/wifi/ScanResult;->frequency:I

    iput v4, v1, Lcom/loc/dd;->d:I

    iget-wide v4, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    iput-wide v4, v1, Lcom/loc/dd;->e:J

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v4}, Lcom/loc/dd;->a(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/loc/dd;->a:J

    iget v4, v0, Landroid/net/wifi/ScanResult;->level:I

    int-to-short v4, v4

    iput v4, v1, Lcom/loc/dd;->c:I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_6

    iget-wide v4, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    int-to-short v4, v4

    iput-short v4, v1, Lcom/loc/dd;->g:S

    iget-short v4, v1, Lcom/loc/dd;->g:S

    if-gez v4, :cond_6

    const/4 v4, 0x0

    iput-short v4, v1, Lcom/loc/dd;->g:S

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/loc/dd;->f:J

    iget-object v4, p0, Lcom/loc/dx;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    :goto_4
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "<unknown ssid>"

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :cond_8
    :goto_5
    iget-object v1, p0, Lcom/loc/dx;->p:Ljava/util/TreeMap;

    iget v4, v0, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 v4, v4, 0x19

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    :cond_a
    const-string v1, ""

    goto/16 :goto_3

    :cond_b
    const-string v1, "unkwn"

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/loc/dx;->p:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v2, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/loc/dx;->p:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto/16 :goto_1
.end method

.method public static o()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/loc/dx;->g:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private p()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/dx;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/loc/dx;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_4

    new-instance v3, Ljava/util/HashMap;

    const/16 v0, 0x24

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v5, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-wide v6, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dx;->o:Ljava/lang/String;

    :cond_0
    :goto_1
    move-object v0, v2

    :goto_2
    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/loc/dx;->s:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/loc/dx;->s:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sput-object v3, Lcom/loc/dx;->s:Ljava/util/HashMap;

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v4

    sput-wide v4, Lcom/loc/dx;->t:J

    :cond_3
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/dx;->o:Ljava/lang/String;

    move-object v0, v1

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v4

    sput-wide v4, Lcom/loc/dx;->t:J
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    iput-object v2, p0, Lcom/loc/dx;->o:Ljava/lang/String;

    const-string v1, "WifiManagerWrapper"

    const-string v3, "getScanResults"

    invoke-static {v0, v1, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private q()V
    .locals 8

    const-wide/16 v2, 0x7530

    invoke-direct {p0}, Lcom/loc/dx;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    sget-wide v4, Lcom/loc/dx;->d:J

    sub-long v4, v0, v4

    const-wide/16 v0, 0x1324

    cmp-long v0, v4, v0

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/loc/dx;->v:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/dx;->i:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-static {v0, v1}, Lcom/loc/ep;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/loc/dx;->v:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v0, p0, Lcom/loc/dx;->v:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Lcom/loc/dx;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x26ac

    cmp-long v0, v4, v0

    if-ltz v0, :cond_6

    :cond_1
    sget v0, Lcom/loc/dx;->u:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-wide v0, p0, Lcom/loc/dx;->z:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/loc/dx;->z:J

    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_2

    cmp-long v0, v4, v0

    if-ltz v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/loc/dx;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/loc/dx;->d:J

    sget v0, Lcom/loc/dx;->u:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    sget v0, Lcom/loc/dx;->u:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/loc/dx;->u:I

    :cond_3
    iget-object v0, p0, Lcom/loc/dx;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/loc/dx;->f:J

    :cond_4
    :goto_2
    return-void

    :cond_5
    invoke-static {}, Lcom/loc/ei;->n()J

    move-result-wide v0

    const-wide/16 v6, -0x1

    cmp-long v0, v0, v6

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/loc/ei;->n()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "WifiManager"

    const-string v2, "wifiScan"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-wide v0, v2

    goto :goto_0
.end method

.method private r()Z
    .locals 10

    const-wide/16 v8, 0x1324

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/dx;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/loc/dx;->q:Z

    iget-boolean v0, p0, Lcom/loc/dx;->q:Z

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    iget-object v0, p0, Lcom/loc/dx;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/ep;->h(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/loc/dx;->l:Z

    if-eqz v0, :cond_0

    sget-wide v4, Lcom/loc/dx;->f:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v4

    sget-wide v6, Lcom/loc/dx;->f:J

    sub-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v4

    sget-wide v6, Lcom/loc/dx;->g:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x5dc

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    sget-wide v4, Lcom/loc/dx;->g:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v8

    if-lez v0, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/dd;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/loc/dx;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/dx;->c:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/loc/dx;->b(Z)V

    iget-object v0, p0, Lcom/loc/dx;->c:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public final a(Lcom/loc/do;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/dx;->A:Lcom/loc/do;

    return-void
.end method

.method public final a(Z)V
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/loc/dx;->i:Landroid/content/Context;

    invoke-static {}, Lcom/loc/ei;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/loc/dx;->n:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/loc/dx;->a:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/loc/ep;->c()I

    move-result v1

    const/16 v2, 0x11

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android.provider.Settings$Global"

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v6

    const-string v3, "wifi_scan_always_enabled"

    aput-object v3, v0, v5

    new-array v3, v4, [Ljava/lang/Class;

    const-class v4, Landroid/content/ContentResolver;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    :try_start_0
    const-string v4, "getInt"

    invoke-static {v2, v4, v0, v3}, Lcom/loc/em;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v3, "wifi_scan_always_enabled"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/ContentResolver;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v3

    const-string v3, "putInt"

    invoke-static {v2, v3, v0, v1}, Lcom/loc/em;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WifiManagerWrapper"

    const-string v2, "enableWifiAlwaysScan"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(ZZZJ)V
    .locals 4

    const-wide/16 v2, 0x2710

    iput-boolean p1, p0, Lcom/loc/dx;->l:Z

    iput-boolean p2, p0, Lcom/loc/dx;->m:Z

    iput-boolean p3, p0, Lcom/loc/dx;->n:Z

    cmp-long v0, p4, v2

    if-gez v0, :cond_0

    iput-wide v2, p0, Lcom/loc/dx;->z:J

    :goto_0
    return-void

    :cond_0
    iput-wide p4, p0, Lcom/loc/dx;->z:J

    goto :goto_0
.end method

.method public final a(Landroid/net/ConnectivityManager;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/loc/dx;->a:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/ep;->a(Landroid/net/NetworkInfo;)I

    move-result v3

    if-ne v3, v0, :cond_1

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/dx;->a(Landroid/net/wifi/WifiInfo;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "WifiManagerWrapper"

    const-string v3, "wifiAccess"

    invoke-static {v0, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final b(Z)V
    .locals 10

    const-wide/16 v8, 0x2710

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/loc/dx;->r()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v4

    const/16 v2, 0x14

    sget-wide v6, Lcom/loc/dx;->e:J

    sub-long v6, v4, v6

    cmp-long v3, v6, v8

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    sget-wide v6, Lcom/loc/dx;->g:J

    sput-wide v6, Lcom/loc/dx;->h:J

    :cond_0
    invoke-direct {p0}, Lcom/loc/dx;->q()V

    sget-wide v6, Lcom/loc/dx;->e:J

    sub-long/2addr v4, v6

    cmp-long v3, v4, v8

    if-ltz v3, :cond_2

    :goto_0
    if-lez v2, :cond_2

    sget-wide v4, Lcom/loc/dx;->g:J

    sget-wide v6, Lcom/loc/dx;->h:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    const-wide/16 v4, 0x96

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/loc/dx;->q()V

    :cond_2
    iget-boolean v2, p0, Lcom/loc/dx;->x:Z

    if-eqz v2, :cond_3

    iput-boolean v1, p0, Lcom/loc/dx;->x:Z

    :try_start_1
    iget-object v2, p0, Lcom/loc/dx;->a:Landroid/net/wifi/WifiManager;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v2, :cond_6

    :cond_3
    :goto_2
    sget-wide v2, Lcom/loc/dx;->h:J

    sget-wide v4, Lcom/loc/dx;->g:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0}, Lcom/loc/dx;->p()Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :goto_3
    sget-wide v2, Lcom/loc/dx;->g:J

    sput-wide v2, Lcom/loc/dx;->h:J

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    :goto_4
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v2

    sget-wide v4, Lcom/loc/dx;->g:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4e20

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v2

    sput-wide v2, Lcom/loc/dx;->e:J

    iget-object v0, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v2

    sput-wide v2, Lcom/loc/dx;->g:J

    invoke-direct {p0}, Lcom/loc/dx;->p()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    :goto_5
    invoke-direct {p0, v0}, Lcom/loc/dx;->c(Z)V

    return-void

    :cond_6
    :try_start_3
    iget-object v2, p0, Lcom/loc/dx;->a:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/loc/dx;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    :cond_7
    :goto_6
    :try_start_4
    iget-object v2, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    if-nez v2, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    :cond_8
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lcom/loc/dx;->g()V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v3, "WifiManager"

    const-string v4, "onReceive part"

    invoke-static {v2, v3, v4}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :catch_2
    move-exception v2

    const-string v3, "WifiManager"

    const-string v4, "updateScanResult"

    invoke-static {v2, v3, v4}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    :catch_3
    move-exception v3

    goto/16 :goto_1

    :cond_a
    move v0, v1

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c()Landroid/net/wifi/WifiInfo;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/dx;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dx;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "WifiManagerWrapper"

    const-string v2, "getConnectionInfo"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/dx;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/loc/dx;->r:Z

    invoke-direct {p0}, Lcom/loc/dx;->p()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/loc/dx;->c(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/dx;->y:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final h()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/loc/dx;->w:J

    iget-object v0, p0, Lcom/loc/dx;->A:Lcom/loc/do;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dx;->A:Lcom/loc/do;

    invoke-virtual {v0}, Lcom/loc/do;->b()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Lcom/loc/dx;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/loc/dx;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1324

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/loc/dx;->g:J

    goto :goto_0
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/loc/dx;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/dx;->x:Z

    goto :goto_0
.end method

.method public final k()Landroid/net/wifi/WifiInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/loc/dx;->c()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dx;->y:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/loc/dx;->y:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/dx;->j:Z

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 13

    const/4 v2, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/loc/dx;->k:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2bc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/loc/dx;->k:Ljava/lang/StringBuilder;

    :goto_0
    iput-boolean v6, p0, Lcom/loc/dx;->j:Z

    const-string v0, ""

    invoke-virtual {p0}, Lcom/loc/dx;->k()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/dx;->y:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/loc/dx;->y:Landroid/net/wifi/WifiInfo;

    invoke-static {v1}, Lcom/loc/dx;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/loc/dx;->y:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v5, v6

    move v4, v6

    move v3, v6

    :goto_2
    if-ge v5, v7, :cond_2

    iget-object v0, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v8, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/loc/dx;->m:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v9, "<unknown ssid>"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    :goto_3
    const-string v3, "nb"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v3, "access"

    move v4, v2

    :cond_0
    iget-object v9, p0, Lcom/loc/dx;->k:Ljava/lang/StringBuilder;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "#%s,%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v8, v12, v6

    aput-object v3, v12, v2

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/loc/dx;->k:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/loc/dx;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    move v3, v2

    :cond_3
    iget-boolean v0, p0, Lcom/loc/dx;->m:Z

    if-nez v0, :cond_4

    if-nez v3, :cond_4

    iput-boolean v2, p0, Lcom/loc/dx;->j:Z

    :cond_4
    if-nez v4, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/loc/dx;->k:Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/dx;->k:Ljava/lang/StringBuilder;

    const-string v1, ",access"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v0, p0, Lcom/loc/dx;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    move v0, v3

    goto :goto_3

    :cond_7
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public final n()V
    .locals 1

    invoke-virtual {p0}, Lcom/loc/dx;->g()V

    iget-object v0, p0, Lcom/loc/dx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
