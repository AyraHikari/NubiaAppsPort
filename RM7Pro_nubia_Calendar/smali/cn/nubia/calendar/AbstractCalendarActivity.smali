.class public abstract Lcn/nubia/calendar/AbstractCalendarActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "AbstractCalendarActivity.java"


# instance fields
.field protected mService:Lcn/nubia/calendar/AsyncQueryService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getAsyncQueryService()Lcn/nubia/calendar/AsyncQueryService;
    .locals 1

    .prologue
    .line 10
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/calendar/AbstractCalendarActivity;->mService:Lcn/nubia/calendar/AsyncQueryService;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcn/nubia/calendar/AsyncQueryService;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/AbstractCalendarActivity;->mService:Lcn/nubia/calendar/AsyncQueryService;

    .line 13
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/AbstractCalendarActivity;->mService:Lcn/nubia/calendar/AsyncQueryService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 10
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    return-void
.end method
