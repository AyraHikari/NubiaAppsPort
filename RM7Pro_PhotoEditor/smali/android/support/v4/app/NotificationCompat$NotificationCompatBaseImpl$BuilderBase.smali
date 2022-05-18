.class public Landroid/support/v4/app/NotificationCompat$NotificationCompatBaseImpl$BuilderBase;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat$NotificationCompatBaseImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderBase"
.end annotation


# instance fields
.field private mBuilder:Landroid/app/Notification$Builder;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)V
    .locals 5

    move-object v0, p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/app/Notification$Builder;

    move-object v2, p1

    invoke-direct {v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-wide v2, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v2, v0, Landroid/app/Notification;->icon:I

    iget v3, v0, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object v3, p6

    invoke-virtual {v1, v2, p6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v3, v0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v2, v0, Landroid/app/Notification;->ledARGB:I

    iget v3, v0, Landroid/app/Notification;->ledOnMS:I

    iget v4, v0, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v2, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v2, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v2, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v2, v0, Landroid/app/Notification;->defaults:I

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object v2, p3

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object v2, p4

    invoke-virtual {v1, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object v2, p5

    invoke-virtual {v1, p5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object v2, p8

    invoke-virtual {v1, p8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    move-object v0, p9

    goto :goto_3

    :cond_3
    move-object v0, p9

    move v3, v4

    :goto_3
    invoke-virtual {v1, p9, v3}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v0

    move-object v1, p10

    invoke-virtual {v0, p10}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v0

    move v1, p7

    invoke-virtual {v0, p7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v0

    move/from16 v1, p11

    move/from16 v2, p12

    move/from16 v3, p13

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v0

    move-object v1, p0

    iput-object v0, v1, Landroid/support/v4/app/NotificationCompat$NotificationCompatBaseImpl$BuilderBase;->mBuilder:Landroid/app/Notification$Builder;

    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$NotificationCompatBaseImpl$BuilderBase;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getBuilder()Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$NotificationCompatBaseImpl$BuilderBase;->mBuilder:Landroid/app/Notification$Builder;

    return-object v0
.end method
