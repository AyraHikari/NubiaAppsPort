.class Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$QueryHandler;
.super Lcn/nubia/calendar/AsyncQueryService;
.source "AlertInCaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    iput-object p1, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    .line 156
    invoke-direct {p0, p2}, Lcn/nubia/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 157
    return-void
.end method


# virtual methods
.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 173
    if-eqz p3, :cond_0

    move-object v0, p2

    .line 174
    check-cast v0, Ljava/lang/Long;

    .line 176
    .local v0, "alarmTime":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    const/4 v2, 0x0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 180
    invoke-static {v1, v2, v4, v5}, Lcn/nubia/calendar/submodule_alerts/AlertUtils;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V

    .line 184
    .end local v0    # "alarmTime":Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 163
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    invoke-static {v0, p3}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->access$102(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 165
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->updateView()V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 189
    return-void
.end method
