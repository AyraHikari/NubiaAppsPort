.class Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper$QueryHandler;
.super Lcn/nubia/calendar/AsyncQueryService;
.source "MonthViewAgendaHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;

    .line 93
    invoke-direct {p0, p2}, Lcn/nubia/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-static {p1, p2}, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->access$002(Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;Landroid/content/Context;)Landroid/content/Context;

    .line 95
    return-void
.end method


# virtual methods
.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 134
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 16
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 99
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;

    invoke-static {v10}, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->access$100(Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 100
    if-nez p3, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    :goto_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 104
    const/4 v10, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 105
    .local v8, "startTime":J
    const/4 v10, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 106
    .local v6, "endTime":J
    cmp-long v10, v8, v6

    if-nez v10, :cond_2

    .line 107
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;

    invoke-static {v10}, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->access$100(Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;)Ljava/util/HashMap;

    move-result-object v10

    const/4 v11, 0x2

    .line 108
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x1

    .line 109
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 107
    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 127
    .end local v6    # "endTime":J
    .end local v8    # "startTime":J
    :catch_0
    move-exception v4

    .line 128
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 110
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "endTime":J
    .restart local v8    # "startTime":J
    :cond_2
    cmp-long v10, v6, v8

    if-lez v10, :cond_1

    .line 111
    sub-long v2, v6, v8

    .line 112
    .local v2, "countDay":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    int-to-long v10, v5

    const-wide/16 v12, 0x1

    add-long/2addr v12, v2

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    .line 113
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;

    invoke-static {v10}, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->access$100(Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;)Ljava/util/HashMap;

    move-result-object v10

    const/4 v11, 0x2

    .line 114
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    int-to-long v14, v5

    add-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x1

    .line 116
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 113
    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 122
    .end local v2    # "countDay":J
    .end local v5    # "i":I
    .end local v6    # "endTime":J
    .end local v8    # "startTime":J
    :cond_3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 124
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;

    invoke-static {v10}, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->access$200(Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;)Lcn/nubia/calendar/submodule_month/view/IQueryMonthEventComplete;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 125
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;

    invoke-static {v10}, Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;->access$200(Lcn/nubia/calendar/submodule_month/view/MonthViewAgendaHelper;)Lcn/nubia/calendar/submodule_month/view/IQueryMonthEventComplete;

    move-result-object v10

    invoke-interface {v10}, Lcn/nubia/calendar/submodule_month/view/IQueryMonthEventComplete;->onQueryEventComplete()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 138
    return-void
.end method
