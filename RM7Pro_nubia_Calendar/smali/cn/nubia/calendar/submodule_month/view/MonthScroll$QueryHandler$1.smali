.class Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler$1;
.super Landroid/os/AsyncTask;
.source "MonthScroll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;

.field final synthetic val$mCur:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;

    .prologue
    .line 1085
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler$1;->this$1:Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;

    iput-object p2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler$1;->val$mCur:Landroid/database/Cursor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1088
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler$1;->this$1:Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;->access$1900(Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler$1;->this$1:Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;->access$1900(Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_CALENDAR"

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1089
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler$1;->this$1:Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler$1;->val$mCur:Landroid/database/Cursor;

    invoke-static {v1, v2}, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;->access$2000(Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 1092
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1085
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler$1;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1097
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler$1;->this$1:Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$2102(Lcn/nubia/calendar/submodule_month/view/MonthScroll;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1098
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler$1;->this$1:Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$2200(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1099
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler$1;->this$1:Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$2200(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;->notifyDataSetChanged()V

    .line 1100
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1085
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll$QueryHandler$1;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
