.class public final Lcom/loc/e;
.super Ljava/lang/Object;
.source "ApsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/e$c;,
        Lcom/loc/e$a;,
        Lcom/loc/e$b;
    }
.end annotation


# static fields
.field static g:Z


# instance fields
.field private A:Lcom/loc/i;

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private C:Z

.field private D:Ljava/lang/String;

.field private final E:I

.field private F:Ljava/lang/String;

.field a:Ljava/lang/String;

.field b:Lcom/loc/e$b;

.field c:Lcom/amap/api/location/AMapLocation;

.field d:Lcom/loc/e$a;

.field e:Landroid/content/Context;

.field f:Lcom/loc/dn;

.field h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/loc/en;

.field j:J

.field k:J

.field l:Ljava/lang/String;

.field m:Lcom/amap/api/location/AMapLocationClientOption;

.field n:Lcom/amap/api/location/AMapLocationClientOption;

.field o:Ljava/net/ServerSocket;

.field p:Z

.field q:Ljava/net/Socket;

.field r:Z

.field s:Lcom/loc/e$c;

.field private t:Z

.field private u:Z

.field private v:J

.field private w:J

.field private x:Lcom/loc/ds;

.field private y:J

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/e;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/loc/e;->t:Z

    iput-boolean v2, p0, Lcom/loc/e;->u:Z

    iput-object v1, p0, Lcom/loc/e;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/e;->b:Lcom/loc/e$b;

    iput-wide v4, p0, Lcom/loc/e;->v:J

    iput-wide v4, p0, Lcom/loc/e;->w:J

    iput-object v1, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    iput-object v1, p0, Lcom/loc/e;->c:Lcom/amap/api/location/AMapLocation;

    iput-wide v4, p0, Lcom/loc/e;->y:J

    iput v2, p0, Lcom/loc/e;->z:I

    iput-object v1, p0, Lcom/loc/e;->d:Lcom/loc/e$a;

    iput-object v1, p0, Lcom/loc/e;->e:Landroid/content/Context;

    iput-object v1, p0, Lcom/loc/e;->A:Lcom/loc/i;

    iput-object v1, p0, Lcom/loc/e;->f:Lcom/loc/dn;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/loc/e;->h:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/loc/e;->i:Lcom/loc/en;

    iput-wide v4, p0, Lcom/loc/e;->j:J

    iput-wide v4, p0, Lcom/loc/e;->k:J

    iput-object v1, p0, Lcom/loc/e;->l:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/e;->C:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/e;->D:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/e;->m:Lcom/amap/api/location/AMapLocationClientOption;

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/loc/e;->n:Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v1, p0, Lcom/loc/e;->o:Ljava/net/ServerSocket;

    iput-boolean v2, p0, Lcom/loc/e;->p:Z

    iput-object v1, p0, Lcom/loc/e;->q:Ljava/net/Socket;

    iput-boolean v2, p0, Lcom/loc/e;->r:Z

    iput-object v1, p0, Lcom/loc/e;->s:Lcom/loc/e$c;

    const/16 v0, 0x1388

    iput v0, p0, Lcom/loc/e;->E:I

    const-string v0, "jsonp1"

    iput-object v0, p0, Lcom/loc/e;->F:Ljava/lang/String;

    iput-object p1, p0, Lcom/loc/e;->e:Landroid/content/Context;

    return-void
.end method

.method private static a(ILjava/lang/String;)Lcom/loc/ds;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/loc/ds;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/loc/ds;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/loc/ds;->setErrorCode(I)V

    invoke-virtual {v0, p1}, Lcom/loc/ds;->setLocationDetail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ApsServiceCore"

    const-string v2, "newInstanceAMapLoc"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Lcom/loc/ds;
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0, p0}, Lcom/loc/e;->a(ILjava/lang/String;)Lcom/loc/ds;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/loc/e;Lcom/loc/i;)Lcom/loc/i;
    .locals 0

    iput-object p1, p0, Lcom/loc/e;->A:Lcom/loc/i;

    return-object p1
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/e;->t:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/ej;->a(Landroid/content/Context;)V

    if-eqz p1, :cond_2

    const-string v0, "optBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ej;->a(Landroid/os/Bundle;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/e;->n:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_2
    iget-object v0, p0, Lcom/loc/e;->f:Lcom/loc/dn;

    iget-object v1, p0, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/dn;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/e;->f:Lcom/loc/dn;

    invoke-virtual {v0}, Lcom/loc/dn;->a()V

    iget-object v0, p0, Lcom/loc/e;->n:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {p0, v0}, Lcom/loc/e;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object v0, p0, Lcom/loc/e;->f:Lcom/loc/dn;

    invoke-virtual {v0}, Lcom/loc/dn;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/e;->t:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/e;->C:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/e;->D:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/e;->B:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/e;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/loc/e;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/loc/e;->C:Z

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/e;->D:Ljava/lang/String;

    const-string v1, "ApsServiceCore"

    const-string v2, "init"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/os/Messenger;ILandroid/os/Bundle;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ApsServiceCore"

    const-string v2, "sendMessage"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;Lcom/loc/dm;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-class v1, Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "loc"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "nb"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "statics"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/loc/e;->h:Ljava/util/HashMap;

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/loc/e;->a(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    return-void
.end method

.method private a(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/e;->f:Lcom/loc/dn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/e;->f:Lcom/loc/dn;

    invoke-virtual {v0, p1}, Lcom/loc/dn;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->isKillProcess()Z

    move-result v0

    sput-boolean v0, Lcom/loc/e;->g:Z

    iget-object v0, p0, Lcom/loc/e;->m:Lcom/amap/api/location/AMapLocationClientOption;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v0

    iget-object v1, p0, Lcom/loc/e;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v0

    iget-object v1, p0, Lcom/loc/e;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v0

    iget-object v1, p0, Lcom/loc/e;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/loc/e;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/e;->w:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/e;->c:Lcom/amap/api/location/AMapLocation;

    :cond_2
    iput-object p1, p0, Lcom/loc/e;->m:Lcom/amap/api/location/AMapLocationClientOption;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ApsServiceCore"

    const-string v2, "setExtra"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/e;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/ei;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ApsServiceCore"

    const-string v2, "doCallOtherSer"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/e;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/e;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/loc/e;Landroid/os/Messenger;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/e;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/loc/e;Landroid/os/Messenger;Landroid/os/Bundle;)V
    .locals 3

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/loc/e;->u:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/e;->u:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/loc/e;->f:Lcom/loc/dn;

    invoke-virtual {v0}, Lcom/loc/dn;->e()V

    invoke-static {}, Lcom/loc/ei;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "installMockApp"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Lcom/loc/e;->a(Landroid/os/Messenger;ILandroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "ApsServiceCore"

    const-string v2, "initAuth"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ApsServiceCore"

    const-string v2, "doInitAuth"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/e;Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;Lcom/loc/dm;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/loc/e;->a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;Lcom/loc/dm;)V

    return-void
.end method

.method static synthetic a(Lcom/loc/e;Ljava/net/Socket;)V
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget v3, Lcom/loc/ej;->g:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-direct {p0, v1}, Lcom/loc/e;->a(Ljava/io/BufferedReader;)V

    invoke-direct {p0}, Lcom/loc/e;->e()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v0

    :try_start_3
    sput v3, Lcom/loc/ej;->g:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-direct {p0, v0}, Lcom/loc/e;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_6
    const-string v1, "apm"

    const-string v2, "inSocetLn part3"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "apm"

    const-string v2, "inSocetLn part4"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    const-string v2, "apm"

    const-string v3, "inSocetLn part2"

    invoke-static {v0, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_9
    const-string v1, "apm"

    const-string v2, "inSocetLn part3"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    :goto_1
    :try_start_b
    throw v0

    :catch_4
    move-exception v1

    const-string v2, "apm"

    const-string v3, "inSocetLn part3"

    invoke-static {v1, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/loc/e;->F:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/loc/e;->F:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "({\'package\':\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/loc/e;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',\'error_code\':1,\'error\':\'params error\'})"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "apm"

    const-string v5, "inSocetLn"

    invoke-static {v0, v4, v5}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    sput v3, Lcom/loc/ej;->g:I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1

    :try_start_e
    invoke-direct {p0, v2}, Lcom/loc/e;->b(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    :try_start_10
    const-string v1, "apm"

    const-string v2, "inSocetLn part3"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_0

    :catch_7
    move-exception v0

    :try_start_11
    const-string v2, "apm"

    const-string v3, "inSocetLn part2"

    invoke-static {v0, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v0

    :try_start_13
    const-string v1, "apm"

    const-string v2, "inSocetLn part3"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_9

    :goto_3
    :try_start_15
    throw v0

    :catch_9
    move-exception v1

    const-string v2, "apm"

    const-string v3, "inSocetLn part3"

    invoke-static {v1, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_4
    sput v3, Lcom/loc/ej;->g:I
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_1

    :try_start_16
    invoke-direct {p0, v2}, Lcom/loc/e;->b(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_b
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    :try_start_17
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_a

    :goto_5
    :try_start_18
    throw v0

    :catch_a
    move-exception v1

    const-string v2, "apm"

    const-string v3, "inSocetLn part3"

    invoke-static {v1, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_1

    goto :goto_5

    :catch_b
    move-exception v2

    :try_start_19
    const-string v3, "apm"

    const-string v4, "inSocetLn part2"

    invoke-static {v2, v3, v4}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    :try_start_1a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_c

    goto :goto_5

    :catch_c
    move-exception v1

    :try_start_1b
    const-string v2, "apm"

    const-string v3, "inSocetLn part3"

    invoke-static {v1, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_1

    goto :goto_5

    :catchall_3
    move-exception v0

    :try_start_1c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_d

    :goto_6
    :try_start_1d
    throw v0

    :catch_d
    move-exception v1

    const-string v2, "apm"

    const-string v3, "inSocetLn part3"

    invoke-static {v1, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_1

    goto :goto_6

    :catchall_4
    move-exception v0

    goto :goto_4

    :catch_e
    move-exception v0

    goto/16 :goto_2
.end method

.method private a(Ljava/io/BufferedReader;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x7530

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v3, v2

    if-le v3, v7, :cond_3

    aget-object v2, v2, v7

    const-string v3, "\\?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v3, v2

    if-le v3, v7, :cond_3

    aget-object v2, v2, v7

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v2, v3

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    aget-object v4, v3, v0

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v5, v4

    if-le v5, v7, :cond_1

    const-string v5, "to"

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v2, v4, v7

    invoke-static {v2}, Lcom/loc/ep;->g(Ljava/lang/String;)I

    move-result v2

    :cond_0
    const-string v5, "callback"

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v4, v4, v7

    iput-object v4, p0, Lcom/loc/e;->F:Ljava/lang/String;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    sput v0, Lcom/loc/ej;->g:I

    return-void
.end method

.method private b(Landroid/os/Bundle;)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 4

    const-string v0, "optBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ej;->a(Landroid/os/Bundle;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/loc/e;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    :try_start_0
    const-string v0, "d"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/loc/n;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "APSManager"

    const-string v3, "doLocation setUmidToken"

    invoke-static {v0, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "APSManager"

    const-string v3, "parseBundle"

    invoke-static {v0, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/loc/e;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/loc/e;->B:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/loc/e;Landroid/os/Messenger;Landroid/os/Bundle;)V
    .locals 10

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Lcom/loc/dm;

    invoke-direct {v3}, Lcom/loc/dm;-><init>()V

    const-string v0, "conitue"

    invoke-virtual {v3, v0}, Lcom/loc/dm;->e(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/loc/e;->b(Landroid/os/Bundle;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v4

    iget-object v0, p0, Lcom/loc/e;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/e;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v8

    sub-long v6, v8, v6

    const-wide/16 v8, 0x320

    cmp-long v0, v6, v8

    if-ltz v0, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/loc/e;->C:Z

    if-nez v0, :cond_3

    const/16 v0, 0x9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/loc/e;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#0901"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/e;->a(ILjava/lang/String;)Lcom/loc/ds;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    const-string v0, "#0901"

    invoke-virtual {v3, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    iget-object v1, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    invoke-virtual {v1}, Lcom/loc/ds;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/loc/e;->a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;Lcom/loc/dm;)V

    const/4 v0, 0x0

    const/16 v1, 0x82b

    invoke-static {v0, v1}, Lcom/loc/en;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ApsServiceCore"

    const-string v2, "doLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v6

    iget-object v0, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    invoke-static {v0}, Lcom/loc/ep;->a(Lcom/loc/ds;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v8, p0, Lcom/loc/e;->w:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x258

    cmp-long v0, v6, v8

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    iget-object v1, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    invoke-virtual {v1}, Lcom/loc/ds;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/loc/e;->a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;Lcom/loc/dm;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/loc/dm;->c(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/loc/e;->f:Lcom/loc/dn;

    invoke-virtual {v0, v3}, Lcom/loc/dn;->a(Lcom/loc/dm;)Lcom/loc/ds;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    iget-object v0, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    invoke-virtual {v0}, Lcom/loc/ds;->getLocationType()I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    invoke-virtual {v0}, Lcom/loc/ds;->getLocationType()I

    :cond_5
    iget-object v0, p0, Lcom/loc/e;->f:Lcom/loc/dn;

    iget-object v2, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    invoke-virtual {v0, v2}, Lcom/loc/dn;->a(Lcom/loc/ds;)Lcom/loc/ds;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/e;->x:Lcom/loc/ds;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    invoke-static {v0}, Lcom/loc/ep;->a(Lcom/loc/ds;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/loc/e;->w:J

    :cond_6
    iget-object v0, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    if-nez v0, :cond_7

    const/16 v0, 0x8

    const-string v2, "loc is null#0801"

    invoke-static {v0, v2}, Lcom/loc/e;->a(ILjava/lang/String;)Lcom/loc/ds;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    const-string v0, "#0801"

    invoke-virtual {v3, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    invoke-virtual {v0}, Lcom/loc/ds;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    invoke-virtual {v0}, Lcom/loc/ds;->clone()Lcom/amap/api/location/AMapLocation;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    move-object v2, v1

    :goto_2
    :try_start_4
    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/loc/e;->A:Lcom/loc/i;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/loc/e;->A:Lcom/loc/i;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->getLastLocationLifeCycle()J

    move-result-wide v4

    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/loc/i;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;J)Lcom/amap/api/location/AMapLocation;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    :cond_8
    :goto_3
    :try_start_5
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/loc/e;->a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;Lcom/loc/dm;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    const/16 v5, 0x821

    invoke-static {v2, v5}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    const-string v2, "#0801"

    invoke-virtual {v3, v2}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    const/16 v2, 0x8

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "loc error : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#0801"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/loc/e;->a(ILjava/lang/String;)Lcom/loc/ds;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    const-string v2, "ApsServiceCore"

    const-string v5, "run part2"

    invoke-static {v0, v2, v5}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v4, "ApsServiceCore"

    const-string v5, "fixLastLocation"

    invoke-static {v1, v4, v5}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :cond_9
    move-object v0, v1

    move-object v2, v1

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/loc/e;->q:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "UTF-8"

    invoke-direct {v0, v1, v2, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string v1, "HTTP/1.0 200 OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content-Length:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    return-void
.end method

.method static synthetic c(Lcom/loc/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/e;->f()V

    return-void
.end method

.method public static d()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/e;->g:Z

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/ep;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/loc/e;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "({\'package\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'error_code\':36,\'error\':\'app is background\'})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    invoke-virtual {v2}, Lcom/loc/ds;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    :try_start_0
    new-instance v0, Lcom/loc/dm;

    invoke-direct {v0}, Lcom/loc/dm;-><init>()V

    iget-object v1, p0, Lcom/loc/e;->f:Lcom/loc/dn;

    invoke-virtual {v1, v0}, Lcom/loc/dn;->a(Lcom/loc/dm;)Lcom/loc/ds;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/e;->x:Lcom/loc/ds;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/loc/e;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "({\'package\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'error_code\':8,\'error\':\'unknown error\'})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ApsServiceCore"

    const-string v2, "getSocketLocResult"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    invoke-virtual {v0}, Lcom/loc/ds;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/loc/e;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "({\'package\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'error_code\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    invoke-virtual {v1}, Lcom/loc/ds;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\'error\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    invoke-virtual {v1}, Lcom/loc/ds;->getErrorInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/loc/e;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "({\'package\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'error_code\':0,\'error\':\'\',\'location\':{\'y\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    invoke-virtual {v1}, Lcom/loc/ds;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\'precision\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    invoke-virtual {v1}, Lcom/loc/ds;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\'x\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->x:Lcom/loc/ds;

    invoke-virtual {v1}, Lcom/loc/ds;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},\'version_code\':\'5.2.0\',\'version\':\'5.2.0\'})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private f()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/e;->f:Lcom/loc/dn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/e;->f:Lcom/loc/dn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/e;->f:Lcom/loc/dn;

    iget-object v1, p0, Lcom/loc/e;->d:Lcom/loc/e$a;

    invoke-virtual {v0, v1}, Lcom/loc/dn;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/loc/e;->f:Lcom/loc/dn;

    invoke-virtual {v0}, Lcom/loc/dn;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ApsServiceCore"

    const-string v2, "startColl"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/loc/en;

    invoke-direct {v0}, Lcom/loc/en;-><init>()V

    iput-object v0, p0, Lcom/loc/e;->i:Lcom/loc/en;

    new-instance v0, Lcom/loc/e$b;

    const-string v1, "amapLocCoreThread"

    invoke-direct {v0, p0, v1}, Lcom/loc/e$b;-><init>(Lcom/loc/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/e;->b:Lcom/loc/e$b;

    iget-object v0, p0, Lcom/loc/e;->b:Lcom/loc/e$b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/loc/e$b;->setPriority(I)V

    iget-object v0, p0, Lcom/loc/e;->b:Lcom/loc/e$b;

    invoke-virtual {v0}, Lcom/loc/e$b;->start()V

    new-instance v0, Lcom/loc/e$a;

    iget-object v1, p0, Lcom/loc/e;->b:Lcom/loc/e$b;

    invoke-virtual {v1}, Lcom/loc/e$b;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/loc/e$a;-><init>(Lcom/loc/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/loc/e;->d:Lcom/loc/e$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/e;->B:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ApsServiceCore"

    const-string v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Landroid/os/Messenger;Landroid/os/Bundle;)V
    .locals 10

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/loc/ei;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lat"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v0, "lon"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {p0, p2}, Lcom/loc/e;->b(Landroid/os/Bundle;)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lcom/loc/e;->c:Lcom/amap/api/location/AMapLocation;

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v6, 0x0

    aput-wide v2, v0, v6

    const/4 v6, 0x1

    aput-wide v4, v0, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/loc/e;->c:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v7}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v8

    aput-wide v8, v0, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/loc/e;->c:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v7}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v8

    aput-wide v8, v0, v6

    invoke-static {v0}, Lcom/loc/ep;->a([D)F

    move-result v0

    invoke-static {}, Lcom/loc/ei;->i()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_2

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-class v7, Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v7, "I_MAX_GEO_DIS"

    invoke-static {}, Lcom/loc/ei;->i()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "I_MIN_GEO_DIS"

    invoke-static {}, Lcom/loc/ei;->i()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "loc"

    iget-object v8, p0, Lcom/loc/e;->c:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v7, 0x6

    invoke-static {p1, v7, v6}, Lcom/loc/e;->a(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    :cond_2
    :goto_1
    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/loc/ei;->i()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/loc/e;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/loc/e;->f:Lcom/loc/dn;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/loc/dn;->a(DD)Lcom/loc/ds;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/e;->c:Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ApsServiceCore"

    const-string v2, "doLocationGeo"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final b()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/e;->q:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/e;->q:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/e;->o:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/e;->o:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/loc/e;->s:Lcom/loc/e$c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/e;->s:Lcom/loc/e$c;

    invoke-virtual {v0}, Lcom/loc/e$c;->interrupt()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    iput-object v4, p0, Lcom/loc/e;->s:Lcom/loc/e$c;

    iput-object v4, p0, Lcom/loc/e;->o:Ljava/net/ServerSocket;

    iput-boolean v3, p0, Lcom/loc/e;->p:Z

    iput-boolean v3, p0, Lcom/loc/e;->r:Z

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ApsServiceCore"

    const-string v2, "doStopScocket 1"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ApsServiceCore"

    const-string v2, "doStopScocket 2"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public final c()V
    .locals 8

    const-wide/16 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/e;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/e;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/e;->h:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/e;->B:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/e;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/loc/e;->d:Lcom/loc/e$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/e;->d:Lcom/loc/e$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loc/e$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/loc/e;->b:Lcom/loc/e$b;

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v1, 0x12

    if-lt v0, v1, :cond_7

    :try_start_3
    iget-object v0, p0, Lcom/loc/e;->b:Lcom/loc/e$b;

    const-class v1, Landroid/os/HandlerThread;

    const-string v2, "quitSafely"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/loc/em;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/loc/e;->b:Lcom/loc/e$b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/e;->d:Lcom/loc/e$a;

    iget-object v0, p0, Lcom/loc/e;->A:Lcom/loc/i;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/e;->A:Lcom/loc/i;

    invoke-virtual {v0}, Lcom/loc/i;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/e;->A:Lcom/loc/i;

    :cond_4
    invoke-virtual {p0}, Lcom/loc/e;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/e;->t:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/e;->u:Z

    iget-object v0, p0, Lcom/loc/e;->f:Lcom/loc/dn;

    invoke-virtual {v0}, Lcom/loc/dn;->d()V

    iget-object v0, p0, Lcom/loc/e;->i:Lcom/loc/en;

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/loc/e;->j:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/loc/e;->k:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/loc/e;->j:J

    sub-long v6, v0, v2

    iget-object v0, p0, Lcom/loc/e;->i:Lcom/loc/en;

    iget-object v1, p0, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/en;->c(Landroid/content/Context;)I

    move-result v2

    iget-object v0, p0, Lcom/loc/e;->i:Lcom/loc/en;

    iget-object v1, p0, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/en;->d(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/loc/e;->e:Landroid/content/Context;

    iget-wide v4, p0, Lcom/loc/e;->k:J

    invoke-static/range {v1 .. v7}, Lcom/loc/en;->a(Landroid/content/Context;IIJJ)V

    iget-object v0, p0, Lcom/loc/e;->i:Lcom/loc/en;

    iget-object v1, p0, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/en;->e(Landroid/content/Context;)V

    :cond_5
    iget-object v0, p0, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/en;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/loc/ab;->b()V

    sget-boolean v0, Lcom/loc/e;->g:Z

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_6
    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "apm"

    const-string v2, "des1"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "apm"

    const-string v2, "tdest"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_5
    iget-object v0, p0, Lcom/loc/e;->b:Lcom/loc/e$b;

    invoke-virtual {v0}, Lcom/loc/e$b;->quit()Z

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/loc/e;->b:Lcom/loc/e$b;

    invoke-virtual {v0}, Lcom/loc/e$b;->quit()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1
.end method
