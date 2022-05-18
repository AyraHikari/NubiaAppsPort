.class public Lcn/nubia/music/MediaPlaybackService$MountIntentServiceInService;
.super Landroid/app/IntentService;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MountIntentServiceInService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4177
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 4178
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 4173
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 4174
    return-void
.end method

.method private startForeground()V
    .locals 2

    .prologue
    .line 4201
    invoke-static {}, Lcn/nubia/music/utils/NotificationChannelUtil;->createCommonChannel()V

    .line 4203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 4204
    new-instance v0, Landroid/app/Notification$Builder;

    const-string v1, "commonId"

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4208
    :goto_0
    const/16 v1, 0x66

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcn/nubia/music/MediaPlaybackService$MountIntentServiceInService;->startForeground(ILandroid/app/Notification;)V

    .line 4209
    return-void

    .line 4206
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 4213
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/music/MediaPlaybackService$MountIntentServiceInService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4214
    invoke-static {p0, v0}, Lcn/nubia/music/utils/AdaptationUtil;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 4215
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .prologue
    .line 4196
    const-string v0, "MountIntentServiceInService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4197
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 4198
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 4183
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->updateStorageState()V

    .line 4184
    invoke-static {}, Lcn/nubia/music/MediaPlaybackService;->getStorageMsg()I

    move-result v0

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$6102(I)I

    .line 4185
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 4189
    const-string v0, "MountIntentServiceInService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4190
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService$MountIntentServiceInService;->startForeground()V

    .line 4191
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
