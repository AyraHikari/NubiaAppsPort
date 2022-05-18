.class public Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;
.super Ljava/lang/Object;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_alerts/AlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationWrapper"
.end annotation


# instance fields
.field mBegin:J

.field mEnd:J

.field mEventId:J

.field mNotification:Landroid/app/Notification;

.field mNw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mVibrate:Z


# direct methods
.method public constructor <init>(Landroid/app/Notification;)V
    .locals 0
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;->mNotification:Landroid/app/Notification;

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;IJJJZ)V
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "notificationId"    # I
    .param p3, "eventId"    # J
    .param p5, "startMillis"    # J
    .param p7, "endMillis"    # J
    .param p9, "doPopup"    # Z

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;->mNotification:Landroid/app/Notification;

    .line 162
    iput-wide p3, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;->mEventId:J

    .line 163
    iput-wide p5, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;->mBegin:J

    .line 164
    iput-wide p7, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;->mEnd:J

    .line 168
    return-void
.end method


# virtual methods
.method public add(Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;)V
    .locals 1
    .param p1, "nw"    # Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;

    .prologue
    .line 175
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;->mNw:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;->mNw:Ljava/util/ArrayList;

    .line 178
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;->mNw:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method
