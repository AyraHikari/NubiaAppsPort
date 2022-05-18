.class public abstract Lcn/nubia/calendar/AbstractCalendarActivityMain;
.super Lcn/nubia/deftmachanism/DeftActivity;
.source "AbstractCalendarActivityMain.java"


# instance fields
.field protected mService:Lcn/nubia/calendar/AsyncQueryService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcn/nubia/deftmachanism/DeftActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getAsyncQueryService()Lcn/nubia/calendar/AsyncQueryService;
    .locals 1

    .prologue
    .line 12
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/calendar/AbstractCalendarActivityMain;->mService:Lcn/nubia/calendar/AsyncQueryService;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcn/nubia/calendar/AsyncQueryService;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/AbstractCalendarActivityMain;->mService:Lcn/nubia/calendar/AsyncQueryService;

    .line 15
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/AbstractCalendarActivityMain;->mService:Lcn/nubia/calendar/AsyncQueryService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcn/nubia/deftmachanism/DeftActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    return-void
.end method
