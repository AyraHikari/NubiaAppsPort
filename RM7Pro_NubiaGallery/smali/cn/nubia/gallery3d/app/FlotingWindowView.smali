.class public Lcn/nubia/gallery3d/app/FlotingWindowView;
.super Ljava/lang/Object;
.source "FlotingWindowView.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "PhototEditGifMakeNotification"

.field public static final FLOATING_CONTENT:Ljava/lang/String; = "floating_content"

.field public static final FLOATING_INTENT:Ljava/lang/String; = "floating_intent"

.field public static final FLOATING_MODE:Ljava/lang/String; = "floating_mode"

.field public static final FLOATING_SHOWJUMPAPPICON:Ljava/lang/String; = "floating_icon_pkgname"

.field public static final FLOATING_SHOWNOTIFICATION:Ljava/lang/String; = "showNotification"

.field public static final FLOATING_TITLE:Ljava/lang/String; = "floating_title"

.field public static final NOTIFICATION_SERVICE:Ljava/lang/String; = "notification"

.field public static final NOTI_NOTIFY_GROUP:Ljava/lang/String; = "Notify"

.field public static final NOTI_NOTIFY_SORT:Ljava/lang/String; = "z0"


# instance fields
.field private context:Landroid/content/Context;

.field private notifiId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xf4246

    .line 33
    iput v0, p0, Lcn/nubia/gallery3d/app/FlotingWindowView;->notifiId:I

    .line 36
    iput-object p1, p0, Lcn/nubia/gallery3d/app/FlotingWindowView;->context:Landroid/content/Context;

    return-void
.end method

.method private setNotificationChannel(Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 9

    const-string p1, "GifMakeNotification"

    :try_start_0
    const-string v0, "android.app.NotificationChannel"

    .line 108
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "android.app.NotificationManager"

    .line 109
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setDescription"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 110
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    .line 112
    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const-string v7, "java.lang.CharSequence"

    .line 113
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v5, v8

    .line 114
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "PhototEditGifMakeNotification"

    aput-object v5, v4, v6

    aput-object p1, v4, v3

    .line 116
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 117
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v6

    .line 118
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "createNotificationChannel"

    new-array v2, v3, [Ljava/lang/Class;

    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v6

    .line 119
    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v6

    .line 122
    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private setNotificationChannelId(Landroid/app/Notification$Builder;)V
    .locals 6

    :try_start_0
    const-string v0, "android.app.Notification$Builder"

    .line 88
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setChannelId"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 89
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "PhototEditGifMakeNotification"

    aput-object v2, v1, v5

    .line 91
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public showFloadingWindow(Landroid/net/Uri;)V
    .locals 10

    .line 40
    iget-object v0, p0, Lcn/nubia/gallery3d/app/FlotingWindowView;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 41
    iget-object v1, p0, Lcn/nubia/gallery3d/app/FlotingWindowView;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcn/nubia/gallery3d/app/FlotingWindowView;->setNotificationChannel(Landroid/content/Context;Landroid/app/NotificationManager;)V

    .line 42
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/FlotingWindowView;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/app/FlotingWindowView;->setNotificationChannelId(Landroid/app/Notification$Builder;)V

    .line 44
    iget-object v2, p0, Lcn/nubia/gallery3d/app/FlotingWindowView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "cn.nubia.gallery3d"

    .line 45
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v4, "cn.nubia.gallery.action.force.REVIEW"

    .line 46
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 49
    iget-object p1, p0, Lcn/nubia/gallery3d/app/FlotingWindowView;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 50
    iget-object v2, p0, Lcn/nubia/gallery3d/app/FlotingWindowView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f080057

    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v6, "Notify"

    .line 51
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v6, "z0"

    .line 52
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v6, p0, Lcn/nubia/gallery3d/app/FlotingWindowView;->context:Landroid/content/Context;

    const v7, 0x7f10006f

    .line 53
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 54
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v5, p0, Lcn/nubia/gallery3d/app/FlotingWindowView;->context:Landroid/content/Context;

    const v6, 0x7f100054

    .line 55
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 56
    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const-wide/16 v8, 0x0

    .line 57
    invoke-virtual {v2, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 58
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v5, "floating_mode"

    const/4 v8, 0x1

    .line 59
    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "floating_icon_pkgname"

    .line 60
    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v3, "showNotification"

    .line 61
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    iget-object v3, p0, Lcn/nubia/gallery3d/app/FlotingWindowView;->context:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "floating_title"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 63
    iget-object v3, p0, Lcn/nubia/gallery3d/app/FlotingWindowView;->context:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "floating_content"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v3, "floating_intent"

    .line 64
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 66
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 67
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 68
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 69
    iget v1, p0, Lcn/nubia/gallery3d/app/FlotingWindowView;->notifiId:I

    add-int/2addr v1, v8

    iput v1, p0, Lcn/nubia/gallery3d/app/FlotingWindowView;->notifiId:I

    .line 70
    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
