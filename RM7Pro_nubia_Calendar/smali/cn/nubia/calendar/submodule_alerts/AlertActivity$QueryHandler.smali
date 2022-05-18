.class Lcn/nubia/calendar/submodule_alerts/AlertActivity$QueryHandler;
.super Lcn/nubia/calendar/AsyncQueryService;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_alerts/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/submodule_alerts/AlertActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    iput-object p1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    .line 188
    invoke-direct {p0, p2}, Lcn/nubia/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 189
    return-void
.end method


# virtual methods
.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 215
    if-eqz p3, :cond_0

    move-object v0, p2

    .line 216
    check-cast v0, Ljava/lang/Long;

    .line 217
    .local v0, "alarmTime":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    const/4 v2, 0x0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 221
    invoke-static {v1, v2, v4, v5}, Lcn/nubia/calendar/submodule_alerts/AlertUtils;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V

    .line 225
    .end local v0    # "alarmTime":Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 196
    if-nez p3, :cond_0

    .line 211
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v0, p3}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$002(Lcn/nubia/calendar/submodule_alerts/AlertActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 202
    const-string v0, "AlertActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete cursor.getCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$100(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Lcn/nubia/calendar/submodule_alerts/AlertAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcn/nubia/calendar/submodule_alerts/AlertAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 204
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$200(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 207
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$300(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 209
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 230
    return-void
.end method
