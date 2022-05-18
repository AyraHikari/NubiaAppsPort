.class public Lcn/nubia/calendar/cloud/CalendarSyncService;
.super Landroid/app/Service;
.source "CalendarSyncService.java"


# instance fields
.field private mIBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncService;->mIBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncService;->mIBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 17
    const-string v0, "android.permission.READ_CALENDAR"

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.WRITE_CALENDAR"

    .line 18
    invoke-static {p0, v0}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Lcn/nubia/calendar/cloud/CalendarSyncAdapter;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/cloud/CalendarSyncAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/nubia/calendar/cloud/CalendarSyncAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/cloud/CalendarSyncService;->mIBinder:Landroid/os/IBinder;

    .line 22
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 34
    return-void
.end method
