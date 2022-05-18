.class public Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationMgrWrapper;
.super Ljava/lang/Object;
.source "AlertService.java"

# interfaces
.implements Lcn/nubia/calendar/submodule_alerts/NotificationMgr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_alerts/AlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationMgrWrapper"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mNm:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/app/NotificationManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "nm"    # Landroid/app/NotificationManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationMgrWrapper;->mNm:Landroid/app/NotificationManager;

    .line 189
    iput-object p2, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationMgrWrapper;->mContext:Landroid/content/Context;

    .line 190
    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationMgrWrapper;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 195
    return-void
.end method

.method public cancel(Ljava/lang/String;I)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationMgrWrapper;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 200
    return-void
.end method

.method public cancelAll()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationMgrWrapper;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 205
    return-void
.end method

.method public notify(ILcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "nw"    # Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;

    .prologue
    .line 212
    iget-object v3, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationMgrWrapper;->mContext:Landroid/content/Context;

    .line 213
    invoke-static {v3}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 214
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v3, "preferences_alerts_vibrate"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 216
    .local v0, "eventReminder":Z
    if-eqz v0, :cond_0

    .line 217
    const/4 v3, 0x2

    new-array v2, v3, [J

    fill-array-data v2, :array_0

    .line 220
    .local v2, "vibrate":[J
    iget-object v3, p2, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;->mNotification:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->vibrate:[J

    .line 222
    .end local v2    # "vibrate":[J
    :cond_0
    iget-object v3, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationMgrWrapper;->mNm:Landroid/app/NotificationManager;

    const-string v4, "ticker_notification"

    iget-object v5, p2, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v4, p1, v5}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 224
    return-void

    .line 217
    nop

    :array_0
    .array-data 8
        0x0
        0x1f4
    .end array-data
.end method

.method public notify(Ljava/lang/String;ILcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "nw"    # Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;

    .prologue
    .line 239
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 241
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "canlendar_event"

    const-string v2, "ticker_notification"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 244
    .local v0, "mNotificationChannel":Landroid/app/NotificationChannel;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationMgrWrapper;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 247
    .end local v0    # "mNotificationChannel":Landroid/app/NotificationChannel;
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationMgrWrapper;->mNm:Landroid/app/NotificationManager;

    const-string v2, "ticker_notification"

    iget-object v3, p3, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, p2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 248
    return-void
.end method
