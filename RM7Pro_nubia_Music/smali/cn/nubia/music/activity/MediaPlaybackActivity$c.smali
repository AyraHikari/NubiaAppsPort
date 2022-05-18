.class Lcn/nubia/music/activity/MediaPlaybackActivity$c;
.super Ljava/lang/Thread;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/MediaPlaybackActivity;

.field private volatile b:Z

.field private c:Landroid/widget/TextView;

.field private volatile d:Z


# direct methods
.method private constructor <init>(Lcn/nubia/music/activity/MediaPlaybackActivity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1413
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1415
    iput-boolean v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->b:Z

    .line 1417
    iput-boolean v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/music/activity/MediaPlaybackActivity;Lcn/nubia/music/activity/MediaPlaybackActivity$1;)V
    .locals 0

    .prologue
    .line 1413
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/MediaPlaybackActivity$c;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/music/activity/MediaPlaybackActivity$c;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1413
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->c:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->b:Z

    .line 1521
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1524
    iget-boolean v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->b:Z

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 1528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->d:Z

    .line 1529
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 1533
    iget-boolean v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->d:Z

    return v0
.end method

.method public run()V
    .locals 14

    .prologue
    const-wide/32 v12, 0xea60

    const-wide/16 v10, 0xa

    const/4 v0, 0x0

    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    .line 1422
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1424
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$500(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/music/activity/MediaPlaybackActivity$b;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPopAdapter==null is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$500(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/music/activity/MediaPlaybackActivity$b;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1517
    :cond_1
    :goto_0
    return-void

    .line 1434
    :cond_2
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$900(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/widget/ListView;

    move-result-object v1

    if-nez v1, :cond_6

    .line 1435
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$400(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/commonui/widget/NubiaMorePopup;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaMorePopup;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$902(Lcn/nubia/music/activity/MediaPlaybackActivity;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 1431
    :cond_3
    iget-boolean v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->b:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->d:Z

    if-eqz v1, :cond_2

    .line 1449
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->b:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->d:Z

    if-nez v0, :cond_5

    sget-wide v0, Lcn/nubia/music/MusicApp;->sTimerBegin:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_5

    .line 1453
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1454
    sget-wide v2, Lcn/nubia/music/MusicApp;->sTimerBegin:J

    sub-long/2addr v0, v2

    .line 1455
    sget-wide v2, Lcn/nubia/music/MusicApp;->sTimerInterVal:J

    sub-long v0, v2, v0

    .line 1456
    cmp-long v2, v0, v6

    if-gtz v2, :cond_7

    .line 1457
    sput-wide v6, Lcn/nubia/music/MusicApp;->sTimerBegin:J

    .line 1458
    sput-wide v6, Lcn/nubia/music/MusicApp;->sTimerInterVal:J

    .line 1460
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 1461
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$4500(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/music/activity/MediaPlaybackActivity$c$1;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/MediaPlaybackActivity$c$1;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1505
    :cond_5
    sget-wide v0, Lcn/nubia/music/MusicApp;->sTimerBegin:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1507
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$4500(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/music/activity/MediaPlaybackActivity$c$3;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/MediaPlaybackActivity$c$3;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1438
    :cond_6
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$900(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1439
    if-eqz v1, :cond_3

    .line 1442
    const v0, 0x7f100161

    .line 1443
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->c:Landroid/widget/TextView;

    goto :goto_1

    .line 1471
    :cond_7
    div-long v4, v0, v12

    .line 1473
    const-wide/16 v2, 0x1

    cmp-long v2, v4, v2

    if-ltz v2, :cond_9

    .line 1474
    mul-long v2, v4, v12

    sub-long/2addr v0, v2

    div-long/2addr v0, v8

    move-wide v2, v0

    .line 1480
    :goto_2
    cmp-long v0, v4, v10

    if-ltz v0, :cond_a

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1481
    :goto_3
    cmp-long v0, v2, v10

    if-ltz v0, :cond_b

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1483
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1485
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    .line 1486
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$4500(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/nubia/music/activity/MediaPlaybackActivity$c$2;

    invoke-direct {v2, p0, v0}, Lcn/nubia/music/activity/MediaPlaybackActivity$c$2;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity$c;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1498
    :cond_8
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1499
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 1476
    :cond_9
    div-long/2addr v0, v8

    move-wide v2, v0

    goto :goto_2

    .line 1480
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    .line 1481
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method
