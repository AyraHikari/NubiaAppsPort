.class public final Lcom/loc/dn;
.super Ljava/lang/Object;
.source "Aps.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/dn$a;
    }
.end annotation


# static fields
.field static D:I

.field private static K:Z

.field private static volatile P:Z


# instance fields
.field A:I

.field B:Lcom/loc/dt;

.field C:Z

.field E:Lcom/loc/dr;

.field F:Ljava/lang/String;

.field G:Landroid/content/IntentFilter;

.field H:Landroid/location/LocationManager;

.field private I:I

.field private J:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Z

.field private N:Landroid/os/Handler;

.field private O:Ljava/lang/String;

.field private Q:Lcom/loc/do;

.field a:Landroid/content/Context;

.field b:Landroid/net/ConnectivityManager;

.field c:Lcom/loc/dx;

.field d:Lcom/loc/dw;

.field e:Lcom/loc/dz;

.field f:Lcom/loc/dp;

.field g:Lcom/loc/eg;

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/loc/dn$a;

.field j:Lcom/amap/api/location/AMapLocationClientOption;

.field k:Lcom/loc/ds;

.field l:J

.field m:Lcom/loc/eh;

.field n:Z

.field o:Lcom/loc/ee;

.field p:Ljava/lang/StringBuilder;

.field q:Z

.field r:Z

.field s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

.field t:Z

.field u:Z

.field v:Landroid/net/wifi/WifiInfo;

.field w:Z

.field x:Ljava/lang/StringBuilder;

.field y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/loc/dn;->K:Z

    const/4 v0, -0x1

    sput v0, Lcom/loc/dn;->D:I

    sput-boolean v1, Lcom/loc/dn;->P:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    iput-object v2, p0, Lcom/loc/dn;->b:Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    iput-object v2, p0, Lcom/loc/dn;->d:Lcom/loc/dw;

    iput-object v2, p0, Lcom/loc/dn;->e:Lcom/loc/dz;

    iput-object v2, p0, Lcom/loc/dn;->f:Lcom/loc/dp;

    iput-object v2, p0, Lcom/loc/dn;->g:Lcom/loc/eg;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/dn;->h:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/loc/dn;->i:Lcom/loc/dn$a;

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v2, p0, Lcom/loc/dn;->k:Lcom/loc/ds;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/dn;->l:J

    iput v3, p0, Lcom/loc/dn;->I:I

    iput-object v2, p0, Lcom/loc/dn;->m:Lcom/loc/eh;

    iput-boolean v3, p0, Lcom/loc/dn;->n:Z

    iput-object v2, p0, Lcom/loc/dn;->J:Ljava/lang/String;

    iput-object v2, p0, Lcom/loc/dn;->o:Lcom/loc/ee;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    iput-boolean v4, p0, Lcom/loc/dn;->q:Z

    iput-boolean v4, p0, Lcom/loc/dn;->r:Z

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-object v0, p0, Lcom/loc/dn;->s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-boolean v4, p0, Lcom/loc/dn;->t:Z

    iput-boolean v3, p0, Lcom/loc/dn;->u:Z

    iput-object v2, p0, Lcom/loc/dn;->v:Landroid/net/wifi/WifiInfo;

    iput-boolean v4, p0, Lcom/loc/dn;->w:Z

    iput-object v2, p0, Lcom/loc/dn;->L:Ljava/lang/String;

    iput-object v2, p0, Lcom/loc/dn;->x:Ljava/lang/StringBuilder;

    iput-boolean v3, p0, Lcom/loc/dn;->y:Z

    iput-boolean v3, p0, Lcom/loc/dn;->z:Z

    const/16 v0, 0xc

    iput v0, p0, Lcom/loc/dn;->A:I

    iput-boolean v4, p0, Lcom/loc/dn;->M:Z

    iput-object v2, p0, Lcom/loc/dn;->B:Lcom/loc/dt;

    iput-boolean v3, p0, Lcom/loc/dn;->C:Z

    iput-object v2, p0, Lcom/loc/dn;->E:Lcom/loc/dr;

    iput-object v2, p0, Lcom/loc/dn;->F:Ljava/lang/String;

    iput-object v2, p0, Lcom/loc/dn;->G:Landroid/content/IntentFilter;

    iput-object v2, p0, Lcom/loc/dn;->H:Landroid/location/LocationManager;

    return-void
.end method

.method private static a(ILjava/lang/String;)Lcom/loc/ds;
    .locals 3

    new-instance v0, Lcom/loc/ds;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/loc/ds;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/loc/ds;->setErrorCode(I)V

    invoke-virtual {v0, p1}, Lcom/loc/ds;->setLocationDetail(Ljava/lang/String;)V

    const/16 v1, 0xf

    if-ne p0, v1, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x867

    invoke-static {v1, v2}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method private a(Lcom/loc/ds;Lcom/loc/aw;Lcom/loc/dm;)Lcom/loc/ds;
    .locals 6

    const/4 v5, 0x4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p2, Lcom/loc/aw;->a:[B

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/loc/aw;->a:[B

    array-length v1, v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/loc/ds;->setErrorCode(I)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u6c42\u5f02\u5e38#0403"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#0403"

    invoke-virtual {p3, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/loc/ds;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/loc/ds;->setLocationDetail(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/loc/aw;->d:Ljava/lang/String;

    const/16 v1, 0x7f9

    invoke-static {v0, v1}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    new-instance v1, Lcom/loc/eg;

    invoke-direct {v1}, Lcom/loc/eg;-><init>()V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p2, Lcom/loc/aw;->a:[B

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v3, "\"status\":\"0\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/loc/eg;->a(Ljava/lang/String;Landroid/content/Context;Lcom/loc/aw;Lcom/loc/dm;)Lcom/loc/ds;

    move-result-object p1

    iget-object v0, p0, Lcom/loc/dn;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/loc/ds;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p1, v5}, Lcom/loc/ds;->setErrorCode(I)V

    const-string v1, "Aps"

    const-string v2, "checkResponseEntity"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "#0403"

    invoke-virtual {p3, v1}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "check response exception ex is"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#0403"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/loc/ds;->setLocationDetail(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v1, "</body></html>"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/loc/ds;->setErrorCode(I)V

    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    iget-object v1, p0, Lcom/loc/dn;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Lcom/loc/dx;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "#0501"

    invoke-virtual {p3, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u60a8\u8fde\u63a5\u7684\u662f\u4e00\u4e2a\u9700\u8981\u767b\u5f55\u7684\u7f51\u7edc\uff0c\u8bf7\u786e\u8ba4\u5df2\u7ecf\u767b\u5165\u7f51\u7edc#0501"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v1, 0x803

    invoke-static {v0, v1}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    :goto_1
    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/loc/ds;->setLocationDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "#0502"

    invoke-virtual {p3, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u8bf7\u6c42\u53ef\u80fd\u88ab\u52ab\u6301\u4e86#0502"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v1, 0x804

    invoke-static {v0, v1}, Lcom/loc/en;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    move-object p1, v0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x2bc

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    iget-object v0, p0, Lcom/loc/dn;->d:Lcom/loc/dw;

    invoke-virtual {v0}, Lcom/loc/dw;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    invoke-virtual {v0}, Lcom/loc/dx;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private a(Lcom/loc/dm;Lcom/loc/ef;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p1, p5}, Lcom/loc/dm;->b(Ljava/lang/String;)V

    const-string v0, "FAIL"

    invoke-virtual {p1, v0}, Lcom/loc/dm;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/ec;->a(Landroid/content/Context;)Lcom/loc/ec;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p6}, Lcom/loc/ec;->a(ZI)V

    invoke-virtual {p2, p3}, Lcom/loc/ef;->a(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Lcom/loc/ef;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->o:Lcom/loc/ee;

    invoke-virtual {v0}, Lcom/loc/ee;->a()I

    move-result v0

    invoke-static {}, Lcom/loc/ei;->q()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/loc/ei;->q()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p2, v0}, Lcom/loc/ef;->a(I)V

    invoke-static {}, Lcom/loc/ei;->q()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p2, v0}, Lcom/loc/ef;->b(I)V

    :cond_0
    return-void
.end method

.method private b(ZLcom/loc/dm;)Lcom/loc/ds;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/loc/dn;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/n;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dn;->O:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "#id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/dn;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    new-instance v8, Lcom/loc/ds;

    const-string v0, ""

    invoke-direct {v8, v0}, Lcom/loc/ds;-><init>(Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lcom/loc/dn;->m:Lcom/loc/eh;

    if-nez v0, :cond_1

    new-instance v0, Lcom/loc/eh;

    invoke-direct {v0}, Lcom/loc/eh;-><init>()V

    iput-object v0, p0, Lcom/loc/dn;->m:Lcom/loc/eh;

    :cond_1
    iget-object v0, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_2
    iget-object v0, p0, Lcom/loc/dn;->m:Lcom/loc/eh;

    iget-object v1, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v2

    iget-object v3, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v3

    iget-object v4, p0, Lcom/loc/dn;->d:Lcom/loc/dw;

    iget-object v5, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    iget-object v6, p0, Lcom/loc/dn;->b:Landroid/net/ConnectivityManager;

    iget-object v7, p0, Lcom/loc/dn;->F:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/loc/eh;->a(Landroid/content/Context;ZZLcom/loc/dw;Lcom/loc/dx;Landroid/net/ConnectivityManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->m:Lcom/loc/eh;

    invoke-virtual {v0}, Lcom/loc/eh;->a()[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/dn;->l:J

    iget-wide v0, p0, Lcom/loc/dn;->l:J

    invoke-virtual {p2, v0, v1}, Lcom/loc/dm;->a(J)V

    :try_start_2
    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/ej;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/dn;->o:Lcom/loc/ee;

    iget-object v1, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-static {}, Lcom/loc/ej;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/loc/ej;->b()Ljava/lang/String;

    move-result-object v4

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/loc/ee;->a(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Z)Lcom/loc/ef;

    move-result-object v2

    invoke-virtual {v2}, Lcom/loc/ef;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/loc/ef;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/l;->a(Landroid/content/Context;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "dualstack"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_1
    invoke-static {}, Lcom/loc/l;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/loc/l;->c()Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    const-string v0, "v6"

    invoke-virtual {p2, v0}, Lcom/loc/dm;->a(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {}, Lcom/loc/l;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/ec;->a(Landroid/content/Context;)Lcom/loc/ec;

    move-result-object v0

    sget v1, Lcom/loc/ec;->b:I

    invoke-virtual {v0, v2, v1}, Lcom/loc/ec;->a(Lcom/loc/ef;I)Ljava/lang/String;

    move-result-object v5

    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    if-nez v0, :cond_9

    :try_start_3
    iget-object v0, p0, Lcom/loc/dn;->o:Lcom/loc/ee;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/loc/ee;->a(Lcom/loc/ef;I)Lcom/loc/aw;

    move-result-object v6

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    invoke-virtual {p2, v5}, Lcom/loc/dm;->b(Ljava/lang/String;)V

    const-string v7, "SUCCESS"

    invoke-virtual {p2, v7}, Lcom/loc/dm;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v6

    :goto_2
    :try_start_4
    iget-object v3, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/ec;->a(Landroid/content/Context;)Lcom/loc/ec;

    move-result-object v3

    const/4 v4, 0x1

    sget v5, Lcom/loc/ec;->b:I

    invoke-virtual {v3, v4, v5}, Lcom/loc/ec;->a(ZI)V

    :goto_3
    iget-object v3, p0, Lcom/loc/dn;->Q:Lcom/loc/do;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/loc/dn;->Q:Lcom/loc/do;

    invoke-virtual {v3}, Lcom/loc/do;->d()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    invoke-virtual {p2, v0, v1}, Lcom/loc/dm;->b(J)V

    const-string v0, ""

    if-eqz v2, :cond_6

    iget-object v0, v2, Lcom/loc/aw;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "#csid:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/loc/aw;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v0, v2, Lcom/loc/aw;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/loc/dn;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/loc/ds;->h(Ljava/lang/String;)V

    :cond_6
    invoke-direct {p0, v8, v2, p2}, Lcom/loc/dn;->a(Lcom/loc/ds;Lcom/loc/aw;Lcom/loc/dm;)Lcom/loc/ds;

    move-result-object v1

    if-eqz v1, :cond_11

    move-object v0, v1

    :goto_4
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#0301"

    invoke-virtual {p2, v1}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get parames error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#0301"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v1, 0x7ef

    invoke-static {v0, v1}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/dn;->a(ILjava/lang/String;)Lcom/loc/ds;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/dn;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/ds;->h(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    sget v6, Lcom/loc/ec;->b:I

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/loc/dn;->a(Lcom/loc/dm;Lcom/loc/ef;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/loc/l;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/loc/dn;->o:Lcom/loc/ee;

    const/4 v1, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/loc/ee;->a(Lcom/loc/ef;I)Lcom/loc/aw;

    move-result-object v2

    :goto_5
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    const-string v3, "SUCCESS"

    invoke-virtual {p2, v3}, Lcom/loc/dm;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/ec;->a(Landroid/content/Context;)Lcom/loc/ec;

    move-result-object v3

    sget v4, Lcom/loc/ec;->b:I

    invoke-virtual {v3, v4}, Lcom/loc/ec;->a(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v1

    invoke-static {}, Lcom/loc/ep;->b()J

    const-string v0, "FAIL"

    invoke-virtual {p2, v0}, Lcom/loc/dm;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/ec;->a(Landroid/content/Context;)Lcom/loc/ec;

    move-result-object v0

    const/4 v2, 0x0

    sget v3, Lcom/loc/ec;->a:I

    invoke-virtual {v0, v2, v3}, Lcom/loc/ec;->a(ZI)V

    const-string v0, "Aps"

    const-string v2, "getApsLoc req"

    invoke-static {v1, v0, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/mobile/binary"

    invoke-static {v0, v1}, Lcom/loc/en;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/ep;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "#0401"

    invoke-virtual {p2, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u672a\u8fde\u63a5\u5230\u7f51\u7edc\uff0c\u8bf7\u8fde\u63a5\u7f51\u7edc#0401"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/dn;->a(ILjava/lang/String;)Lcom/loc/ds;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/dn;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/ds;->h(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    :try_start_6
    iget-object v0, p0, Lcom/loc/dn;->o:Lcom/loc/ee;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/loc/ee;->a(Lcom/loc/ef;I)Lcom/loc/aw;

    move-result-object v2

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/loc/dn;->o:Lcom/loc/ee;

    invoke-virtual {v0, v2}, Lcom/loc/ee;->a(Lcom/loc/ef;)Lcom/loc/aw;

    move-result-object v2

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    const-string v3, "SUCCESS"

    invoke-virtual {p2, v3}, Lcom/loc/dm;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    const-string v0, "v4"

    invoke-virtual {p2, v0}, Lcom/loc/dm;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/ec;->a(Landroid/content/Context;)Lcom/loc/ec;

    move-result-object v0

    sget v1, Lcom/loc/ec;->a:I

    invoke-virtual {v0, v2, v1}, Lcom/loc/ec;->a(Lcom/loc/ef;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    move-result v0

    if-nez v0, :cond_b

    :try_start_7
    iget-object v0, p0, Lcom/loc/dn;->o:Lcom/loc/ee;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/loc/ee;->a(Lcom/loc/ef;I)Lcom/loc/aw;

    move-result-object v6

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    invoke-virtual {p2, v5}, Lcom/loc/dm;->b(Ljava/lang/String;)V

    const-string v7, "SUCCESS"

    invoke-virtual {p2, v7}, Lcom/loc/dm;->c(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/loc/ec;->a(Landroid/content/Context;)Lcom/loc/ec;

    move-result-object v7

    const/4 v9, 0x1

    sget v10, Lcom/loc/ec;->a:I

    invoke-virtual {v7, v9, v10}, Lcom/loc/ec;->a(ZI)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    move-object v2, v6

    :goto_7
    :try_start_8
    iget-object v3, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/ec;->a(Landroid/content/Context;)Lcom/loc/ec;

    move-result-object v3

    const/4 v4, 0x1

    sget v5, Lcom/loc/ec;->a:I

    invoke-virtual {v3, v4, v5}, Lcom/loc/ec;->a(ZI)V

    goto/16 :goto_3

    :catch_3
    move-exception v0

    sget v6, Lcom/loc/ec;->a:I

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/loc/dn;->a(Lcom/loc/dm;Lcom/loc/ef;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/loc/dn;->o:Lcom/loc/ee;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/loc/ee;->a(Lcom/loc/ef;I)Lcom/loc/aw;

    move-result-object v2

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    const-string v3, "SUCCESS"

    invoke-virtual {p2, v3}, Lcom/loc/dm;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/ec;->a(Landroid/content/Context;)Lcom/loc/ec;

    move-result-object v3

    sget v4, Lcom/loc/ec;->a:I

    invoke-virtual {v3, v4}, Lcom/loc/ec;->a(I)V

    goto :goto_7

    :cond_b
    iget-object v0, p0, Lcom/loc/dn;->o:Lcom/loc/ee;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/loc/ee;->a(Lcom/loc/ef;I)Lcom/loc/aw;

    move-result-object v2

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    const-string v3, "SUCCESS"

    invoke-virtual {p2, v3}, Lcom/loc/dm;->d(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_7

    :cond_c
    instance-of v0, v1, Lcom/loc/j;

    if-eqz v0, :cond_10

    move-object v0, v1

    check-cast v0, Lcom/loc/j;

    invoke-virtual {v0}, Lcom/loc/j;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "#0404"

    invoke-virtual {p2, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v2, "\u7f51\u7edc\u5f02\u5e38\uff0c\u72b6\u6001\u7801\u9519\u8bef#0404"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast v1, Lcom/loc/j;

    invoke-virtual {v1}, Lcom/loc/j;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_d
    move-object v0, v1

    check-cast v0, Lcom/loc/j;

    invoke-virtual {v0}, Lcom/loc/j;->f()I

    move-result v0

    const/16 v2, 0x17

    if-eq v0, v2, :cond_e

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/dn;->l:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v0, v2, v4

    if-gez v0, :cond_f

    :cond_e
    const-string v0, "#0402"

    invoke-virtual {p2, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8fde\u63a5\u8d85\u65f6#0402"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "#0403,"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u6c42\u5f02\u5e38#0403"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "#0403,"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u6c42\u5f02\u5e38#0403"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_11
    iget-object v1, v2, Lcom/loc/aw;->a:[B

    invoke-static {v1}, Lcom/loc/dy;->b([B)[B

    move-result-object v1

    if-nez v1, :cond_12

    const/4 v1, 0x5

    invoke-virtual {v8, v1}, Lcom/loc/ds;->setErrorCode(I)V

    const-string v1, "#0503"

    invoke-virtual {p2, v1}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v2, "\u89e3\u5bc6\u6570\u636e\u5931\u8d25#0503"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/loc/ds;->setLocationDetail(Ljava/lang/String;)V

    const/16 v1, 0x805

    invoke-static {v0, v1}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    move-object v0, v8

    goto/16 :goto_4

    :cond_12
    iget-object v2, p0, Lcom/loc/dn;->g:Lcom/loc/eg;

    invoke-virtual {v2, v8, v1, p2}, Lcom/loc/eg;->a(Lcom/loc/ds;[BLcom/loc/dm;)Lcom/loc/ds;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/ep;->a(Lcom/loc/ds;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v1}, Lcom/loc/ds;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/dn;->J:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/dn;->J:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    const/16 v2, 0x80e

    invoke-static {v0, v2}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    :goto_8
    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/loc/ds;->setErrorCode(I)V

    const-string v0, "#0601"

    invoke-virtual {p2, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "location faile retype:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/loc/ds;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " rdesc:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/loc/dn;->J:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, ""

    :goto_9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#0601"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/dn;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/loc/ds;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/loc/ds;->setLocationDetail(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_4

    :cond_13
    const/16 v2, 0x80d

    invoke-static {v0, v2}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    goto :goto_8

    :cond_14
    iget-object v0, p0, Lcom/loc/dn;->J:Ljava/lang/String;

    goto :goto_9

    :cond_15
    invoke-virtual {v1}, Lcom/loc/ds;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v1}, Lcom/loc/ds;->getLocationType()I

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "-5"

    invoke-virtual {v1}, Lcom/loc/ds;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "1"

    invoke-virtual {v1}, Lcom/loc/ds;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "2"

    invoke-virtual {v1}, Lcom/loc/ds;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "14"

    invoke-virtual {v1}, Lcom/loc/ds;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "24"

    invoke-virtual {v1}, Lcom/loc/ds;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "-1"

    invoke-virtual {v1}, Lcom/loc/ds;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/loc/ds;->setLocationType(I)V

    :cond_17
    :goto_a
    iget-boolean v0, p0, Lcom/loc/dn;->r:Z

    invoke-virtual {v1, v0}, Lcom/loc/ds;->setOffset(Z)V

    iget-boolean v0, p0, Lcom/loc/dn;->q:Z

    invoke-virtual {v1, v0}, Lcom/loc/ds;->a(Z)V

    iget-object v0, p0, Lcom/loc/dn;->s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/loc/ds;->f(Ljava/lang/String;)V

    const-string v0, "new"

    invoke-virtual {v1, v0}, Lcom/loc/ds;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/loc/ds;->setLocationDetail(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/loc/ds;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dn;->F:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_4

    :cond_18
    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/loc/ds;->setLocationType(I)V

    goto :goto_a

    :catch_4
    move-exception v0

    goto/16 :goto_0
.end method

.method private c(Lcom/loc/dm;)Ljava/lang/String;
    .locals 10

    const/4 v3, 0x1

    const/16 v9, 0x849

    const/16 v8, 0xc

    const/4 v2, 0x0

    const/4 v7, 0x0

    const-string v4, ""

    const-string v5, "network"

    iget-object v0, p0, Lcom/loc/dn;->d:Lcom/loc/dw;

    invoke-virtual {v0}, Lcom/loc/dw;->f()I

    move-result v1

    iget-object v0, p0, Lcom/loc/dn;->d:Lcom/loc/dw;

    invoke-virtual {v0}, Lcom/loc/dw;->d()Lcom/loc/dv;

    move-result-object v6

    iget-object v0, p0, Lcom/loc/dn;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dn;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v3

    :goto_0
    if-nez v6, :cond_e

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/loc/dn;->b:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-static {v0, v1}, Lcom/loc/ep;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/loc/dn;->b:Landroid/net/ConnectivityManager;

    :cond_1
    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/ep;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    iget-boolean v0, v0, Lcom/loc/dx;->q:Z

    if-nez v0, :cond_3

    const/16 v0, 0x12

    iput v0, p0, Lcom/loc/dn;->A:I

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u98de\u884c\u6a21\u5f0f\u4e0b\u5173\u95ed\u4e86WIFI\u5f00\u5173\uff0c\u8bf7\u5173\u95ed\u98de\u884c\u6a21\u5f0f\u6216\u8005\u6253\u5f00WIFI\u5f00\u5173#1801"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x854

    invoke-static {v7, v0}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    const-string v0, "#1801"

    invoke-virtual {p1, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    :goto_1
    return-object v4

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/loc/ep;->c()I

    move-result v0

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/loc/dn;->H:Landroid/location/LocationManager;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/loc/dn;->H:Landroid/location/LocationManager;

    :cond_4
    iget-object v0, p0, Lcom/loc/dn;->H:Landroid/location/LocationManager;

    const-string v1, "isLocationEnabled"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/loc/em;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iput v8, p0, Lcom/loc/dn;->A:I

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u5b9a\u4f4d\u670d\u52a1\u6ca1\u6709\u5f00\u542f\uff0c\u8bf7\u5728\u8bbe\u7f6e\u4e2d\u6253\u5f00\u5b9a\u4f4d\u670d\u52a1\u5f00\u5173#1206"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#1206"

    invoke-virtual {p1, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    invoke-static {v7, v9}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/ep;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    iput v8, p0, Lcom/loc/dn;->A:I

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u5b9a\u4f4d\u6743\u9650\u88ab\u7981\u7528,\u8bf7\u6388\u4e88\u5e94\u7528\u5b9a\u4f4d\u6743\u9650#1201"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#1201"

    invoke-virtual {p1, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    invoke-static {v7, v9}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/loc/ep;->c()I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_7

    invoke-static {}, Lcom/loc/ep;->c()I

    move-result v0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_7

    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_7

    iput v8, p0, Lcom/loc/dn;->A:I

    const-string v0, "#1206"

    invoke-virtual {p1, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u5b9a\u4f4d\u670d\u52a1\u6ca1\u6709\u5f00\u542f\uff0c\u8bf7\u5728\u8bbe\u7f6e\u4e2d\u6253\u5f00\u5b9a\u4f4d\u670d\u52a1\u5f00\u5173#1206"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v9}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/loc/dn;->d:Lcom/loc/dw;

    invoke-virtual {v0}, Lcom/loc/dw;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    invoke-virtual {v1}, Lcom/loc/dx;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    iget-object v3, p0, Lcom/loc/dn;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v3}, Lcom/loc/dx;->a(Landroid/net/ConnectivityManager;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    iput v8, p0, Lcom/loc/dn;->A:I

    const-string v0, "#1202"

    invoke-virtual {p1, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u57fa\u7ad9\u4e0e\u83b7\u53d6WIFI\u7684\u6743\u9650\u90fd\u88ab\u7981\u7528\uff0c\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650#1202"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v9}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_8
    if-eqz v0, :cond_a

    iput v8, p0, Lcom/loc/dn;->A:I

    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    iget-boolean v0, v0, Lcom/loc/dx;->q:Z

    if-nez v0, :cond_9

    const-string v0, "#1204"

    invoke-virtual {p1, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "WIFI\u5f00\u5173\u5173\u95ed\uff0c\u5e76\u4e14\u83b7\u53d6\u57fa\u7ad9\u6743\u9650\u88ab\u7981\u7528\uff0c\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650\u6216\u8005\u6253\u5f00WIFI\u5f00\u5173#1204"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-static {v7, v9}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_9
    const-string v0, "#1205"

    invoke-virtual {p1, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u7684WIFI\u5217\u8868\u4e3a\u7a7a\uff0c\u5e76\u4e14\u83b7\u53d6\u57fa\u7ad9\u6743\u9650\u88ab\u7981\u7528\uff0c\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650#1205"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    iget-boolean v0, v0, Lcom/loc/dx;->q:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/loc/dn;->d:Lcom/loc/dw;

    invoke-virtual {v0}, Lcom/loc/dw;->n()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0x13

    iput v0, p0, Lcom/loc/dn;->A:I

    const-string v0, "#1901"

    invoke-virtual {p1, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u6ca1\u6709\u68c0\u67e5\u5230SIM\u5361\uff0c\u5e76\u4e14WIFI\u5f00\u5173\u5173\u95ed\uff0c\u8bf7\u6253\u5f00WIFI\u5f00\u5173\u6216\u8005\u63d2\u5165SIM\u5361#1901"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x855

    invoke-static {v7, v0}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/ep;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    iput v8, p0, Lcom/loc/dn;->A:I

    const-string v0, "#1207"

    invoke-virtual {p1, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u540e\u53f0\u5b9a\u4f4d\u670d\u52a1\u6ca1\u6709\u5f00\u542f\uff0c\u8bf7\u5728\u8bbe\u7f6e\u4e2d\u6253\u5f00\u540e\u53f0\u5b9a\u4f4d\u670d\u52a1\u5f00\u5173#1207"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v9}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    iget-boolean v0, v0, Lcom/loc/dx;->q:Z

    if-nez v0, :cond_d

    const-string v0, "#1301"

    invoke-virtual {p1, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u5230\u7684\u57fa\u7ad9\u4e3a\u7a7a\uff0c\u5e76\u4e14\u5173\u95ed\u4e86WIFI\u5f00\u5173\uff0c\u8bf7\u60a8\u6253\u5f00WIFI\u5f00\u5173\u518d\u53d1\u8d77\u5b9a\u4f4d#1301"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const/16 v0, 0xd

    iput v0, p0, Lcom/loc/dn;->A:I

    const/16 v0, 0x853

    invoke-static {v7, v0}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_d
    const-string v0, "#1302"

    invoke-virtual {p1, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u5230\u7684\u57fa\u7ad9\u548cWIFI\u4fe1\u606f\u5747\u4e3a\u7a7a\uff0c\u8bf7\u79fb\u52a8\u5230\u6709WIFI\u7684\u533a\u57df\uff0c\u82e5\u786e\u5b9a\u5f53\u524d\u533a\u57df\u6709WIFI\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6388\u4e88APP\u5b9a\u4f4d\u6743\u9650#1302"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_e
    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    invoke-virtual {v0}, Lcom/loc/dx;->k()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dn;->v:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/loc/dn;->v:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/loc/dx;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/loc/dn;->w:Z

    packed-switch v1, :pswitch_data_0

    const/16 v0, 0xb

    iput v0, p0, Lcom/loc/dn;->A:I

    const/16 v0, 0x83f

    invoke-static {v7, v0}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    const-string v0, "#1101"

    invoke-virtual {p1, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "get cgi failure#1101"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    move-object v0, v4

    :cond_10
    :goto_4
    const-string v1, "#"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/loc/ep;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_12
    move-object v4, v0

    goto/16 :goto_1

    :pswitch_0
    if-eqz v6, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v6, Lcom/loc/dv;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v6, Lcom/loc/dv;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v6, Lcom/loc/dv;->c:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v6, Lcom/loc/dv;->d:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/dn;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/loc/dn;->w:Z

    if-eqz v0, :cond_14

    :cond_13
    const-string v0, "cgiwifi"

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_14
    const-string v0, "cgi"

    goto :goto_5

    :pswitch_1
    if-eqz v6, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v6, Lcom/loc/dv;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v6, Lcom/loc/dv;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v6, Lcom/loc/dv;->g:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v6, Lcom/loc/dv;->h:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v6, Lcom/loc/dv;->i:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/dn;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/loc/dn;->w:Z

    if-eqz v0, :cond_16

    :cond_15
    const-string v0, "cgiwifi"

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_16
    const-string v0, "cgi"

    goto :goto_6

    :pswitch_2
    iget-object v0, p0, Lcom/loc/dn;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/loc/dn;->w:Z

    if-eqz v0, :cond_1d

    :cond_17
    move v1, v3

    :goto_7
    iget-boolean v0, p0, Lcom/loc/dn;->w:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/loc/dn;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    iput v0, p0, Lcom/loc/dn;->A:I

    const-string v0, "#0201"

    invoke-virtual {p1, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9\uff0c\u5e76\u4e14WIFI\u6743\u9650\u88ab\u7981\u7528\uff0c\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650#0201"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7e5

    invoke-static {v7, v0}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_18
    iget-object v0, p0, Lcom/loc/dn;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_1a

    const/4 v0, 0x2

    iput v0, p0, Lcom/loc/dn;->A:I

    iget-boolean v0, p0, Lcom/loc/dn;->w:Z

    if-nez v0, :cond_19

    const-string v0, "#0202"

    invoke-virtual {p1, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9\uff0c\u5e76\u4e14\u641c\u5230\u7684WIFI\u6570\u91cf\u4e0d\u8db3\uff0c\u8bf7\u79fb\u52a8\u5230WIFI\u6bd4\u8f83\u4e30\u5bcc\u7684\u533a\u57df#0202"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7e6

    invoke-static {v7, v0}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_19
    iget-object v0, p0, Lcom/loc/dn;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v6, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    invoke-virtual {v6}, Lcom/loc/dx;->k()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "#0202"

    invoke-virtual {p1, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9\uff0c\u5e76\u4e14\u641c\u5230\u7684WIFI\u6570\u91cf\u4e0d\u8db3\uff0c\u8bf7\u79fb\u52a8\u5230WIFI\u6bd4\u8f83\u4e30\u5bcc\u7684\u533a\u57df#0202"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7e5

    invoke-static {v7, v0}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_1a
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "#%s#"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_1b
    const-string v1, "network"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v0, ""

    const/4 v1, 0x2

    iput v1, p0, Lcom/loc/dn;->A:I

    iget-object v1, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    iget-boolean v1, v1, Lcom/loc/dx;->q:Z

    if-nez v1, :cond_1c

    const-string v1, "#0203"

    invoke-virtual {p1, v1}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9,\u5e76\u4e14\u5173\u95ed\u4e86WIFI\u5f00\u5173\uff0c\u8bf7\u5728\u8bbe\u7f6e\u4e2d\u6253\u5f00WIFI\u5f00\u5173#0203"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    const/16 v1, 0x7e6

    invoke-static {v7, v1}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_1c
    const-string v1, "#0204"

    invoke-virtual {p1, v1}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9,\u5e76\u4e14\u6ca1\u6709\u641c\u7d22\u5230WIFI\uff0c\u8bf7\u79fb\u52a8\u5230WIFI\u6bd4\u8f83\u4e30\u5bcc\u7684\u533a\u57df#0204"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_1d
    move v1, v2

    goto/16 :goto_7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c(Lcom/loc/ds;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/loc/dn;->k:Lcom/loc/ds;

    :cond_0
    return-void
.end method

.method private i()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/loc/dn;->o:Lcom/loc/ee;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v2, :cond_0

    new-instance v2, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v2}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v2, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_0
    iget-object v2, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/loc/dn$1;->a:[I

    iget-object v3, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/loc/dn;->o:Lcom/loc/ee;

    iget-object v4, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v4

    iget-object v6, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v6}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationProtocol()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    move-result-object v6

    sget-object v7, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTPS:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-virtual {v6, v7}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/loc/ee;->a(JZI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    return-void

    :pswitch_0
    move v2, v1

    goto :goto_0

    :pswitch_1
    move v2, v0

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private j()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/dn;->i:Lcom/loc/dn$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/dn$a;

    invoke-direct {v0, p0}, Lcom/loc/dn$a;-><init>(Lcom/loc/dn;)V

    iput-object v0, p0, Lcom/loc/dn;->i:Lcom/loc/dn$a;

    :cond_0
    iget-object v0, p0, Lcom/loc/dn;->G:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/loc/dn;->G:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/loc/dn;->G:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->G:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/dn;->i:Lcom/loc/dn$a;

    iget-object v2, p0, Lcom/loc/dn;->G:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Aps"

    const-string v2, "initBroadcastListener"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private k()Z
    .locals 2

    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    invoke-virtual {v0}, Lcom/loc/dx;->e()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dn;->h:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/loc/dn;->h:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/dn;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method public final a(DD)Lcom/loc/ds;
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/loc/dn;->o:Lcom/loc/ee;

    iget-object v1, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/loc/ee;->a(Landroid/content/Context;DD)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\"status\":\"1\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/dn;->g:Lcom/loc/eg;

    invoke-virtual {v1, v0}, Lcom/loc/eg;->a(Ljava/lang/String;)Lcom/loc/ds;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/loc/ds;->setLatitude(D)V

    invoke-virtual {v0, p3, p4}, Lcom/loc/ds;->setLongitude(D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/loc/dm;)Lcom/loc/ds;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/loc/dn;->c()V

    const-string v0, "conitue"

    invoke-virtual {p1, v0}, Lcom/loc/dm;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "#0101"

    invoke-virtual {p1, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "context is null#0101"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/dn;->a(ILjava/lang/String;)Lcom/loc/ds;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/loc/dn;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loc/dn;->I:I

    iget v0, p0, Lcom/loc/dn;->I:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    iget-boolean v1, p0, Lcom/loc/dn;->n:Z

    invoke-virtual {v0, v1}, Lcom/loc/dx;->a(Z)V

    :cond_1
    iget-wide v2, p0, Lcom/loc/dn;->l:J

    iget-boolean v0, p0, Lcom/loc/dn;->M:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/dn;->M:Z

    const/4 v0, 0x0

    :cond_2
    :goto_1
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/loc/dn;->k:Lcom/loc/ds;

    invoke-static {v0}, Lcom/loc/ep;->a(Lcom/loc/ds;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/loc/dn;->t:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/dn;->k:Lcom/loc/ds;

    invoke-virtual {v0}, Lcom/loc/ds;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/loc/ei;->a(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/dn;->k:Lcom/loc/ds;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/loc/ds;->setLocationType(I)V

    :cond_3
    iget-object v0, p0, Lcom/loc/dn;->k:Lcom/loc/ds;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v4, 0x320

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/loc/dn;->k:Lcom/loc/ds;

    invoke-static {v1}, Lcom/loc/ep;->a(Lcom/loc/ds;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/loc/ep;->a()J

    move-result-wide v2

    iget-object v1, p0, Lcom/loc/dn;->k:Lcom/loc/ds;

    invoke-virtual {v1}, Lcom/loc/ds;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    :cond_5
    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/loc/dn;->B:Lcom/loc/dt;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/loc/dn;->C:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/loc/dn;->B:Lcom/loc/dt;

    invoke-virtual {v0}, Lcom/loc/dt;->a()V

    :cond_7
    :goto_2
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocationLatest()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    const/4 v0, 0x1

    :cond_9
    iget-object v1, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    invoke-virtual {v1, v0}, Lcom/loc/dx;->b(Z)V

    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    invoke-virtual {v0}, Lcom/loc/dx;->e()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dn;->h:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    :try_start_1
    iget-object v0, p0, Lcom/loc/dn;->d:Lcom/loc/dw;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/loc/dn;->k()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/loc/dw;->a(ZZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    invoke-direct {p0, p1}, Lcom/loc/dn;->c(Lcom/loc/dm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dn;->L:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/dn;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/loc/dn;->A:I

    iget-object v1, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/dn;->a(ILjava/lang/String;)Lcom/loc/ds;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/loc/dn;->B:Lcom/loc/dt;

    invoke-virtual {v0}, Lcom/loc/dt;->b()V

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Aps"

    const-string v2, "getLocation getScanResultsParam"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "Aps"

    const-string v2, "getLocation getCgiListParam"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/loc/dn;->x:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/loc/dn;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dn;->x:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    invoke-virtual {v0}, Lcom/loc/dx;->l()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xf

    const-string v1, "networkLocation has been mocked!#1502"

    invoke-static {v0, v1}, Lcom/loc/dn;->a(ILjava/lang/String;)Lcom/loc/ds;

    move-result-object v0

    const-string v1, "#1502"

    invoke-virtual {p1, v1}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/loc/ds;->setMock(Z)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/loc/ds;->setTrustedLevel(I)V

    goto/16 :goto_0

    :cond_c
    iget-wide v0, p0, Lcom/loc/dn;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const/4 v2, 0x1

    :goto_5
    iget-object v0, p0, Lcom/loc/dn;->e:Lcom/loc/dz;

    iget-object v1, p0, Lcom/loc/dn;->d:Lcom/loc/dw;

    iget-object v3, p0, Lcom/loc/dn;->k:Lcom/loc/ds;

    iget-object v4, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    iget-object v5, p0, Lcom/loc/dn;->x:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/loc/dn;->L:Ljava/lang/String;

    iget-object v7, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/loc/dz;->a(Lcom/loc/dw;ZLcom/loc/ds;Lcom/loc/dx;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/content/Context;Z)Lcom/loc/ds;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/ep;->a(Lcom/loc/ds;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/loc/ds;->setTrustedLevel(I)V

    invoke-direct {p0, v3}, Lcom/loc/dn;->c(Lcom/loc/ds;)V

    :goto_6
    :try_start_2
    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    if-eqz v0, :cond_d

    if-eqz v3, :cond_d

    invoke-static {}, Lcom/loc/dx;->b()J

    move-result-wide v0

    const-wide/16 v4, 0xf

    cmp-long v2, v0, v4

    if-gtz v2, :cond_13

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/loc/ds;->setTrustedLevel(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_d
    :goto_7
    iget-object v0, p0, Lcom/loc/dn;->e:Lcom/loc/dz;

    iget-object v1, p0, Lcom/loc/dn;->L:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/dn;->x:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/loc/dz;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/loc/ds;Landroid/content/Context;Z)V

    invoke-static {v3}, Lcom/loc/ep;->a(Lcom/loc/ds;)Z

    iget-object v0, p0, Lcom/loc/dn;->x:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/loc/dn;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_e

    iget-boolean v0, p0, Lcom/loc/dn;->C:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/loc/dn;->B:Lcom/loc/dt;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/loc/dn;->B:Lcom/loc/dt;

    iget-wide v0, v0, Lcom/loc/dt;->f:D

    invoke-virtual {v3, v0, v1}, Lcom/loc/ds;->setAltitude(D)V

    iget-object v0, p0, Lcom/loc/dn;->B:Lcom/loc/dt;

    invoke-virtual {v0}, Lcom/loc/dt;->c()F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/loc/ds;->setBearing(F)V

    iget-object v0, p0, Lcom/loc/dn;->B:Lcom/loc/dt;

    invoke-virtual {v0}, Lcom/loc/dt;->d()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {v3, v0}, Lcom/loc/ds;->setSpeed(F)V

    :cond_e
    :goto_8
    invoke-direct {p0, v3}, Lcom/loc/dn;->c(Lcom/loc/ds;)V

    iget-object v0, p0, Lcom/loc/dn;->k:Lcom/loc/ds;

    goto/16 :goto_0

    :cond_f
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/loc/dn;->l:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    const/4 v2, 0x1

    goto/16 :goto_5

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_11
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/loc/dn;->b(ZLcom/loc/dm;)Lcom/loc/ds;

    move-result-object v9

    invoke-static {v9}, Lcom/loc/ep;->a(Lcom/loc/ds;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "new"

    invoke-virtual {v9, v0}, Lcom/loc/ds;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->e:Lcom/loc/dz;

    iget-object v1, p0, Lcom/loc/dn;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/dz;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->e:Lcom/loc/dz;

    iget-object v1, p0, Lcom/loc/dn;->d:Lcom/loc/dw;

    invoke-virtual {v1}, Lcom/loc/dw;->d()Lcom/loc/dv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/dz;->a(Lcom/loc/dv;)V

    invoke-direct {p0, v9}, Lcom/loc/dn;->c(Lcom/loc/ds;)V

    move-object v3, v9

    goto/16 :goto_6

    :cond_12
    iget-object v0, p0, Lcom/loc/dn;->e:Lcom/loc/dz;

    iget-object v1, p0, Lcom/loc/dn;->d:Lcom/loc/dw;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/loc/dn;->k:Lcom/loc/ds;

    iget-object v4, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    iget-object v5, p0, Lcom/loc/dn;->x:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/loc/dn;->L:Ljava/lang/String;

    iget-object v7, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/loc/dz;->a(Lcom/loc/dw;ZLcom/loc/ds;Lcom/loc/dx;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/content/Context;Z)Lcom/loc/ds;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/ep;->a(Lcom/loc/ds;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "#0001"

    invoke-virtual {p1, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/loc/ds;->setTrustedLevel(I)V

    invoke-direct {p0, v3}, Lcom/loc/dn;->c(Lcom/loc/ds;)V

    goto/16 :goto_6

    :cond_13
    const-wide/16 v4, 0x78

    cmp-long v2, v0, v4

    if-gtz v2, :cond_14

    const/4 v0, 0x2

    :try_start_3
    invoke-virtual {v3, v0}, Lcom/loc/ds;->setTrustedLevel(I)V

    goto/16 :goto_7

    :catch_2
    move-exception v0

    goto/16 :goto_7

    :cond_14
    const-wide/16 v4, 0x258

    cmp-long v0, v0, v4

    if-gtz v0, :cond_15

    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lcom/loc/ds;->setTrustedLevel(I)V

    goto/16 :goto_7

    :cond_15
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/loc/ds;->setTrustedLevel(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_7

    :cond_16
    const-wide/16 v0, 0x0

    invoke-virtual {v3, v0, v1}, Lcom/loc/ds;->setAltitude(D)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/loc/ds;->setBearing(F)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/loc/ds;->setSpeed(F)V

    goto/16 :goto_8

    :cond_17
    move-object v3, v9

    goto/16 :goto_6
.end method

.method public final varargs a(Lcom/loc/ds;)Lcom/loc/ds;
    .locals 2

    iget-object v0, p0, Lcom/loc/dn;->E:Lcom/loc/dr;

    iget-boolean v1, p0, Lcom/loc/dn;->t:Z

    invoke-virtual {v0, v1}, Lcom/loc/dr;->a(Z)V

    iget-object v0, p0, Lcom/loc/dn;->E:Lcom/loc/dr;

    invoke-virtual {v0, p1}, Lcom/loc/dr;->a(Lcom/loc/ds;)Lcom/loc/ds;

    move-result-object v0

    return-object v0
.end method

.method public final a(ZLcom/loc/dm;)Lcom/loc/ds;
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const-string v0, "statics"

    invoke-virtual {p2, v0}, Lcom/loc/dm;->e(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "#0101"

    invoke-virtual {p2, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const-string v1, "context is null#0101"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v1, 0x7db

    invoke-static {v0, v1}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/loc/dn;->a(ILjava/lang/String;)Lcom/loc/ds;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "first"

    invoke-virtual {p2, v0}, Lcom/loc/dm;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    invoke-virtual {v0}, Lcom/loc/dx;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "#1502"

    invoke-virtual {p2, v0}, Lcom/loc/dm;->f(Ljava/lang/String;)V

    const/16 v0, 0xf

    const-string v1, "networkLocation has been mocked!#1502"

    invoke-static {v0, v1}, Lcom/loc/dn;->a(ILjava/lang/String;)Lcom/loc/ds;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/loc/dn;->a()V

    iget-object v0, p0, Lcom/loc/dn;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/loc/dn;->A:I

    iget-object v1, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/dn;->a(ILjava/lang/String;)Lcom/loc/ds;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/loc/dn;->b(ZLcom/loc/dm;)Lcom/loc/ds;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ep;->a(Lcom/loc/ds;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/loc/dn;->P:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/loc/dn;->e:Lcom/loc/dz;

    iget-object v2, p0, Lcom/loc/dn;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loc/dz;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/dn;->e:Lcom/loc/dz;

    iget-object v2, p0, Lcom/loc/dn;->d:Lcom/loc/dw;

    invoke-virtual {v2}, Lcom/loc/dw;->d()Lcom/loc/dv;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loc/dz;->a(Lcom/loc/dv;)V

    invoke-direct {p0, v0}, Lcom/loc/dn;->c(Lcom/loc/ds;)V

    :cond_4
    sput-boolean v3, Lcom/loc/dn;->P:Z

    goto :goto_1
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/ee;->a(Landroid/content/Context;)Lcom/loc/ee;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dn;->o:Lcom/loc/ee;

    invoke-direct {p0}, Lcom/loc/dn;->i()V

    iget-object v0, p0, Lcom/loc/dn;->b:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-static {v0, v1}, Lcom/loc/ep;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/loc/dn;->b:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v0, p0, Lcom/loc/dn;->m:Lcom/loc/eh;

    if-nez v0, :cond_1

    new-instance v0, Lcom/loc/eh;

    invoke-direct {v0}, Lcom/loc/eh;-><init>()V

    iput-object v0, p0, Lcom/loc/dn;->m:Lcom/loc/eh;

    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/loc/dr;

    invoke-direct {v0}, Lcom/loc/dr;-><init>()V

    iput-object v0, p0, Lcom/loc/dn;->E:Lcom/loc/dr;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/ep;->b(Landroid/content/Context;)Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-static {v0, v1}, Lcom/loc/ep;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/loc/dx;

    iget-object v2, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/loc/dx;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    iput-object v1, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    :cond_2
    iget-object v0, p0, Lcom/loc/dn;->d:Lcom/loc/dw;

    if-nez v0, :cond_3

    new-instance v0, Lcom/loc/dw;

    iget-object v1, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/dw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/dn;->d:Lcom/loc/dw;

    :cond_3
    iget-object v0, p0, Lcom/loc/dn;->e:Lcom/loc/dz;

    if-nez v0, :cond_4

    new-instance v0, Lcom/loc/dz;

    invoke-direct {v0}, Lcom/loc/dz;-><init>()V

    iput-object v0, p0, Lcom/loc/dn;->e:Lcom/loc/dz;

    :cond_4
    iget-object v0, p0, Lcom/loc/dn;->g:Lcom/loc/eg;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/eg;

    invoke-direct {v0}, Lcom/loc/eg;-><init>()V

    iput-object v0, p0, Lcom/loc/dn;->g:Lcom/loc/eg;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Aps"

    const-string v2, "initBase"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/dn;->N:Landroid/os/Handler;

    return-void
.end method

.method public final a(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 7

    const/4 v6, 0x1

    iput-object p1, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_0
    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    iget-object v1, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isWifiActiveScan()Z

    iget-object v1, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isWifiScan()Z

    move-result v1

    iget-object v2, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isMockEnable()Z

    move-result v2

    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->isOpenAlwaysScanWifi()Z

    move-result v3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->getScanWifiInterval()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/loc/dx;->a(ZZZJ)V

    :cond_1
    invoke-direct {p0}, Lcom/loc/dn;->i()V

    iget-object v0, p0, Lcom/loc/dn;->e:Lcom/loc/dz;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/dn;->e:Lcom/loc/dz;

    iget-object v1, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/loc/dz;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    :cond_2
    iget-object v0, p0, Lcom/loc/dn;->g:Lcom/loc/eg;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/dn;->g:Lcom/loc/eg;

    iget-object v1, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/loc/eg;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    :cond_3
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    :try_start_0
    iget-object v1, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    :try_start_1
    iget-object v1, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result v3

    :try_start_2
    iget-object v1, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    move-result v1

    :try_start_3
    iget-object v4, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocationLatest()Z

    move-result v4

    iput-boolean v4, p0, Lcom/loc/dn;->u:Z

    iget-object v4, p0, Lcom/loc/dn;->j:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->isSensorEnable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/loc/dn;->C:Z

    iget-boolean v4, p0, Lcom/loc/dn;->r:Z

    if-ne v3, v4, :cond_4

    iget-boolean v4, p0, Lcom/loc/dn;->q:Z

    if-ne v2, v4, :cond_4

    iget-boolean v4, p0, Lcom/loc/dn;->t:Z

    if-ne v1, v4, :cond_4

    iget-object v4, p0, Lcom/loc/dn;->s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    if-eq v0, v4, :cond_6

    :cond_4
    :try_start_4
    iget-object v4, p0, Lcom/loc/dn;->e:Lcom/loc/dz;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/loc/dn;->e:Lcom/loc/dz;

    invoke-virtual {v4}, Lcom/loc/dz;->a()V

    :cond_5
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/loc/dn;->c(Lcom/loc/ds;)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/loc/dn;->M:Z

    iget-object v4, p0, Lcom/loc/dn;->E:Lcom/loc/dr;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/loc/dn;->E:Lcom/loc/dr;

    invoke-virtual {v4}, Lcom/loc/dr;->a()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :cond_6
    :goto_0
    iput-boolean v3, p0, Lcom/loc/dn;->r:Z

    iput-boolean v2, p0, Lcom/loc/dn;->q:Z

    iput-boolean v1, p0, Lcom/loc/dn;->t:Z

    iput-object v0, p0, Lcom/loc/dn;->s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    return-void

    :catch_0
    move-exception v4

    :try_start_5
    const-string v5, "Aps"

    const-string v6, "cleanCache"

    invoke-static {v4, v5, v6}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    :catch_2
    move-exception v1

    move v1, v6

    move v2, v6

    move v3, v6

    goto :goto_0

    :catch_3
    move-exception v1

    move v1, v6

    move v3, v6

    goto :goto_0

    :catch_4
    move-exception v1

    move v1, v6

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/dn;->B:Lcom/loc/dt;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/dt;

    iget-object v1, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/dt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/dn;->B:Lcom/loc/dt;

    :cond_0
    invoke-direct {p0}, Lcom/loc/dn;->j()V

    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    invoke-virtual {v0, v2}, Lcom/loc/dx;->b(Z)V

    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    invoke-virtual {v0}, Lcom/loc/dx;->e()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dn;->h:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/loc/dn;->d:Lcom/loc/dw;

    invoke-direct {p0}, Lcom/loc/dn;->k()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/loc/dw;->a(ZZ)V

    iget-object v0, p0, Lcom/loc/dn;->e:Lcom/loc/dz;

    iget-object v1, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/dz;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    :try_start_0
    const-string v1, "EYW5kcm9pZC5wZXJtaXNzaW9uLldSSVRFX1NFQ1VSRV9TRVRUSU5HUw=="

    invoke-static {v1}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/dn;->n:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/loc/dn;->z:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b(Lcom/loc/dm;)V
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/dn;->y:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/dn;->L:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/dn;->L:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/loc/dn;->x:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/dn;->x:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/loc/dn;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v0, p0, Lcom/loc/dn;->u:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/loc/dn;->j()V

    :cond_3
    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    iget-boolean v1, p0, Lcom/loc/dn;->u:Z

    invoke-virtual {v0, v1}, Lcom/loc/dx;->b(Z)V

    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    invoke-virtual {v0}, Lcom/loc/dx;->e()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dn;->h:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/loc/dn;->d:Lcom/loc/dw;

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/loc/dn;->k()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/loc/dw;->a(ZZ)V

    invoke-direct {p0, p1}, Lcom/loc/dn;->c(Lcom/loc/dm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dn;->L:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/dn;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/loc/dn;->x:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/loc/dn;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dn;->x:Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    iput-boolean v3, p0, Lcom/loc/dn;->y:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Aps"

    const-string v2, "initFirstLocateParam"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final b(Lcom/loc/ds;)V
    .locals 6

    invoke-static {p1}, Lcom/loc/ep;->a(Lcom/loc/ds;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dn;->e:Lcom/loc/dz;

    iget-object v1, p0, Lcom/loc/dn;->L:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/dn;->x:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    const/4 v5, 0x1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/loc/dz;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/loc/ds;Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/loc/dn;->F:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/loc/dn;->y:Z

    iput-boolean v0, p0, Lcom/loc/dn;->z:Z

    iget-object v0, p0, Lcom/loc/dn;->e:Lcom/loc/dz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dn;->e:Lcom/loc/dz;

    iget-object v1, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/dz;->b(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/loc/dn;->E:Lcom/loc/dr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/dn;->E:Lcom/loc/dr;

    invoke-virtual {v0}, Lcom/loc/dr;->a()V

    :cond_1
    iget-object v0, p0, Lcom/loc/dn;->g:Lcom/loc/eg;

    if-eqz v0, :cond_2

    iput-object v3, p0, Lcom/loc/dn;->g:Lcom/loc/eg;

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/dn;->i:Lcom/loc/dn$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/dn;->i:Lcom/loc/dn$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iput-object v3, p0, Lcom/loc/dn;->i:Lcom/loc/dn$a;

    :goto_0
    iget-object v0, p0, Lcom/loc/dn;->d:Lcom/loc/dw;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/dn;->d:Lcom/loc/dw;

    invoke-virtual {v0}, Lcom/loc/dw;->h()V

    :cond_4
    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    invoke-virtual {v0}, Lcom/loc/dx;->n()V

    :cond_5
    iget-object v0, p0, Lcom/loc/dn;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/loc/dn;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_6
    iget-object v0, p0, Lcom/loc/dn;->B:Lcom/loc/dt;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/loc/dn;->B:Lcom/loc/dt;

    invoke-virtual {v0}, Lcom/loc/dt;->e()V

    :cond_7
    iput-object v3, p0, Lcom/loc/dn;->k:Lcom/loc/ds;

    iput-object v3, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    iput-object v3, p0, Lcom/loc/dn;->x:Ljava/lang/StringBuilder;

    iput-object v3, p0, Lcom/loc/dn;->H:Landroid/location/LocationManager;

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Aps"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v3, p0, Lcom/loc/dn;->i:Lcom/loc/dn$a;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/loc/dn;->i:Lcom/loc/dn$a;

    throw v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/loc/dn;->Q:Lcom/loc/do;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dn;->Q:Lcom/loc/do;

    invoke-virtual {v0}, Lcom/loc/do;->d()V

    :cond_0
    return-void
.end method

.method public final f()Lcom/loc/ds;
    .locals 5

    iget-object v0, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    invoke-virtual {v0}, Lcom/loc/dx;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    const-string v1, "networkLocation has been mocked!#1502"

    invoke-static {v0, v1}, Lcom/loc/dn;->a(ILjava/lang/String;)Lcom/loc/ds;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/loc/dn;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/loc/dn;->A:I

    iget-object v1, p0, Lcom/loc/dn;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/dn;->a(ILjava/lang/String;)Lcom/loc/ds;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/loc/dn;->e:Lcom/loc/dz;

    iget-object v1, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/dn;->L:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/dn;->x:Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/loc/dz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;Z)Lcom/loc/ds;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ep;->a(Lcom/loc/ds;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/loc/dn;->c(Lcom/loc/ds;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 4

    :try_start_0
    sget-boolean v0, Lcom/loc/ei;->d:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dn;->Q:Lcom/loc/do;

    if-nez v0, :cond_2

    new-instance v0, Lcom/loc/do;

    iget-object v1, p0, Lcom/loc/dn;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/do;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/dn;->Q:Lcom/loc/do;

    :cond_2
    iget-object v0, p0, Lcom/loc/dn;->Q:Lcom/loc/do;

    iget-object v1, p0, Lcom/loc/dn;->d:Lcom/loc/dw;

    iget-object v2, p0, Lcom/loc/dn;->c:Lcom/loc/dx;

    iget-object v3, p0, Lcom/loc/dn;->N:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/do;->a(Lcom/loc/dw;Lcom/loc/dx;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "as"

    const-string v2, "stc"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/loc/dn;->Q:Lcom/loc/do;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dn;->Q:Lcom/loc/do;

    invoke-virtual {v0}, Lcom/loc/do;->a()V

    :cond_0
    return-void
.end method
