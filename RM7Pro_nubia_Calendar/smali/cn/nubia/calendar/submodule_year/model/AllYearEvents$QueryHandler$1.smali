.class Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler$1;
.super Landroid/os/AsyncTask;
.source "AllYearEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;

.field final synthetic val$cookie:Ljava/lang/Object;

.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;

    .prologue
    .line 151
    iput-object p1, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler$1;->this$1:Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;

    iput-object p2, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler$1;->val$cursor:Landroid/database/Cursor;

    iput-object p3, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler$1;->val$cookie:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x2

    .line 154
    :cond_0
    :goto_0
    iget-object v5, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 155
    iget-object v5, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 156
    .local v6, "startTime":J
    iget-object v5, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler$1;->val$cursor:Landroid/database/Cursor;

    const/4 v8, 0x3

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 157
    .local v2, "endTime":J
    cmp-long v5, v6, v2

    if-nez v5, :cond_1

    .line 158
    iget-object v5, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler$1;->this$1:Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;

    iget-object v5, v5, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_year/model/AllYearEvents;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->access$100(Lcn/nubia/calendar/submodule_year/model/AllYearEvents;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v8, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler$1;->val$cursor:Landroid/database/Cursor;

    .line 159
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler$1;->val$cursor:Landroid/database/Cursor;

    .line 160
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 158
    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 161
    :cond_1
    cmp-long v5, v2, v6

    if-lez v5, :cond_0

    .line 162
    sub-long v0, v2, v6

    .line 163
    .local v0, "countDay":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    int-to-long v8, v4

    const-wide/16 v10, 0x1

    add-long/2addr v10, v0

    cmp-long v5, v8, v10

    if-gez v5, :cond_0

    .line 164
    iget-object v5, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler$1;->this$1:Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;

    iget-object v5, v5, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_year/model/AllYearEvents;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->access$100(Lcn/nubia/calendar/submodule_year/model/AllYearEvents;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v8, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler$1;->val$cursor:Landroid/database/Cursor;

    .line 165
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    int-to-long v10, v4

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler$1;->val$cursor:Landroid/database/Cursor;

    .line 167
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 164
    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 173
    .end local v0    # "countDay":J
    .end local v2    # "endTime":J
    .end local v4    # "i":I
    .end local v6    # "startTime":J
    :cond_2
    iget-object v5, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 174
    const/4 v5, 0x0

    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 151
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 180
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler$1;->val$cookie:Ljava/lang/Object;

    check-cast v2, Lcn/nubia/calendar/submodule_year/view/YearView;

    iget v1, v2, Lcn/nubia/calendar/submodule_year/view/YearView;->year:I

    .line 181
    .local v1, "year":I
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler$1;->this$1:Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_year/model/AllYearEvents;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->access$200(Lcn/nubia/calendar/submodule_year/model/AllYearEvents;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_year/model/IQueryEventComplete;

    .line 182
    .local v0, "listener":Lcn/nubia/calendar/submodule_year/model/IQueryEventComplete;
    if-eqz v0, :cond_0

    .line 183
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler$1;->val$cookie:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcn/nubia/calendar/submodule_year/model/IQueryEventComplete;->onQueryEventComplete(Ljava/lang/Object;)V

    .line 185
    :cond_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler$1;->this$1:Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_year/model/AllYearEvents;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->access$300(Lcn/nubia/calendar/submodule_year/model/AllYearEvents;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler$1;->val$cookie:Ljava/lang/Object;

    check-cast v2, Lcn/nubia/calendar/submodule_year/view/YearView;

    iget v2, v2, Lcn/nubia/calendar/submodule_year/view/YearView;->year:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    return-void
.end method
