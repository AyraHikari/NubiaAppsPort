.class public Lcn/nubia/music/utils/NotificationChannelUtil;
.super Ljava/lang/Object;
.source "NotificationChannelUtil.java"


# static fields
.field public static final COMMON_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "commonId"

.field public static final COMMON_NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "COMMON"

.field public static final COMMON_NOTIFICATION_ID:I = 0x64

.field public static final MESSAGE_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "messageId"

.field public static final MESSAGE_NOTIFICATION_CHANNEL_ID_S:Ljava/lang/String; = "messageId_s"

.field public static final MESSAGE_NOTIFICATION_CHANNEL_ID_S_V:Ljava/lang/String; = "messageId_s_v"

.field public static final MESSAGE_NOTIFICATION_CHANNEL_ID_V:Ljava/lang/String; = "messageId_v"

.field public static final MESSAGE_NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "MESSAGE"

.field public static final MOUNT_NOTIFICATION_ID:I = 0x66

.field public static final UPDATE_APK_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "updateApkId"

.field public static final UPDATE_APK_NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "UPDATE APK"

.field public static final UPDATE_APK_NOTIFICATION_ID:I = 0x65


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createChannel(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 92
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 93
    new-instance v1, Landroid/app/NotificationChannel;

    invoke-direct {v1, p0, p1, p2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 96
    :cond_0
    return-void
.end method

.method public static createCommonChannel()V
    .locals 3

    .prologue
    .line 52
    const-string v0, "commonId"

    const-string v1, "COMMON"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/NotificationChannelUtil;->createChannel(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    return-void
.end method

.method public static createMessageChannel()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 57
    new-array v1, v7, [J

    fill-array-data v1, :array_0

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 61
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "messageId"

    const-string v5, "MESSAGE"

    invoke-direct {v3, v4, v5, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 62
    invoke-virtual {v3, v8, v8}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 63
    invoke-virtual {v3, v9}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 64
    invoke-virtual {v3, v6}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 65
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "messageId_v"

    const-string v5, "MESSAGE"

    invoke-direct {v3, v4, v5, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 68
    invoke-virtual {v3, v8, v8}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 69
    invoke-virtual {v3, v6}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 70
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 71
    invoke-virtual {v3, v6}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 72
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "messageId_s"

    const-string v5, "MESSAGE"

    invoke-direct {v3, v4, v5, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 75
    invoke-virtual {v3, v9}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 76
    invoke-virtual {v3, v6}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 77
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "messageId_s_v"

    const-string v5, "MESSAGE"

    invoke-direct {v3, v4, v5, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 80
    invoke-virtual {v3, v6}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 81
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 82
    invoke-virtual {v3, v6}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 83
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    .line 87
    :cond_0
    return-void

    .line 57
    :array_0
    .array-data 8
        0x0
        0x64
        0x64
        0x96
    .end array-data
.end method

.method public static createUpdateApkChannel()V
    .locals 3

    .prologue
    .line 48
    const-string v0, "updateApkId"

    const-string v1, "UPDATE APK"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/NotificationChannelUtil;->createChannel(Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    return-void
.end method

.method public static deleteNotificationChannel(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 105
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 106
    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void
.end method
