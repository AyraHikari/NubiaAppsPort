.class public final Lcom/loc/dw;
.super Ljava/lang/Object;
.source "CgiManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/dw$b;,
        Lcom/loc/dw$a;
    }
.end annotation


# static fields
.field private static r:I

.field private static v:Z


# instance fields
.field a:I

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/dv;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/cw;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/telephony/TelephonyManager;

.field e:J

.field f:Landroid/telephony/CellLocation;

.field g:Z

.field h:Landroid/telephony/PhoneStateListener;

.field i:Ljava/lang/String;

.field j:Z

.field k:Ljava/lang/StringBuilder;

.field private l:Landroid/content/Context;

.field private m:Ljava/lang/String;

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/dv;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:Lcom/loc/du;

.field private q:Ljava/lang/Object;

.field private s:J

.field private t:Landroid/telephony/TelephonyManager$CellInfoCallback;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field

.field private u:Z

.field private w:Lcom/loc/do;

.field private x:Z

.field private y:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/loc/dw;->r:I

    sput-boolean v0, Lcom/loc/dw;->v:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/loc/dw;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/dw;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/dw;->c:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/loc/dw;->m:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/dw;->n:Ljava/util/ArrayList;

    const/16 v0, -0x71

    iput v0, p0, Lcom/loc/dw;->o:I

    iput-object v2, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/loc/dw;->p:Lcom/loc/du;

    iput-wide v4, p0, Lcom/loc/dw;->e:J

    iput-wide v4, p0, Lcom/loc/dw;->s:J

    iput-boolean v3, p0, Lcom/loc/dw;->g:Z

    iput-object v2, p0, Lcom/loc/dw;->h:Landroid/telephony/PhoneStateListener;

    iput-boolean v3, p0, Lcom/loc/dw;->u:Z

    iput-object v2, p0, Lcom/loc/dw;->i:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/loc/dw;->j:Z

    iput-object v2, p0, Lcom/loc/dw;->k:Ljava/lang/StringBuilder;

    iput-boolean v3, p0, Lcom/loc/dw;->x:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/dw;->y:Ljava/lang/Object;

    iput-object p1, p0, Lcom/loc/dw;->l:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/dw;->l:Landroid/content/Context;

    const-string v1, "phone"

    invoke-static {v0, v1}, Lcom/loc/ep;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v0, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/dw;->c(Landroid/telephony/CellLocation;)I

    move-result v0

    iput v0, p0, Lcom/loc/dw;->a:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget v0, Lcom/loc/dw;->r:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/loc/dw;->l:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-static {v0, v1}, Lcom/loc/ep;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dw;->q:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    invoke-static {}, Lcom/loc/ab;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/loc/dw$1;

    invoke-direct {v1, p0}, Lcom/loc/dw$1;-><init>(Lcom/loc/dw;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    new-instance v0, Lcom/loc/du;

    invoke-direct {v0}, Lcom/loc/du;-><init>()V

    iput-object v0, p0, Lcom/loc/dw;->p:Lcom/loc/du;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dw;->i:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v2, p0, Lcom/loc/dw;->i:Ljava/lang/String;

    const-string v1, "CgiManager"

    const-string v2, "CgiManager"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/loc/dw;->a:I

    goto :goto_0

    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lcom/loc/dw;->l:Landroid/content/Context;

    const-string v1, "phone_msim"

    invoke-static {v0, v1}, Lcom/loc/ep;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dw;->q:Ljava/lang/Object;

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/loc/dw;->l:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-static {v0, v1}, Lcom/loc/ep;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dw;->q:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/loc/dw;J)J
    .locals 1

    iput-wide p1, p0, Lcom/loc/dw;->s:J

    return-wide p1
.end method

.method static synthetic a(Lcom/loc/dw;Ljava/util/List;)Landroid/telephony/CellLocation;
    .locals 1

    invoke-direct {p0, p1}, Lcom/loc/dw;->a(Ljava/util/List;)Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method private varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/loc/em;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/telephony/CellLocation;

    :goto_1
    invoke-direct {p0, v0}, Lcom/loc/dw;->b(Landroid/telephony/CellLocation;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private declared-synchronized a(Ljava/util/List;)Landroid/telephony/CellLocation;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Landroid/telephony/CellLocation;"
        }
    .end annotation

    const/4 v6, 0x0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v6

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    move-object v1, v6

    :goto_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    :try_start_2
    invoke-direct {p0, v0}, Lcom/loc/dw;->a(Landroid/telephony/CellInfo;)Lcom/loc/dv;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    if-nez v0, :cond_2

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v5, v0

    :goto_3
    if-eqz v5, :cond_5

    :try_start_3
    iget v0, v5, Lcom/loc/dv;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget v1, v5, Lcom/loc/dv;->i:I

    iget v2, v5, Lcom/loc/dv;->e:I

    iget v3, v5, Lcom/loc/dv;->f:I

    iget v4, v5, Lcom/loc/dv;->g:I

    iget v5, v5, Lcom/loc/dv;->h:I

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    if-eqz v0, :cond_0

    move-object v6, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    :try_start_5
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget v1, v5, Lcom/loc/dv;->c:I

    iget v2, v5, Lcom/loc/dv;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_5
    move-object v7, v6

    move-object v6, v0

    move-object v0, v7

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v0, v6

    :goto_6
    move-object v7, v6

    move-object v6, v0

    move-object v0, v7

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2
    move-exception v1

    move-object v7, v0

    move-object v0, v6

    move-object v6, v7

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_6

    :cond_5
    move-object v0, v6

    goto :goto_5

    :cond_6
    move-object v5, v1

    goto :goto_3
.end method

.method private static a(IZIIIII)Lcom/loc/dv;
    .locals 1

    new-instance v0, Lcom/loc/dv;

    invoke-direct {v0, p0, p1}, Lcom/loc/dv;-><init>(IZ)V

    iput p2, v0, Lcom/loc/dv;->a:I

    iput p3, v0, Lcom/loc/dv;->b:I

    iput p4, v0, Lcom/loc/dv;->c:I

    iput p5, v0, Lcom/loc/dv;->d:I

    iput p6, v0, Lcom/loc/dv;->j:I

    return-object v0
.end method

.method private a(Landroid/telephony/CellInfo;)Lcom/loc/dv;
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    instance-of v2, p1, Landroid/telephony/CellInfoCdma;

    if-eqz v2, :cond_1

    check-cast p1, Landroid/telephony/CellInfoCdma;

    invoke-direct {p0, p1, v1}, Lcom/loc/dw;->a(Landroid/telephony/CellInfoCdma;Z)Lcom/loc/dv;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v2, p1, Landroid/telephony/CellInfoGsm;

    if-eqz v2, :cond_2

    check-cast p1, Landroid/telephony/CellInfoGsm;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v2

    invoke-static {v2}, Lcom/loc/dw;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v2

    invoke-static {v2}, Lcom/loc/dw;->d(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v2

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v3

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v4

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v5

    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/loc/dw;->a(IZIIIII)Lcom/loc/dv;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v2, p1, Landroid/telephony/CellInfoWcdma;

    if-eqz v2, :cond_3

    check-cast p1, Landroid/telephony/CellInfoWcdma;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v2

    invoke-static {v2}, Lcom/loc/dw;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v2

    invoke-static {v2}, Lcom/loc/dw;->d(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v2

    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v3

    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v4

    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v5

    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/loc/dw;->a(IZIIIII)Lcom/loc/dv;

    move-result-object v0

    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v1

    iput v1, v0, Lcom/loc/dv;->o:I

    goto/16 :goto_0

    :cond_3
    instance-of v2, p1, Landroid/telephony/CellInfoLte;

    if-eqz v2, :cond_0

    check-cast p1, Landroid/telephony/CellInfoLte;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v2

    invoke-static {v2}, Lcom/loc/dw;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v2

    invoke-static {v2}, Lcom/loc/dw;->d(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v2

    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v3

    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v4

    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v5

    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/loc/dw;->a(IZIIIII)Lcom/loc/dv;

    move-result-object v0

    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v1

    iput v1, v0, Lcom/loc/dv;->o:I

    goto/16 :goto_0
.end method

.method private a(Landroid/telephony/CellInfoCdma;Z)Lcom/loc/dv;
    .locals 8

    const/4 v0, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v7

    iget-object v0, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/loc/ep;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v1, 0x1

    :try_start_1
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    :goto_1
    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v6

    move v1, p2

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/loc/dw;->a(IZIIIII)Lcom/loc/dv;

    move-result-object v0

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v1

    iput v1, v0, Lcom/loc/dv;->g:I

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v1

    iput v1, v0, Lcom/loc/dv;->h:I

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v1

    iput v1, v0, Lcom/loc/dv;->i:I

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v1

    iput v1, v0, Lcom/loc/dv;->e:I

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v1

    iput v1, v0, Lcom/loc/dv;->f:I

    goto :goto_0

    :catch_0
    move-exception v0

    move v2, v4

    :goto_2
    move v3, v4

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private static a(Landroid/telephony/NeighboringCellInfo;[Ljava/lang/String;)Lcom/loc/dv;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/loc/dv;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/loc/dv;-><init>(IZ)V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/loc/dv;->a:I

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/loc/dv;->b:I

    const-string v1, "getLac"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/loc/em;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/loc/dv;->c:I

    invoke-virtual {p0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    iput v1, v0, Lcom/loc/dv;->d:I

    invoke-virtual {p0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v1

    invoke-static {v1}, Lcom/loc/ep;->a(I)I

    move-result v1

    iput v1, v0, Lcom/loc/dv;->j:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "getGsm"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/dw;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/loc/dw;->y:Ljava/lang/Object;

    return-object v0
.end method

.method private declared-synchronized a(Landroid/telephony/CellLocation;[Ljava/lang/String;Z)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/loc/dw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, p1}, Lcom/loc/dw;->b(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/loc/dw;->a:I

    iget-object v0, p0, Lcom/loc/dw;->b:Ljava/util/ArrayList;

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    new-instance v1, Lcom/loc/dv;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/loc/dv;-><init>(IZ)V

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-static {v2}, Lcom/loc/ep;->g(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/loc/dv;->a:I

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-static {v2}, Lcom/loc/ep;->g(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/loc/dv;->b:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    iput v2, v1, Lcom/loc/dv;->c:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    iput v2, v1, Lcom/loc/dv;->d:I

    iget v2, p0, Lcom/loc/dw;->o:I

    iput v2, v1, Lcom/loc/dv;->j:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    const-string v1, "getNeighboringCellInfo"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/loc/em;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v2

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/loc/dw;->a(II)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0, p2}, Lcom/loc/dw;->a(Landroid/telephony/NeighboringCellInfo;[Ljava/lang/String;)Lcom/loc/dv;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/loc/dw;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/loc/dw;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/loc/dw;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/dw;->b(I)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 8

    const v7, 0x7fffffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/loc/ep;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/loc/dw;->f:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0}, Lcom/loc/dw;->c(Landroid/telephony/CellLocation;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/dw;->f:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0, v3, p1}, Lcom/loc/dw;->a(Landroid/telephony/CellLocation;[Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget-object v4, p0, Lcom/loc/dw;->f:Landroid/telephony/CellLocation;

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/loc/dw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/loc/dw;->q:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v5, "mGsmCellLoc"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lcom/loc/dw;->b(Landroid/telephony/CellLocation;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0, v0, v3, p1}, Lcom/loc/dw;->a(Landroid/telephony/CellLocation;[Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    :goto_1
    if-nez v0, :cond_0

    :cond_2
    :try_start_5
    invoke-direct {p0, v4}, Lcom/loc/dw;->b(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/loc/dw;->a:I

    new-instance v0, Lcom/loc/dv;

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-direct {v0, v5, v6}, Lcom/loc/dv;-><init>(IZ)V

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/loc/dv;->a:I

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/loc/dv;->b:I

    const-string v3, "getSystemId"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/loc/em;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lcom/loc/dv;->g:I

    const-string v3, "getNetworkId"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/loc/em;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lcom/loc/dv;->h:I

    const-string v3, "getBaseStationId"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/loc/em;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lcom/loc/dv;->i:I

    iget v3, p0, Lcom/loc/dw;->o:I

    iput v3, v0, Lcom/loc/dv;->j:I

    const-string v3, "getBaseStationLatitude"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/loc/em;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lcom/loc/dv;->e:I

    const-string v3, "getBaseStationLongitude"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/loc/em;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lcom/loc/dv;->f:I

    iget v3, v0, Lcom/loc/dv;->e:I

    iget v4, v0, Lcom/loc/dv;->f:I

    if-ne v3, v4, :cond_6

    iget v3, v0, Lcom/loc/dv;->e:I

    if-lez v3, :cond_6

    :goto_2
    iget v2, v0, Lcom/loc/dv;->e:I

    if-ltz v2, :cond_3

    iget v2, v0, Lcom/loc/dv;->f:I

    if-ltz v2, :cond_3

    iget v2, v0, Lcom/loc/dv;->e:I

    if-eq v2, v7, :cond_3

    iget v2, v0, Lcom/loc/dv;->f:I

    if-eq v2, v7, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x0

    iput v1, v0, Lcom/loc/dv;->e:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/loc/dv;->f:I

    :cond_4
    iget-object v1, p0, Lcom/loc/dw;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/loc/dw;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_6
    const-string v1, "CgiManager"

    const-string v2, "hdlCdmaLocChange"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :cond_5
    move v0, v2

    goto/16 :goto_1

    :cond_6
    move v1, v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(I)Z
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0xf

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(II)Z
    .locals 3

    const v2, 0xffff

    const/4 v1, -0x1

    const/4 v0, 0x1

    if-eq p0, v1, :cond_0

    if-eqz p0, :cond_0

    if-gt p0, v2, :cond_0

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_0

    const v1, 0xfffffff

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private declared-synchronized b(I)V
    .locals 2

    const/16 v0, -0x71

    monitor-enter p0

    if-ne p1, v0, :cond_1

    const/16 v0, -0x71

    :try_start_0
    iput v0, p0, Lcom/loc/dw;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput p1, p0, Lcom/loc/dw;->o:I

    iget v0, p0, Lcom/loc/dw;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/loc/dw;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/loc/dw;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/dv;

    iget v1, p0, Lcom/loc/dw;->o:I

    iput v1, v0, Lcom/loc/dv;->j:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized b(ZZ)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/16 v3, 0x1d

    const/4 v1, 0x0

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/dw;->j:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lcom/loc/dw;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lcom/loc/dw;->t:Landroid/telephony/TelephonyManager$CellInfoCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/dw$a;

    invoke-direct {v0, p0}, Lcom/loc/dw$a;-><init>(Lcom/loc/dw;)V

    iput-object v0, p0, Lcom/loc/dw;->t:Landroid/telephony/TelephonyManager$CellInfoCallback;

    :cond_0
    iget-object v0, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/loc/ab;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iget-object v4, p0, Lcom/loc/dw;->t:Landroid/telephony/TelephonyManager$CellInfoCallback;

    invoke-virtual {v0, v3, v4}, Landroid/telephony/TelephonyManager;->requestCellInfoUpdate(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V

    if-nez p2, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/loc/dw;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    const/16 v3, 0x14

    if-ge v0, v3, :cond_2

    const-wide/16 v4, 0x5

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/loc/dw;->q()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/dw;->b(Landroid/telephony/CellLocation;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/loc/dw;->r()Landroid/telephony/CellLocation;

    move-result-object v0

    :cond_3
    invoke-direct {p0, v0}, Lcom/loc/dw;->b(Landroid/telephony/CellLocation;)Z

    move-result v3

    if-eqz v3, :cond_a

    iput-object v0, p0, Lcom/loc/dw;->f:Landroid/telephony/CellLocation;

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/loc/dw;->s:J

    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/loc/dw;->g:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/loc/dw;->f:Landroid/telephony/CellLocation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    move v0, v2

    :cond_5
    const-wide/16 v4, 0xa

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    :try_start_4
    iget-object v3, p0, Lcom/loc/dw;->f:Landroid/telephony/CellLocation;

    if-nez v3, :cond_6

    const/16 v3, 0x32

    if-lt v0, v3, :cond_5

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/dw;->g:Z

    iget-object v0, p0, Lcom/loc/dw;->f:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0}, Lcom/loc/dw;->b(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lcom/loc/dw;->a(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    :try_start_5
    invoke-static {}, Lcom/loc/ep;->c()I

    move-result v0

    const/16 v3, 0x12

    if-lt v0, v3, :cond_d

    iget-object v0, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_d

    iget-object v4, p0, Lcom/loc/dw;->n:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/loc/dw;->p:Lcom/loc/du;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v0, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/dw;->i:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v3, v1

    :goto_4
    if-eqz v3, :cond_c

    :try_start_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_c

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_8
    move v1, v2

    :goto_5
    if-ge v1, v6, :cond_c

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_9

    :try_start_8
    invoke-direct {p0, v0}, Lcom/loc/dw;->a(Landroid/telephony/CellInfo;)Lcom/loc/dv;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v0

    if-nez v0, :cond_b

    :cond_9
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_a
    :try_start_9
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/loc/dw;->s:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/dw;->f:Landroid/telephony/CellLocation;

    iget-object v0, p0, Lcom/loc/dw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/loc/dw;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v3

    :try_start_a
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_b
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dw;->i:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object v3, v1

    goto :goto_4

    :cond_b
    const-wide/32 v8, 0xffff

    :try_start_c
    invoke-virtual {v5, v0}, Lcom/loc/du;->a(Lcom/loc/dv;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v2, v8

    int-to-short v2, v2

    iput-short v2, v0, Lcom/loc/dv;->l:S

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_c
    if-eqz v4, :cond_d

    :try_start_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget v0, p0, Lcom/loc/dw;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/loc/dw;->a:I

    invoke-virtual {v5, v4}, Lcom/loc/du;->a(Ljava/util/ArrayList;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_d
    :goto_7
    :try_start_e
    iget-object v0, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dw;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/dw;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lcom/loc/dw;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/loc/dw;->a:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_e
    monitor-exit p0

    return-void

    :catch_3
    move-exception v3

    goto/16 :goto_1

    :catch_4
    move-exception v0

    goto :goto_7
.end method

.method private b(Landroid/telephony/CellLocation;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/loc/dw;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/loc/dw;->a:I

    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/loc/dw;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/dw;->x:Z

    return v0
.end method

.method private c(Landroid/telephony/CellLocation;)I
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/loc/dw;->j:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v1, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Utils"

    const-string v3, "getCellLocT"

    invoke-static {v1, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/loc/dw;)V
    .locals 3

    new-instance v0, Lcom/loc/dw$b;

    invoke-direct {v0, p0}, Lcom/loc/dw$b;-><init>(Lcom/loc/dw;)V

    iput-object v0, p0, Lcom/loc/dw;->h:Landroid/telephony/PhoneStateListener;

    const-string v1, "android.telephony.PhoneStateListener"

    const/4 v0, 0x0

    const-string v2, "LISTEN_SIGNAL_STRENGTHS"

    :try_start_0
    invoke-static {v1, v2}, Lcom/loc/em;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/loc/dw;->h:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    return-void

    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/loc/dw;->h:Landroid/telephony/PhoneStateListener;

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private static c(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const v0, 0xffff

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static d(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const v0, 0xffff

    if-eq p0, v0, :cond_0

    const v0, 0xfffffff

    if-lt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic d(Lcom/loc/dw;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/dw;->u:Z

    return v0
.end method

.method static synthetic e(Lcom/loc/dw;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/loc/dw;->a(Z)V

    return-void
.end method

.method static synthetic f(Lcom/loc/dw;)Lcom/loc/do;
    .locals 1

    iget-object v0, p0, Lcom/loc/dw;->w:Lcom/loc/do;

    return-object v0
.end method

.method public static j()I
    .locals 1

    :try_start_0
    const-string v0, "android.telephony.MSimTelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    sput v0, Lcom/loc/dw;->r:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    sget v0, Lcom/loc/dw;->r:I

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "android.telephony.TelephonyManager2"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x2

    sput v0, Lcom/loc/dw;->r:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    sget v0, Lcom/loc/dw;->r:I

    return v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private o()Landroid/telephony/CellLocation;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/loc/dw;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/loc/dw;->b(Landroid/telephony/CellLocation;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lcom/loc/dw;->f:Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dw;->i:Ljava/lang/String;

    :cond_0
    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v1, p0, Lcom/loc/dw;->i:Ljava/lang/String;

    const-string v2, "CgiManager"

    const-string v3, "getCellLocation"

    invoke-static {v0, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized p()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/loc/dw;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/dw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/dw;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/loc/dw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/dw;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private q()Landroid/telephony/CellLocation;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/loc/ep;->c()I

    move-result v1

    const/16 v3, 0x12

    if-lt v1, v3, :cond_2

    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/loc/dw;->a(Ljava/util/List;)Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/loc/dw;->o()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/dw;->b(Landroid/telephony/CellLocation;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "getCellLocationExt"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-direct {p0, v2, v0, v1}, Lcom/loc/dw;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "getCellLocationGemini"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-direct {p0, v2, v0, v1}, Lcom/loc/dw;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/dw;->i:Ljava/lang/String;

    goto :goto_1
.end method

.method private r()Landroid/telephony/CellLocation;
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x1

    sget-boolean v1, Lcom/loc/dw;->v:Z

    if-nez v1, :cond_0

    sput-boolean v2, Lcom/loc/dw;->v:Z

    :cond_0
    iget-object v1, p0, Lcom/loc/dw;->q:Ljava/lang/Object;

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/loc/dw;->s()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getCellLocation"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2, v3}, Lcom/loc/dw;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/loc/dw;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v2, "getCellLocationGemini"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/loc/dw;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v2, "getAllCellInfo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/loc/dw;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CgiManager"

    const-string v3, "getSim2Cgi"

    invoke-static {v1, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static s()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    sget v0, Lcom/loc/dw;->r:I

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    return-object v1

    :pswitch_0
    const-string v0, "android.telephony.MSimTelephonyManager"

    goto :goto_0

    :pswitch_1
    const-string v0, "android.telephony.TelephonyManager2"

    goto :goto_0

    :pswitch_2
    const-string v0, "android.telephony.TelephonyManager"

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CgiManager"

    const-string v3, "getSim2TmClass"

    invoke-static {v0, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/loc/cw;",
            ">;"
        }
    .end annotation

    const/16 v7, 0x18

    const/4 v6, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_7

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    instance-of v1, v0, Landroid/telephony/CellInfoCdma;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v4

    new-instance v5, Lcom/loc/cx;

    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v0

    invoke-direct {v5, v0, v6}, Lcom/loc/cx;-><init>(ZZ)V

    invoke-virtual {v4}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v0

    iput v0, v5, Lcom/loc/cx;->m:I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v0

    iput v0, v5, Lcom/loc/cx;->n:I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v0

    iput v0, v5, Lcom/loc/cx;->j:I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v0

    iput v0, v5, Lcom/loc/cx;->k:I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v0

    iput v0, v5, Lcom/loc/cx;->l:I

    invoke-virtual {v1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getAsuLevel()I

    move-result v0

    iput v0, v5, Lcom/loc/cx;->d:I

    invoke-virtual {v1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    iput v0, v5, Lcom/loc/cx;->c:I

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/telephony/CellInfoGsm;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v4

    new-instance v5, Lcom/loc/cy;

    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v0

    invoke-direct {v5, v0, v6}, Lcom/loc/cy;-><init>(ZZ)V

    invoke-virtual {v4}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/loc/cy;->a:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/loc/cy;->b:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v0

    iput v0, v5, Lcom/loc/cy;->j:I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v0

    iput v0, v5, Lcom/loc/cy;->k:I

    invoke-virtual {v1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v0

    iput v0, v5, Lcom/loc/cy;->c:I

    invoke-virtual {v1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result v0

    iput v0, v5, Lcom/loc/cy;->d:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_2

    invoke-virtual {v4}, Landroid/telephony/CellIdentityGsm;->getArfcn()I

    move-result v0

    iput v0, v5, Lcom/loc/cy;->m:I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityGsm;->getBsic()I

    move-result v0

    iput v0, v5, Lcom/loc/cy;->n:I

    :cond_2
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    instance-of v1, v0, Landroid/telephony/CellInfoLte;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Landroid/telephony/CellInfoLte;

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v4

    new-instance v5, Lcom/loc/cz;

    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v0

    invoke-direct {v5, v0}, Lcom/loc/cz;-><init>(Z)V

    invoke-virtual {v4}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/loc/cz;->a:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/loc/cz;->b:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v0

    iput v0, v5, Lcom/loc/cz;->l:I

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getAsuLevel()I

    move-result v0

    iput v0, v5, Lcom/loc/cz;->d:I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v0

    iput v0, v5, Lcom/loc/cz;->k:I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v0

    iput v0, v5, Lcom/loc/cz;->j:I

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getTimingAdvance()I

    move-result v0

    iput v0, v5, Lcom/loc/cz;->n:I

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v0

    iput v0, v5, Lcom/loc/cz;->c:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_4

    invoke-virtual {v4}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result v0

    iput v0, v5, Lcom/loc/cz;->m:I

    :cond_4
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v1, v4, :cond_0

    instance-of v1, v0, Landroid/telephony/CellInfoWcdma;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v4

    new-instance v5, Lcom/loc/da;

    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v0

    invoke-direct {v5, v0, v6}, Lcom/loc/da;-><init>(ZZ)V

    invoke-virtual {v4}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/loc/da;->a:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/loc/da;->b:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v0

    iput v0, v5, Lcom/loc/da;->j:I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v0

    iput v0, v5, Lcom/loc/da;->k:I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v0

    iput v0, v5, Lcom/loc/da;->l:I

    invoke-virtual {v1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    move-result v0

    iput v0, v5, Lcom/loc/da;->d:I

    invoke-virtual {v1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v0

    iput v0, v5, Lcom/loc/da;->c:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_6

    invoke-virtual {v4}, Landroid/telephony/CellIdentityWcdma;->getUarfcn()I

    move-result v0

    iput v0, v5, Lcom/loc/da;->m:I

    :cond_6
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    return-object v2
.end method

.method public final a(Lcom/loc/do;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/dw;->w:Lcom/loc/do;

    return-void
.end method

.method public final declared-synchronized a(ZZ)V
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/loc/dw;->l:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/ep;->a(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/loc/dw;->j:Z

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/loc/dw;->j:Z

    if-eqz v2, :cond_3

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/dw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/loc/dw;->b(ZZ)V

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/dw;->e:J

    :cond_2
    iget-boolean v0, p0, Lcom/loc/dw;->j:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/loc/dw;->i()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/dw;->e:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/loc/dw;->p()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dw;->i:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "CgiManager"

    const-string v2, "refresh"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method final a(Landroid/telephony/CellLocation;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/loc/dw;->c(Landroid/telephony/CellLocation;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    move v1, v0

    goto :goto_0

    :pswitch_0
    :try_start_0
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/loc/dw;->a(II)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "CgiManager"

    const-string v3, "cgiUseful Cgi.I_GSM_T"

    invoke-static {v1, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    :try_start_1
    const-string v2, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/loc/em;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/loc/em;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_2

    const-string v2, "getBaseStationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/loc/em;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-gez v2, :cond_1

    :cond_2
    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "CgiManager"

    const-string v3, "cgiUseful Cgi.I_CDMA_T"

    invoke-static {v1, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/dv;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/dw;->b:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/dv;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/loc/dw;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final declared-synchronized d()Lcom/loc/dv;
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/loc/dw;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/loc/dw;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/dv;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/loc/dw;->a:I

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/loc/dw;->a:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final g()Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public final h()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/loc/dw;->p:Lcom/loc/du;

    invoke-virtual {v0}, Lcom/loc/du;->a()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/dw;->s:J

    iget-object v1, p0, Lcom/loc/dw;->y:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/loc/dw;->x:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dw;->h:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/loc/dw;->h:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/loc/dw;->h:Landroid/telephony/PhoneStateListener;

    const/16 v0, -0x71

    iput v0, p0, Lcom/loc/dw;->o:I

    iput-object v3, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/loc/dw;->q:Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final declared-synchronized i()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/loc/dw;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/dw;->f:Landroid/telephony/CellLocation;

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/dw;->a:I

    iget-object v0, p0, Lcom/loc/dw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/loc/dw;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/dw;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/dw;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized m()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/dw;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/loc/dw;->i()V

    :cond_0
    iget-object v0, p0, Lcom/loc/dw;->k:Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/loc/dw;->k:Ljava/lang/StringBuilder;

    :goto_0
    iget v0, p0, Lcom/loc/dw;->a:I

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_0

    :cond_1
    iget-object v0, p0, Lcom/loc/dw;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/loc/dw;->k:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Lcom/loc/dw;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/loc/dw;->k:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/loc/dw;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    move v1, v0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/loc/dw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/loc/dw;->k:Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/loc/dw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/dv;

    iget v0, v0, Lcom/loc/dv;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/dw;->k:Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/loc/dw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/dv;

    iget v0, v0, Lcom/loc/dv;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/dw;->k:Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/loc/dw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/dv;

    iget v0, v0, Lcom/loc/dv;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final n()Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/loc/dw;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/loc/dw;->l:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/ep;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/ep;->a(Landroid/net/NetworkInfo;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method
