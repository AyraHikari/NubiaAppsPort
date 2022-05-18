.class public Landroid/support/v4/app/NotificationCompatApi21$Builder;
.super Ljava/lang/Object;
.source "NotificationCompatApi21.java"

# interfaces
.implements Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
.implements Landroid/support/v4/app/NotificationBuilderWithActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private b:Landroid/app/Notification$Builder;

.field private mBigContentView:Landroid/widget/RemoteViews;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mExtras:Landroid/os/Bundle;

.field private mGroupAlertBehavior:I

.field private mHeadsUpContentView:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;IILandroid/app/Notification;Ljava/lang/String;ZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "n"    # Landroid/app/Notification;
    .param p3, "contentTitle"    # Ljava/lang/CharSequence;
    .param p4, "contentText"    # Ljava/lang/CharSequence;
    .param p5, "contentInfo"    # Ljava/lang/CharSequence;
    .param p6, "tickerView"    # Landroid/widget/RemoteViews;
    .param p7, "number"    # I
    .param p8, "contentIntent"    # Landroid/app/PendingIntent;
    .param p9, "fullScreenIntent"    # Landroid/app/PendingIntent;
    .param p10, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p11, "progressMax"    # I
    .param p12, "progress"    # I
    .param p13, "progressIndeterminate"    # Z
    .param p14, "showWhen"    # Z
    .param p15, "useChronometer"    # Z
    .param p16, "priority"    # I
    .param p17, "subText"    # Ljava/lang/CharSequence;
    .param p18, "localOnly"    # Z
    .param p19, "category"    # Ljava/lang/String;
    .param p21, "extras"    # Landroid/os/Bundle;
    .param p22, "color"    # I
    .param p23, "visibility"    # I
    .param p24, "publicVersion"    # Landroid/app/Notification;
    .param p25, "groupKey"    # Ljava/lang/String;
    .param p26, "groupSummary"    # Z
    .param p27, "sortKey"    # Ljava/lang/String;
    .param p28, "contentView"    # Landroid/widget/RemoteViews;
    .param p29, "bigContentView"    # Landroid/widget/RemoteViews;
    .param p30, "headsUpContentView"    # Landroid/widget/RemoteViews;
    .param p31, "groupAlertBehavior"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Notification;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Landroid/widget/RemoteViews;",
            "I",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Landroid/graphics/Bitmap;",
            "IIZZZI",
            "Ljava/lang/CharSequence;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "II",
            "Landroid/app/Notification;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p20, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-wide v6, p2, Landroid/app/Notification;->when:J

    .line 84
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 85
    move/from16 v0, p14

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, p2, Landroid/app/Notification;->icon:I

    iget v7, p2, Landroid/app/Notification;->iconLevel:I

    .line 86
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 87
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {v5, v6, p6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v7, p2, Landroid/app/Notification;->audioStreamType:I

    .line 89
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p2, Landroid/app/Notification;->vibrate:[J

    .line 90
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, p2, Landroid/app/Notification;->ledARGB:I

    iget v7, p2, Landroid/app/Notification;->ledOnMS:I

    iget v8, p2, Landroid/app/Notification;->ledOffMS:I

    .line 91
    invoke-virtual {v5, v6, v7, v8}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v5, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 92
    :goto_0
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v5, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    .line 93
    :goto_1
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v5, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    .line 94
    :goto_2
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, p2, Landroid/app/Notification;->defaults:I

    .line 95
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 96
    invoke-virtual {v5, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 97
    invoke-virtual {v5, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 98
    move-object/from16 v0, p17

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 99
    invoke-virtual {v5, p5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 100
    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 101
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v5, p2, Landroid/app/Notification;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    .line 102
    :goto_3
    move-object/from16 v0, p9

    invoke-virtual {v6, v0, v5}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 104
    move-object/from16 v0, p10

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 105
    move/from16 v0, p7

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 106
    move/from16 v0, p15

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 107
    move/from16 v0, p16

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 108
    move/from16 v0, p11

    move/from16 v1, p12

    move/from16 v2, p13

    invoke-virtual {v5, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 109
    move/from16 v0, p18

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 110
    move-object/from16 v0, p25

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 111
    move/from16 v0, p26

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 112
    move-object/from16 v0, p27

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 113
    move-object/from16 v0, p19

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 114
    move/from16 v0, p22

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 115
    move/from16 v0, p23

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 116
    move-object/from16 v0, p24

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->b:Landroid/app/Notification$Builder;

    .line 117
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mExtras:Landroid/os/Bundle;

    .line 118
    if-eqz p21, :cond_0

    .line 119
    iget-object v5, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v0, p21

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 121
    :cond_0
    invoke-virtual/range {p20 .. p20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 122
    .local v4, "person":Ljava/lang/String;
    iget-object v6, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_4

    .line 91
    .end local v4    # "person":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 92
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 93
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 101
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 124
    :cond_5
    move-object/from16 v0, p28

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 125
    move-object/from16 v0, p29

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    .line 126
    move-object/from16 v0, p30

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 127
    move/from16 v0, p31

    iput v0, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mGroupAlertBehavior:I

    .line 128
    return-void
.end method

.method private removeSoundAndVibration(Landroid/app/Notification;)V
    .locals 1
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v0, 0x0

    .line 172
    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 173
    iput-object v0, p1, Landroid/app/Notification;->vibrate:[J

    .line 174
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 175
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 176
    return-void
.end method


# virtual methods
.method public addAction(Landroid/support/v4/app/NotificationCompatBase$Action;)V
    .locals 1
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompatBase$Action;

    .prologue
    .line 132
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->b:Landroid/app/Notification$Builder;

    invoke-static {v0, p1}, Landroid/support/v4/app/NotificationCompatApi20;->addAction(Landroid/app/Notification$Builder;Landroid/support/v4/app/NotificationCompatBase$Action;)V

    .line 133
    return-void
.end method

.method public build()Landroid/app/Notification;
    .locals 3

    .prologue
    .line 142
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->b:Landroid/app/Notification$Builder;

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 143
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 144
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 147
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 150
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_2

    .line 151
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 154
    :cond_2
    iget v1, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mGroupAlertBehavior:I

    if-eqz v1, :cond_4

    .line 156
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mGroupAlertBehavior:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 159
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationCompatApi21$Builder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 162
    :cond_3
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_4

    iget v1, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mGroupAlertBehavior:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 165
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationCompatApi21$Builder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 168
    :cond_4
    return-object v0
.end method

.method public getBuilder()Landroid/app/Notification$Builder;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->b:Landroid/app/Notification$Builder;

    return-object v0
.end method
