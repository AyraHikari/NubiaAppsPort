.class Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
.super Ljava/lang/Object;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_alerts/AlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationInfo"
.end annotation


# instance fields
.field allDay:Z

.field description:Ljava/lang/String;

.field endMillis:J

.field eventId:J

.field eventName:Ljava/lang/String;

.field location:Ljava/lang/String;

.field minutes:I

.field newAlert:Z

.field startMillis:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZZI)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "startMillis"    # J
    .param p6, "endMillis"    # J
    .param p8, "eventId"    # J
    .param p10, "allDay"    # Z
    .param p11, "newAlert"    # Z
    .param p12, "minutes"    # I

    .prologue
    .line 1208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1209
    iput-object p1, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    .line 1210
    iput-object p2, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->location:Ljava/lang/String;

    .line 1211
    iput-object p3, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->description:Ljava/lang/String;

    .line 1212
    iput-wide p4, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->startMillis:J

    .line 1213
    iput-wide p6, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->endMillis:J

    .line 1214
    iput-wide p8, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->eventId:J

    .line 1215
    iput-boolean p11, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->newAlert:Z

    .line 1216
    iput-boolean p10, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->allDay:Z

    .line 1217
    iput p12, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->minutes:I

    .line 1218
    return-void
.end method
