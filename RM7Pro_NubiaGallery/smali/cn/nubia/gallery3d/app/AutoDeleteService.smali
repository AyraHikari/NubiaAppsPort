.class public Lcn/nubia/gallery3d/app/AutoDeleteService;
.super Landroid/app/Service;
.source "AutoDeleteService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/app/AutoDeleteService$DeleteTask;
    }
.end annotation


# static fields
.field private static final ANDROID_N_MR1:I = 0x19

.field private static final CHANNEL_ID:Ljava/lang/String; = "AutoDeleteServiceNotificationChannel"

.field public static final KEY_TASK_TYPE:Ljava/lang/String; = "task-type"

.field private static final MSG_DELETE_DONE:I = 0x1

.field private static final MSG_STOPSELF:I = 0x0

.field private static final NOTIFICATION_ID:I = 0x2711

.field private static final TAG:Ljava/lang/String; = "AutoDeleteService"

.field public static final TASK_TYPE_BULK_DELETE:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mTask:Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    new-instance v0, Lcn/nubia/gallery3d/app/AutoDeleteService$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/AutoDeleteService$1;-><init>(Lcn/nubia/gallery3d/app/AutoDeleteService;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/AutoDeleteService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/app/AutoDeleteService;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/gallery3d/app/AutoDeleteService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getForegroundServiceNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 7

    const-string v0, "notification"

    .line 123
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 124
    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/app/AutoDeleteService;->setNotificationChannel(Landroid/content/Context;Landroid/app/NotificationManager;)V

    .line 125
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "android.app.Notification$Builder"

    .line 127
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setChannelId"

    new-array v4, v1, [Ljava/lang/Class;

    .line 128
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "AutoDeleteServiceNotificationChannel"

    aput-object v4, v3, v6

    .line 130
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 141
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 139
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v2

    .line 137
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v2

    .line 135
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v2

    .line 133
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 143
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v2, 0x7f0800df

    .line 144
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f100036

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 147
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private setNotificationChannel(Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 9

    const v0, 0x7f100182

    .line 153
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.app.NotificationChannel"

    .line 154
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "android.app.NotificationManager"

    .line 155
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setDescription"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 156
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    .line 158
    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const-string v7, "java.lang.CharSequence"

    .line 159
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v5, v8

    .line 160
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const-string v5, "IMPORTANCE_LOW"

    .line 161
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-array v4, v4, [Ljava/lang/Object;

    const-string v7, "AutoDeleteServiceNotificationChannel"

    aput-object v7, v4, v6

    aput-object p1, v4, v3

    .line 163
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 164
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v6

    .line 165
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "createNotificationChannel"

    new-array v2, v3, [Ljava/lang/Class;

    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v6

    .line 166
    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v6

    .line 169
    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 185
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 183
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 179
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception p1

    .line 175
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static startDeleteService(Landroid/content/Context;)V
    .locals 3

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/gallery3d/app/AutoDeleteService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "task-type"

    const/4 v2, 0x0

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-le v1, v2, :cond_0

    .line 93
    invoke-static {p0, v0}, Lcn/nubia/gallery3d/app/AutoDeleteService;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method private static startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    :try_start_0
    const-string v0, "android.content.Context"

    .line 101
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startForegroundService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 102
    const-class v4, Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    .line 104
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 113
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception p0

    .line 107
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 62
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    .line 64
    invoke-direct {p0, p0}, Lcn/nubia/gallery3d/app/AutoDeleteService;->getForegroundServiceNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x2711

    .line 65
    invoke-virtual {p0, v1, v0}, Lcn/nubia/gallery3d/app/AutoDeleteService;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 82
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 83
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AutoDeleteService;->mTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->waitDone()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcn/nubia/gallery3d/app/AutoDeleteService;->mTask:Lcn/nubia/gallery3d/util/Future;

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    return p1

    .line 72
    :cond_0
    iget-object p2, p0, Lcn/nubia/gallery3d/app/AutoDeleteService;->mTask:Lcn/nubia/gallery3d/util/Future;

    if-nez p2, :cond_1

    const/4 p2, -0x1

    const-string p3, "task-type"

    .line 73
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 74
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/AutoDeleteService;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object p2

    new-instance p3, Lcn/nubia/gallery3d/app/AutoDeleteService$DeleteTask;

    invoke-direct {p3, p0, p1}, Lcn/nubia/gallery3d/app/AutoDeleteService$DeleteTask;-><init>(Lcn/nubia/gallery3d/app/AutoDeleteService;I)V

    .line 75
    invoke-virtual {p2, p3}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;)Lcn/nubia/gallery3d/util/Future;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/AutoDeleteService;->mTask:Lcn/nubia/gallery3d/util/Future;

    :cond_1
    const/4 p1, 0x3

    return p1
.end method
