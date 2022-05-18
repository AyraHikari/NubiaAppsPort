.class Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;
.super Landroid/os/Handler;
.source "LeagueShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/share/league/LeagueShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceStatusHandler"
.end annotation


# instance fields
.field private mLeagueShare:Lcn/nubia/share/league/LeagueShare;


# direct methods
.method public constructor <init>(Lcn/nubia/share/league/LeagueShare;)V
    .locals 0

    .line 471
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 472
    iput-object p1, p0, Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 477
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    const-string v1, "NS-LeagueShare"

    if-nez v0, :cond_0

    const-string p1, "DeviceStatusHandler, handleMessage, mLeagueShare is null !"

    .line 478
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 482
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage, not supported ! msg.what="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 515
    :cond_1
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/share/league/LeagueShare;->access$300(Lcn/nubia/share/league/LeagueShare;Z)V

    .line 516
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage, MSG_LEAGUE_SHARE_OFF, mIsTurnOn="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    invoke-static {v0}, Lcn/nubia/share/league/LeagueShare;->access$1300(Lcn/nubia/share/league/LeagueShare;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 510
    :cond_2
    iget-object p1, p0, Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    invoke-static {p1, v2}, Lcn/nubia/share/league/LeagueShare;->access$300(Lcn/nubia/share/league/LeagueShare;Z)V

    .line 511
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage, MSG_LEAGUE_SHARE_ON, mIsTurnOn="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    invoke-static {v0}, Lcn/nubia/share/league/LeagueShare;->access$1300(Lcn/nubia/share/league/LeagueShare;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 495
    :cond_3
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    invoke-static {v0}, Lcn/nubia/share/league/LeagueShare;->access$1100(Lcn/nubia/share/league/LeagueShare;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "handleMessage, MSG_DEVICE_STATUS_CHANGED, device panel not visible !"

    .line 496
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 500
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcn/nubia/leagueshare/NBShareDevice;

    if-nez v0, :cond_5

    goto :goto_0

    .line 504
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/nubia/leagueshare/NBShareDevice;

    check-cast p1, Lcn/nubia/leagueshare/NBShareDevice;

    .line 505
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    invoke-static {v0, p1}, Lcn/nubia/share/league/LeagueShare;->access$1200(Lcn/nubia/share/league/LeagueShare;Lcn/nubia/leagueshare/NBShareDevice;)V

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage, MSG_DEVICE_STATUS_CHANGED, device="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcn/nubia/share/league/LeagueShare;->deviceToStr(Lcn/nubia/leagueshare/NBShareDevice;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    :goto_0
    const-string p1, "handleMessage, MSG_DEVICE_STATUS_CHANGED, obj is null or not NBShareDevice !"

    .line 501
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 484
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_9

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/List;

    if-nez v0, :cond_8

    goto :goto_2

    .line 489
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 490
    iget-object v0, p0, Lcn/nubia/share/league/LeagueShare$DeviceStatusHandler;->mLeagueShare:Lcn/nubia/share/league/LeagueShare;

    invoke-static {v0, p1}, Lcn/nubia/share/league/LeagueShare;->access$1000(Lcn/nubia/share/league/LeagueShare;Ljava/util/List;)V

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage, MSG_NEW_DEVICE_ARRIVED, device list size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_9
    :goto_2
    const-string p1, "handleMessage, MSG_NEW_DEVICE_ARRIVED, obj is null or not NBShareDevice !"

    .line 485
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
