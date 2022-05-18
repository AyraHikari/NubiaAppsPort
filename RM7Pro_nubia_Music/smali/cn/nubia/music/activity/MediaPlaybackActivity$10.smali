.class Lcn/nubia/music/activity/MediaPlaybackActivity$10;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/MediaPlaybackActivity;)V
    .locals 0

    .prologue
    .line 1554
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$10;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x2

    .line 1559
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$10;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$600(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    .line 1560
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1561
    new-instance v1, Landroid/content/Intent;

    const-string v2, "cn.nubia.music.timer.closemusic"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1562
    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$10;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$600(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1565
    packed-switch p2, :pswitch_data_0

    .line 1624
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1625
    return-void

    .line 1567
    :pswitch_0
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1569
    sput-wide v8, Lcn/nubia/music/MusicApp;->sTimerBegin:J

    .line 1570
    sput-wide v8, Lcn/nubia/music/MusicApp;->sTimerInterVal:J

    .line 1572
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$10;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1000(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$10;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1000(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->a()V

    goto :goto_0

    .line 1579
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcn/nubia/music/MusicApp;->sTimerBegin:J

    .line 1580
    const-wide/32 v2, 0xdbba0

    sput-wide v2, Lcn/nubia/music/MusicApp;->sTimerInterVal:J

    .line 1581
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1582
    sget-wide v2, Lcn/nubia/music/MusicApp;->sTimerBegin:J

    sget-wide v4, Lcn/nubia/music/MusicApp;->sTimerInterVal:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1587
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcn/nubia/music/MusicApp;->sTimerBegin:J

    .line 1588
    const-wide/32 v2, 0x1b7740

    sput-wide v2, Lcn/nubia/music/MusicApp;->sTimerInterVal:J

    .line 1590
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1591
    sget-wide v2, Lcn/nubia/music/MusicApp;->sTimerBegin:J

    sget-wide v4, Lcn/nubia/music/MusicApp;->sTimerInterVal:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1597
    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcn/nubia/music/MusicApp;->sTimerBegin:J

    .line 1598
    const-wide/32 v2, 0x2932e0

    sput-wide v2, Lcn/nubia/music/MusicApp;->sTimerInterVal:J

    .line 1599
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1600
    sget-wide v2, Lcn/nubia/music/MusicApp;->sTimerBegin:J

    sget-wide v4, Lcn/nubia/music/MusicApp;->sTimerInterVal:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1606
    :pswitch_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcn/nubia/music/MusicApp;->sTimerBegin:J

    .line 1607
    const-wide/32 v2, 0x36ee80

    sput-wide v2, Lcn/nubia/music/MusicApp;->sTimerInterVal:J

    .line 1608
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1609
    sget-wide v2, Lcn/nubia/music/MusicApp;->sTimerBegin:J

    sget-wide v4, Lcn/nubia/music/MusicApp;->sTimerInterVal:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1614
    :pswitch_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcn/nubia/music/MusicApp;->sTimerBegin:J

    .line 1615
    const-wide/32 v2, 0x5265c0

    sput-wide v2, Lcn/nubia/music/MusicApp;->sTimerInterVal:J

    .line 1616
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1617
    sget-wide v2, Lcn/nubia/music/MusicApp;->sTimerBegin:J

    sget-wide v4, Lcn/nubia/music/MusicApp;->sTimerInterVal:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1565
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
