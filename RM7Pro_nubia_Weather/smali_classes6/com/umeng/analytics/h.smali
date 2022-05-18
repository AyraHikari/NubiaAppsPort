.class public final Lcom/umeng/analytics/h;
.super Ljava/lang/Object;
.source "StoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/h$b;,
        Lcom/umeng/analytics/h$a;
    }
.end annotation


# static fields
.field private static a:Lcom/umeng/analytics/h; = null

.field private static b:Landroid/content/Context; = null

.field private static c:Ljava/lang/String; = null

.field private static e:J = 0x0L

.field private static f:J = 0x0L

.field private static final g:Ljava/lang/String; = "mobclick_agent_user_"

.field private static final h:Ljava/lang/String; = "mobclick_agent_header_"

.field private static final i:Ljava/lang/String; = "mobclick_agent_update_"

.field private static final j:Ljava/lang/String; = "mobclick_agent_state_"

.field private static final k:Ljava/lang/String; = "mobclick_agent_cached_"


# instance fields
.field private d:Lcom/umeng/analytics/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/analytics/h;->a:Lcom/umeng/analytics/h;

    .line 69
    const-wide/32 v0, 0x48190800

    sput-wide v0, Lcom/umeng/analytics/h;->e:J

    .line 70
    const-wide/32 v0, 0x200000

    sput-wide v0, Lcom/umeng/analytics/h;->f:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/umeng/analytics/h$a;

    invoke-direct {v0, p1}, Lcom/umeng/analytics/h$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/analytics/h;->d:Lcom/umeng/analytics/h$a;

    .line 56
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/analytics/h;
    .locals 2

    .prologue
    .line 59
    const-class v1, Lcom/umeng/analytics/h;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/h;->c:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/umeng/analytics/h;->a:Lcom/umeng/analytics/h;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/umeng/analytics/h;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/analytics/h;->a:Lcom/umeng/analytics/h;

    .line 65
    :cond_0
    sget-object v0, Lcom/umeng/analytics/h;->a:Lcom/umeng/analytics/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/umeng/analytics/h;Lu/aly/av;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/analytics/h;->a(Lu/aly/av;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private a(Lu/aly/av;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 481
    const-string v0, "appkey"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->a:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    const-string v0, "channel"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->b:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 484
    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v0, v0, Lu/aly/av$n;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 485
    const-string v0, "secret"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->c:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 487
    :cond_0
    const-string v0, "app_version"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->d:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 488
    const-string v0, "display_name"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->g:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 489
    const-string v0, "package_name"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->e:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 490
    const-string v0, "app_signature"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->f:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 491
    const-string v0, "version_code"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget v1, v1, Lu/aly/av$n;->h:I

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 492
    const-string v0, "wrapper_type"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->i:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 493
    const-string v0, "wrapper_version"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->j:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 494
    const-string v0, "sdk_type"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->k:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    const-string v0, "sdk_version"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->l:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 496
    const-string v0, "vertical_type"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget v1, v1, Lu/aly/av$n;->m:I

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 497
    const-string v0, "idmd5"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->n:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 498
    const-string v0, "cpu"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->o:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 499
    const-string v0, "os"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->p:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    const-string v0, "os_version"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->q:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 501
    const-string v0, "resolution"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->r:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 502
    const-string v0, "mc"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->s:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    const-string v0, "device_id"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->t:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 504
    const-string v0, "device_model"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->u:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    const-string v0, "device_board"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->v:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 506
    const-string v0, "device_brand"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->w:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 507
    const-string v0, "device_manutime"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-wide v2, v1, Lu/aly/av$n;->x:J

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 508
    const-string v0, "device_manufacturer"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->y:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 509
    const-string v0, "device_manuid"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->z:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 510
    const-string v0, "device_name"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->A:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 511
    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v0, v0, Lu/aly/av$n;->B:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 512
    const-string v0, "sub_os_name"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->B:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
    :cond_1
    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v0, v0, Lu/aly/av$n;->C:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 515
    const-string v0, "sub_os_version"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->C:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    :cond_2
    const-string v0, "timezone"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-wide v2, v1, Lu/aly/av$n;->D:J

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 518
    const-string v0, "language"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->E:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    const-string v0, "country"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->F:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    const-string v0, "carrier"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->G:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    const-string v0, "access"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->H:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 522
    const-string v0, "access_subtype"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->I:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    const-string v1, "mccmnc"

    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v0, v0, Lu/aly/av$n;->J:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_0
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    const-string v0, "successful_requests"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-wide v2, v1, Lu/aly/av$n;->K:J

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 525
    const-string v0, "failed_requests"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-wide v2, v1, Lu/aly/av$n;->L:J

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 526
    const-string v0, "req_time"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-wide v2, v1, Lu/aly/av$n;->M:J

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 527
    const-string v0, "imprint"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->N:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 528
    const-string v0, "id_tracking"

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->O:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 529
    const-string v0, "sdk_version:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";device_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->t:Ljava/lang/String;

    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";device_manufacturer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";device_board:"

    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";device_brand:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->w:Ljava/lang/String;

    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";os_version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v1, v1, Lu/aly/av$n;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    return-void

    .line 523
    :cond_3
    iget-object v0, p1, Lu/aly/av;->a:Lu/aly/av$n;

    iget-object v0, v0, Lu/aly/av$n;->J:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private static a(Ljava/io/File;)Z
    .locals 7

    .prologue
    .line 73
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 75
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/umeng/analytics/h;->f:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 77
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/m;->a(Landroid/content/Context;)Lu/aly/m;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "__data_size_of"

    invoke-virtual/range {v1 .. v6}, Lu/aly/m;->a(JJLjava/lang/String;)V

    .line 79
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/umeng/analytics/h;Lu/aly/av;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/analytics/h;->b(Lu/aly/av;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private b(Lu/aly/av;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 547
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 549
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->h:Lu/aly/av$d;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->h:Lu/aly/av$d;

    iget-object v0, v0, Lu/aly/av$d;->a:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->h:Lu/aly/av$d;

    iget-object v0, v0, Lu/aly/av$d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 555
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 557
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->h:Lu/aly/av$d;

    iget-object v0, v0, Lu/aly/av$d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 559
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 560
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 561
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 562
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 563
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/aly/av$e;

    .line 564
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 565
    const-string v9, "v_sum"

    iget-wide v10, v2, Lu/aly/av$e;->a:J

    invoke-virtual {v8, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 566
    const-string v9, "ts_sum"

    iget-wide v10, v2, Lu/aly/av$e;->b:J

    invoke-virtual {v8, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 567
    const-string v9, "tw_num"

    iget v10, v2, Lu/aly/av$e;->c:I

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 568
    const-string v9, "count"

    iget v10, v2, Lu/aly/av$e;->d:I

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 569
    const-string v9, "labels"

    new-instance v10, Lorg/json/JSONArray;

    iget-object v2, v2, Lu/aly/av$e;->e:Ljava/util/List;

    invoke-direct {v10, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 570
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 562
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 572
    :cond_0
    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 574
    :cond_1
    const-string v0, "ag"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 577
    :cond_2
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->h:Lu/aly/av$d;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->h:Lu/aly/av$d;

    iget-object v0, v0, Lu/aly/av$d;->b:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->h:Lu/aly/av$d;

    iget-object v0, v0, Lu/aly/av$d;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 582
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 584
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->h:Lu/aly/av$d;

    iget-object v0, v0, Lu/aly/av$d;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 585
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 586
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 587
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 588
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 589
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 590
    const/4 v2, 0x0

    move v3, v2

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    .line 591
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/aly/av$f;

    .line 592
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 593
    const-string v9, "value"

    iget v10, v2, Lu/aly/av$f;->a:I

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 594
    const-string v9, "ts"

    iget-wide v10, v2, Lu/aly/av$f;->b:J

    invoke-virtual {v8, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 595
    const-string v9, "label"

    iget-object v2, v2, Lu/aly/av$f;->c:Ljava/lang/String;

    invoke-virtual {v8, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 596
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 590
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 598
    :cond_3
    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 600
    :cond_4
    const-string v0, "ve_meta"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 602
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 603
    const-string v0, "cc"

    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 604
    const-string v0, "; cc: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    :cond_6
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->a:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 619
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 620
    const/4 v0, 0x0

    move v3, v0

    :goto_4
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_c

    .line 621
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/av$h;

    .line 622
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 623
    const/4 v1, 0x0

    move v4, v1

    :goto_5
    iget-object v1, v0, Lu/aly/av$h;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_a

    .line 624
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 625
    iget-object v1, v0, Lu/aly/av$h;->b:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/av$j;

    .line 626
    const-string v2, "id"

    iget-object v8, v1, Lu/aly/av$j;->c:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 627
    const-string v2, "ts"

    iget-wide v8, v1, Lu/aly/av$j;->d:J

    invoke-virtual {v7, v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 628
    const-string v2, "du"

    iget-wide v8, v1, Lu/aly/av$j;->e:J

    invoke-virtual {v7, v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 629
    iget-object v1, v1, Lu/aly/av$j;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 630
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 631
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 632
    instance-of v9, v2, Ljava/lang/String;

    if-nez v9, :cond_8

    instance-of v9, v2, Ljava/lang/Integer;

    if-nez v9, :cond_8

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_7

    .line 633
    :cond_8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    .line 636
    :cond_9
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 623
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_5

    .line 638
    :cond_a
    iget-object v1, v0, Lu/aly/av$h;->a:Ljava/lang/String;

    if-eqz v1, :cond_b

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 639
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 640
    iget-object v0, v0, Lu/aly/av$h;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 641
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 620
    :cond_b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_4

    .line 644
    :cond_c
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 645
    const-string v0, "ekv"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 646
    const-string v0, ";ekv:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    :cond_d
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->b:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 653
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 654
    const/4 v0, 0x0

    move v3, v0

    :goto_7
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_13

    .line 655
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/av$h;

    .line 656
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 657
    const/4 v1, 0x0

    move v4, v1

    :goto_8
    iget-object v1, v0, Lu/aly/av$h;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_11

    .line 658
    iget-object v1, v0, Lu/aly/av$h;->b:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/av$j;

    .line 659
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 660
    const-string v2, "id"

    iget-object v8, v1, Lu/aly/av$j;->c:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 661
    const-string v2, "ts"

    iget-wide v8, v1, Lu/aly/av$j;->d:J

    invoke-virtual {v7, v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 662
    const-string v2, "du"

    iget-wide v8, v1, Lu/aly/av$j;->e:J

    invoke-virtual {v7, v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 663
    iget-object v1, v1, Lu/aly/av$j;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 664
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 665
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 666
    instance-of v9, v2, Ljava/lang/String;

    if-nez v9, :cond_f

    instance-of v9, v2, Ljava/lang/Integer;

    if-nez v9, :cond_f

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_e

    .line 667
    :cond_f
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_9

    .line 670
    :cond_10
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 657
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_8

    .line 672
    :cond_11
    iget-object v1, v0, Lu/aly/av$h;->a:Ljava/lang/String;

    if-eqz v1, :cond_12

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_12

    .line 673
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 674
    iget-object v0, v0, Lu/aly/av$h;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 675
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 654
    :cond_12
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_7

    .line 678
    :cond_13
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 679
    const-string v0, "gkv"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 680
    const-string v0, "; gkv:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    :cond_14
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->i:Ljava/util/List;

    if-eqz v0, :cond_16

    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 690
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 693
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_15

    .line 694
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/av$i;

    .line 695
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 696
    const-string v4, "ts"

    iget-wide v6, v0, Lu/aly/av$i;->a:J

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 697
    const-string v4, "error_source"

    iget-wide v6, v0, Lu/aly/av$i;->b:J

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 698
    const-string v4, "context"

    iget-object v0, v0, Lu/aly/av$i;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 699
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 693
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 701
    :cond_15
    const-string v0, "error"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 706
    :cond_16
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->c:Ljava/util/List;

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1d

    .line 709
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 712
    const/4 v0, 0x0

    move v2, v0

    :goto_b
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1c

    .line 713
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/av$o;

    .line 714
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 715
    const-string v1, "id"

    iget-object v5, v0, Lu/aly/av$o;->b:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 716
    const-string v1, "start_time"

    iget-wide v6, v0, Lu/aly/av$o;->c:J

    invoke-virtual {v4, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 717
    const-string v1, "end_time"

    iget-wide v6, v0, Lu/aly/av$o;->d:J

    invoke-virtual {v4, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 718
    const-string v1, "duration"

    iget-wide v6, v0, Lu/aly/av$o;->e:J

    invoke-virtual {v4, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 720
    iget-object v1, v0, Lu/aly/av$o;->i:Lu/aly/av$p;

    iget-wide v6, v1, Lu/aly/av$p;->a:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_17

    iget-object v1, v0, Lu/aly/av$o;->i:Lu/aly/av$p;

    iget-wide v6, v1, Lu/aly/av$p;->b:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_18

    .line 721
    :cond_17
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 722
    const-string v5, "download_traffic"

    iget-object v6, v0, Lu/aly/av$o;->i:Lu/aly/av$p;

    iget-wide v6, v6, Lu/aly/av$p;->a:J

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 723
    const-string v5, "upload_traffic"

    iget-object v6, v0, Lu/aly/av$o;->i:Lu/aly/av$p;

    iget-wide v6, v6, Lu/aly/av$p;->b:J

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 724
    const-string v5, "traffic"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 728
    :cond_18
    iget-object v1, v0, Lu/aly/av$o;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1a

    .line 730
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 731
    iget-object v1, v0, Lu/aly/av$o;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/av$l;

    .line 732
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 733
    const-string v8, "page_name"

    iget-object v9, v1, Lu/aly/av$l;->a:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 734
    const-string v8, "duration"

    iget-wide v10, v1, Lu/aly/av$l;->b:J

    invoke-virtual {v7, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 735
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_c

    .line 737
    :cond_19
    const-string v1, "pages"

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 740
    :cond_1a
    iget-object v1, v0, Lu/aly/av$o;->j:Lu/aly/av$k;

    iget-wide v6, v1, Lu/aly/av$k;->c:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_1b

    .line 741
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 742
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 743
    const-string v6, "lat"

    iget-object v7, v0, Lu/aly/av$o;->j:Lu/aly/av$k;

    iget-wide v8, v7, Lu/aly/av$k;->a:D

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 744
    const-string v6, "lng"

    iget-object v7, v0, Lu/aly/av$o;->j:Lu/aly/av$k;

    iget-wide v8, v7, Lu/aly/av$k;->b:D

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 745
    const-string v6, "ts"

    iget-object v0, v0, Lu/aly/av$o;->j:Lu/aly/av$k;

    iget-wide v8, v0, Lu/aly/av$k;->c:J

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 746
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 747
    const-string v0, "locations"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 750
    :cond_1b
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 712
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_b

    .line 752
    :cond_1c
    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1d

    .line 753
    const-string v0, "sessions"

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 754
    const-string v0, "; sessions:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    :cond_1d
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->d:Lu/aly/av$b;

    iget-wide v0, v0, Lu/aly/av$b;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    .line 761
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 762
    const-string v1, "ts"

    iget-object v2, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v2, v2, Lu/aly/av$m;->d:Lu/aly/av$b;

    iget-wide v2, v2, Lu/aly/av$b;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 763
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1e

    .line 764
    const-string v1, "activate_msg"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 765
    const-string v1, "; active_msg: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    :cond_1e
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->e:Lu/aly/av$g;

    iget-boolean v0, v0, Lu/aly/av$g;->c:Z

    if-eqz v0, :cond_1f

    .line 773
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 774
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 775
    const-string v2, "interval"

    iget-object v3, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v3, v3, Lu/aly/av$m;->e:Lu/aly/av$g;

    iget-wide v4, v3, Lu/aly/av$g;->b:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 776
    const-string v2, "latency"

    iget-object v3, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v3, v3, Lu/aly/av$m;->e:Lu/aly/av$g;

    iget-object v3, v3, Lu/aly/av$g;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 777
    const-string v2, "latent"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 778
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1f

    .line 779
    const-string v1, "control_policy"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 780
    const-string v1, "; control_policy: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    :cond_1f
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_21

    .line 788
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 789
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 790
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 791
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    .line 793
    :cond_20
    const-string v0, "group_info"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 798
    :cond_21
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->g:Lu/aly/av$c;

    iget-object v0, v0, Lu/aly/av$c;->a:Ljava/lang/String;

    if-nez v0, :cond_22

    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->g:Lu/aly/av$c;

    iget-object v0, v0, Lu/aly/av$c;->b:Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 799
    :cond_22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 800
    const-string v1, "provider"

    iget-object v2, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v2, v2, Lu/aly/av$m;->g:Lu/aly/av$c;

    iget-object v2, v2, Lu/aly/av$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 801
    const-string v1, "puid"

    iget-object v2, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v2, v2, Lu/aly/av$m;->g:Lu/aly/av$c;

    iget-object v2, v2, Lu/aly/av$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 802
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_23

    .line 803
    const-string v1, "active_user"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 804
    const-string v1, "; active_user: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    :cond_23
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->j:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 812
    const-string v0, "userlevel"

    iget-object v1, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v1, v1, Lu/aly/av$m;->j:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 814
    :cond_24
    return-void
.end method

.method static synthetic n()Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    return-object v0
.end method

.method private o()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 291
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobclick_agent_user_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mobclick_agent_header_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private q()Ljava/lang/String;
    .locals 3

    .prologue
    .line 311
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_1

    .line 315
    const-string v1, "versioncode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 316
    sget-object v1, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bj;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 317
    if-eqz v0, :cond_0

    if-eq v1, v0, :cond_0

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobclick_agent_cached_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    .line 320
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mobclick_agent_cached_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bj;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 323
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mobclick_agent_cached_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bj;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method a(I)V
    .locals 2

    .prologue
    .line 158
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vt"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "appkey"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/umeng/analytics/h;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 90
    const-string v1, "au_p"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string v1, "au_u"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    :cond_0
    return-void
.end method

.method public a(Lu/aly/av;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 227
    invoke-direct {p0}, Lcom/umeng/analytics/h;->q()Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 234
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 235
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 240
    if-eqz v1, :cond_0

    .line 242
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 247
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 249
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 255
    :cond_1
    :goto_1
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 250
    :catch_1
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 236
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 237
    :goto_2
    :try_start_5
    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/Throwable;)V

    .line 238
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 240
    if-eqz v1, :cond_2

    .line 242
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 247
    :cond_2
    :goto_3
    if-eqz v2, :cond_1

    .line 249
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 250
    :catch_3
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 243
    :catch_4
    move-exception v0

    .line 244
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 240
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_4
    if-eqz v1, :cond_3

    .line 242
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 247
    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    .line 249
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 252
    :cond_4
    :goto_6
    throw v0

    .line 243
    :catch_5
    move-exception v1

    .line 244
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 250
    :catch_6
    move-exception v1

    .line 251
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 240
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_4

    .line 236
    :catch_7
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catch_8
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method

.method public a([B)V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/umeng/analytics/h;->d:Lcom/umeng/analytics/h$a;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/h$a;->a([B)V

    .line 272
    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Lcom/umeng/analytics/h;->o()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 98
    const-string v2, "au_p"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    const-string v3, "au_u"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 104
    :cond_0
    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/umeng/analytics/h;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "au_p"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "au_u"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "channel"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 140
    :cond_0
    return-void
.end method

.method public b(Lu/aly/av;)[B
    .locals 4

    .prologue
    .line 446
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    const-string v2, "header"

    new-instance v3, Lcom/umeng/analytics/h$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/umeng/analytics/h$2;-><init>(Lcom/umeng/analytics/h;Lu/aly/av;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    new-instance v2, Lcom/umeng/analytics/h$3;

    invoke-direct {v2, p0, p1, v1}, Lcom/umeng/analytics/h$3;-><init>(Lcom/umeng/analytics/h;Lu/aly/av;Ljava/lang/StringBuilder;)V

    .line 462
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 463
    const-string v3, "body"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 468
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serialize entry:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu/aly/bl;->b(Ljava/lang/String;)V

    .line 469
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 474
    :goto_0
    return-object v0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    const-string v1, "Fail to serialize log ..."

    invoke-static {v1, v0}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 474
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 113
    sget-object v1, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_0

    .line 115
    const-string v2, "appkey"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_0
    return-object v0
.end method

.method c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 151
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "st"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    :cond_0
    return-void
.end method

.method d()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 128
    sget-object v1, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_0

    .line 130
    const-string v2, "channel"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_0
    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 143
    sget-object v1, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_0

    .line 145
    const-string v2, "st"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_0
    return-object v0
.end method

.method f()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 165
    sget-object v1, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 166
    if-eqz v1, :cond_0

    .line 167
    const-string v2, "vt"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 169
    :cond_0
    return v0
.end method

.method public g()Lu/aly/av;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 178
    .line 182
    :try_start_0
    invoke-direct {p0}, Lcom/umeng/analytics/h;->q()Ljava/lang/String;

    move-result-object v0

    .line 183
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {v2}, Lcom/umeng/analytics/h;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 218
    :cond_0
    :goto_0
    return-object v1

    .line 188
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :try_start_2
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 194
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/av;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 198
    if-eqz v2, :cond_2

    .line 200
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 205
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 207
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_2
    move-object v1, v0

    .line 218
    goto :goto_0

    .line 201
    :catch_0
    move-exception v1

    .line 202
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 213
    :catch_1
    move-exception v1

    .line 214
    :goto_3
    sget-boolean v2, Lu/aly/bl;->a:Z

    if-eqz v2, :cond_3

    .line 215
    invoke-static {v1}, Lu/aly/bl;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 208
    :catch_2
    move-exception v1

    .line 209
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 195
    :catch_3
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 196
    :goto_4
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 198
    if-eqz v2, :cond_4

    .line 200
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 205
    :cond_4
    :goto_5
    if-eqz v3, :cond_7

    .line 207
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    move-object v0, v1

    .line 210
    goto :goto_2

    .line 201
    :catch_4
    move-exception v0

    .line 202
    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 213
    :catch_5
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_3

    .line 208
    :catch_6
    move-exception v0

    .line 209
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    move-object v0, v1

    .line 210
    goto :goto_2

    .line 198
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_6
    if-eqz v2, :cond_5

    .line 200
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 205
    :cond_5
    :goto_7
    if-eqz v3, :cond_6

    .line 207
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 210
    :cond_6
    :goto_8
    :try_start_e
    throw v0

    .line 201
    :catch_7
    move-exception v2

    .line 202
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 208
    :catch_8
    move-exception v2

    .line 209
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_8

    .line 198
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 195
    :catch_9
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_a
    move-exception v0

    goto :goto_4

    :cond_7
    move-object v0, v1

    goto :goto_2
.end method

.method public h()V
    .locals 2

    .prologue
    .line 258
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/umeng/analytics/h;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 259
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/umeng/analytics/h;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 261
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/m;->a(Landroid/content/Context;)Lu/aly/m;

    move-result-object v0

    new-instance v1, Lcom/umeng/analytics/h$1;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/h$1;-><init>(Lcom/umeng/analytics/h;)V

    invoke-virtual {v0, v1}, Lu/aly/m;->d(Lu/aly/f;)V

    .line 268
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/umeng/analytics/h;->d:Lcom/umeng/analytics/h$a;

    invoke-virtual {v0}, Lcom/umeng/analytics/h$a;->a()Z

    move-result v0

    return v0
.end method

.method public j()Lcom/umeng/analytics/h$a;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/umeng/analytics/h;->d:Lcom/umeng/analytics/h$a;

    return-object v0
.end method

.method public k()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 295
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobclick_agent_header_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public l()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 299
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobclick_agent_update_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public m()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 303
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobclick_agent_state_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
