.class Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 1109
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .line 1110
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1111
    return-void
.end method

.method private processNewCursor(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;Landroid/database/Cursor;)I
    .locals 8
    .param p1, "data"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1438
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4

    .line 1440
    :try_start_0
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    iget v5, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->queryType:I

    invoke-static {v3, v5}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$2800(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 1441
    .local v0, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    const/4 v2, 0x0

    .line 1442
    .local v2, "listPositionOffset":I
    if-nez v0, :cond_2

    .line 1443
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    .end local v0    # "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$100(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;-><init>(Landroid/content/Context;)V

    .line 1452
    .restart local v0    # "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    :goto_0
    iget v3, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    iput v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 1453
    iget v3, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    iput v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 1454
    iput-object p2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 1455
    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    invoke-virtual {v3, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->changeCursor(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;)V

    .line 1456
    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    invoke-virtual {v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->getCount()I

    move-result v3

    iput v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->size:I

    .line 1459
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$100(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/calendar/util/Utils;->isSingleReverseOpen(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->reverseSearchEvent:Z

    if-eqz v3, :cond_4

    .line 1461
    :cond_0
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget v5, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .line 1462
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    iget v3, v3, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-lt v5, v3, :cond_3

    .line 1463
    :cond_1
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1464
    iget v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v2, v3

    .line 1478
    :goto_1
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$802(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;I)I

    .line 1479
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    .line 1480
    .local v1, "info3":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$800(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)I

    move-result v5

    iput v5, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    .line 1481
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v6}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$800(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)I

    move-result v6

    iget v7, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$802(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;I)I

    goto :goto_2

    .line 1486
    .end local v0    # "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    .end local v1    # "info3":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    .end local v2    # "listPositionOffset":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1448
    .restart local v0    # "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v2    # "listPositionOffset":I
    :cond_2
    :try_start_1
    iget v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->size:I

    neg-int v2, v3

    goto/16 :goto_0

    .line 1466
    :cond_3
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 1469
    :cond_4
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget v5, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .line 1470
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    iget v3, v3, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v5, v3, :cond_6

    .line 1471
    :cond_5
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1472
    iget v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v2, v3

    goto :goto_1

    .line 1474
    :cond_6
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 1483
    :cond_7
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$2902(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    .line 1485
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 55
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1115
    move-object/from16 v29, p2

    check-cast v29, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;

    .line 1122
    .local v29, "data":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, v29

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1123
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mCleanQueryInitiated:Z

    .line 1126
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$600(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1127
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 1128
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$700(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$900(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Lcn/nubia/calendar/submodule_agenda/view/OnEventLoadFinishListener;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$800(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v5, v4}, Lcn/nubia/calendar/submodule_agenda/view/OnEventLoadFinishListener;->onEventLoadFinish(Z)V

    .line 1429
    :cond_1
    :goto_1
    return-void

    .line 1129
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1134
    :cond_3
    if-nez p3, :cond_5

    .line 1135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$700(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$900(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Lcn/nubia/calendar/submodule_agenda/view/OnEventLoadFinishListener;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$800(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)I

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    :goto_2
    invoke-interface {v5, v4}, Lcn/nubia/calendar/submodule_agenda/view/OnEventLoadFinishListener;->onEventLoadFinish(Z)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 1139
    :cond_5
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v28

    .line 1140
    .local v28, "cursorSize":I
    const/16 v27, 0x0

    .line 1142
    .local v27, "callback":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$SearchListCallbacks;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$100(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$SearchListCallbacks;

    move-object/from16 v27, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1146
    :goto_3
    if-eqz v27, :cond_6

    .line 1147
    invoke-interface/range {v27 .. v28}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$SearchListCallbacks;->refreshSearchBar(I)V

    .line 1149
    :cond_6
    const/16 v43, -0x1

    .line 1150
    .local v43, "newPosition":I
    if-gtz v28, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v0, v29

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_16

    .line 1152
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->processNewCursor(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;Landroid/database/Cursor;)I

    move-result v42

    .line 1154
    .local v42, "listPositionOffset":I
    move-object/from16 v0, v29

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-nez v4, :cond_13

    .line 1155
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 1156
    if-eqz v42, :cond_8

    .line 1157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1100(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    move-result-object v4

    move/from16 v0, v42

    invoke-virtual {v4, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->shiftSelection(I)V

    .line 1189
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1300(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    const/4 v4, -0x1

    move/from16 v0, v43

    if-eq v0, v4, :cond_a

    move-object/from16 v0, v29

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    .line 1191
    move-object/from16 v0, v29

    iget-wide v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_9

    move-object/from16 v0, v29

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-eqz v4, :cond_a

    .line 1192
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    move/from16 v0, v43

    invoke-static {v5, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1400(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;I)J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1302(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;J)J

    .line 1199
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1300(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_d

    .line 1200
    const/16 v33, 0x0

    .line 1201
    .local v33, "found":Z
    const/4 v4, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1202
    :cond_b
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1203
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1300(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)J

    move-result-wide v4

    const/4 v6, 0x0

    .line 1204
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_b

    .line 1205
    const/16 v33, 0x1

    .line 1211
    :cond_c
    if-nez v33, :cond_d

    .line 1212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    const-wide/16 v6, -0x1

    invoke-static {v4, v6, v7}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1302(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;J)J

    .line 1217
    .end local v33    # "found":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1500(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, v29

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_f

    .line 1218
    const/16 v48, 0x0

    .line 1219
    .local v48, "tempCursor":Landroid/database/Cursor;
    const/16 v49, -0x1

    .line 1222
    .local v49, "tempCursorPosition":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1300(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_15

    .line 1223
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    const/4 v5, 0x0

    .line 1225
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1224
    invoke-static {v4, v6, v7}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1302(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;J)J

    .line 1232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    new-instance v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    invoke-direct {v5}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;-><init>()V

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1602(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;)Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    .line 1233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1600(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    move-result-object v5

    const/4 v4, 0x3

    .line 1234
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    :goto_5
    iput-boolean v4, v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->allDay:Z

    .line 1235
    move-object/from16 v48, p3

    .line 1241
    :cond_e
    :goto_6
    if-eqz v48, :cond_f

    .line 1242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    const/4 v5, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v49

    invoke-static {v4, v0, v1, v5}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1900(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;Landroid/database/Cursor;IZ)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;

    move-result-object v31

    .line 1244
    .local v31, "event":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .line 1245
    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$100(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcn/nubia/calendar/CalendarController;

    move-result-object v10

    const-wide/16 v12, 0x2

    move-object/from16 v0, v31

    iget-wide v14, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->id:J

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->begin:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->end:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v31

    iget-boolean v5, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->allDay:Z

    .line 1255
    invoke-static {v4, v5}, Lcn/nubia/calendar/CalendarController$EventInfo;->buildViewExtraLong(IZ)J

    move-result-wide v22

    const-wide/16 v24, -0x1

    move-object/from16 v11, p0

    .line 1246
    invoke-virtual/range {v10 .. v25}, Lcn/nubia/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    .line 1281
    .end local v31    # "event":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;
    .end local v42    # "listPositionOffset":I
    .end local v48    # "tempCursor":Landroid/database/Cursor;
    .end local v49    # "tempCursorPosition":I
    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$2000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v5

    monitor-enter v5

    .line 1282
    const/16 v53, -0x1

    .line 1283
    .local v53, "totalAgendaRangeStart":I
    const/16 v52, -0x1

    .line 1285
    .local v52, "totalAgendaRangeEnd":I
    if-eqz v28, :cond_18

    .line 1287
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$2000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;

    .line 1291
    .local v54, "x":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$2102(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;I)I

    .line 1292
    move-object/from16 v0, v29

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_17

    .line 1293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$2208(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)I

    .line 1298
    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v53, v0

    .line 1299
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v52, v0

    .line 1358
    .end local v54    # "x":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;
    :cond_11
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v6

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1359
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    .line 1360
    .local v38, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    new-instance v50, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-direct {v0, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1361
    .local v50, "time":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    .line 1362
    .local v44, "now":J
    move-object/from16 v0, v50

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1363
    move-object/from16 v0, v50

    iget-wide v10, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, v44

    invoke-static {v0, v1, v10, v11}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v26

    .line 1364
    .local v26, "JulianToday":I
    if-eqz v38, :cond_1d

    move-object/from16 v0, v38

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v0, v26

    if-lt v0, v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .line 1365
    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    iget v4, v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v0, v26

    if-gt v0, v4, :cond_1d

    .line 1366
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    .line 1367
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .line 1368
    .local v40, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;>;"
    const/16 v34, 0x0

    .line 1369
    .local v34, "foundDay":Z
    :cond_12
    :goto_a
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    if-nez v34, :cond_1d

    .line 1370
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    .end local v38    # "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    check-cast v38, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    .line 1371
    .restart local v38    # "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    const/16 v37, 0x0

    .local v37, "i":I
    :goto_b
    move-object/from16 v0, v38

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->size:I

    move/from16 v0, v37

    if-ge v0, v4, :cond_12

    .line 1372
    move-object/from16 v0, v38

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    .line 1373
    move/from16 v0, v37

    invoke-virtual {v4, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->findJulianDayFromPosition(I)I

    move-result v4

    move/from16 v0, v26

    if-lt v4, v0, :cond_1c

    .line 1374
    move-object/from16 v0, v38

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    .line 1375
    move/from16 v0, v37

    invoke-virtual {v4, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->setAsFirstDayAfterYesterday(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1376
    const/16 v34, 0x1

    .line 1377
    goto :goto_a

    .line 1143
    .end local v26    # "JulianToday":I
    .end local v34    # "foundDay":Z
    .end local v37    # "i":I
    .end local v38    # "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    .end local v40    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;>;"
    .end local v43    # "newPosition":I
    .end local v44    # "now":J
    .end local v50    # "time":Landroid/text/format/Time;
    .end local v52    # "totalAgendaRangeEnd":I
    .end local v53    # "totalAgendaRangeStart":I
    :catch_0
    move-exception v30

    .line 1144
    .local v30, "e":Ljava/lang/Exception;
    const-string v4, "Calendar"

    const-string v5, "CastException= "

    move-object/from16 v0, v30

    invoke-static {v4, v5, v0}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_3

    .line 1160
    .end local v30    # "e":Ljava/lang/Exception;
    .restart local v42    # "listPositionOffset":I
    .restart local v43    # "newPosition":I
    :cond_13
    move-object/from16 v0, v29

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    move-object/from16 v35, v0

    .line 1161
    .local v35, "goToTime":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 1162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    move-object/from16 v0, v29

    iget-wide v6, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->id:J

    move-object/from16 v0, v35

    invoke-static {v4, v0, v6, v7}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1200(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;Landroid/text/format/Time;J)I

    move-result v43

    .line 1164
    if-ltz v43, :cond_8

    .line 1173
    new-instance v8, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1174
    .local v8, "actualTime":Landroid/text/format/Time;
    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$100(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcn/nubia/calendar/CalendarController;

    move-result-object v4

    const-wide/16 v6, 0x400

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object v9, v8

    invoke-virtual/range {v4 .. v12}, Lcn/nubia/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto/16 :goto_4

    .line 1234
    .end local v8    # "actualTime":Landroid/text/format/Time;
    .end local v35    # "goToTime":Landroid/text/format/Time;
    .restart local v48    # "tempCursor":Landroid/database/Cursor;
    .restart local v49    # "tempCursorPosition":I
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 1237
    :cond_15
    const/4 v4, -0x1

    move/from16 v0, v43

    if-eq v0, v4, :cond_e

    .line 1238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    move/from16 v0, v43

    invoke-static {v4, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1700(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;I)Landroid/database/Cursor;

    move-result-object v48

    .line 1239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    move/from16 v0, v43

    invoke-static {v4, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1800(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;I)I

    move-result v49

    goto/16 :goto_6

    .line 1261
    .end local v42    # "listPositionOffset":I
    .end local v48    # "tempCursor":Landroid/database/Cursor;
    .end local v49    # "tempCursorPosition":I
    :cond_16
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7

    .line 1294
    .restart local v52    # "totalAgendaRangeEnd":I
    .restart local v53    # "totalAgendaRangeStart":I
    .restart local v54    # "x":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;
    :cond_17
    :try_start_3
    move-object/from16 v0, v29

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->queryType:I

    if-nez v4, :cond_10

    .line 1295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$2308(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)I

    goto/16 :goto_8

    .line 1404
    .end local v54    # "x":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 1301
    :cond_18
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$2000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;

    .line 1304
    .local v47, "querySpec":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 1305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    .line 1306
    .local v32, "first":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    .line 1308
    .local v41, "last":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    move-object/from16 v0, v32

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->start:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v47

    iget v6, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    if-gt v4, v6, :cond_19

    move-object/from16 v0, v47

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    move-object/from16 v0, v32

    iget v6, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-ge v4, v6, :cond_19

    .line 1310
    move-object/from16 v0, v47

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    move-object/from16 v0, v32

    iput v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 1313
    :cond_19
    move-object/from16 v0, v47

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    move-object/from16 v0, v41

    iget v6, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->end:I

    add-int/lit8 v6, v6, 0x1

    if-gt v4, v6, :cond_1a

    move-object/from16 v0, v41

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move-object/from16 v0, v47

    iget v6, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    if-ge v4, v6, :cond_1a

    .line 1315
    move-object/from16 v0, v47

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    move-object/from16 v0, v41

    iput v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 1318
    :cond_1a
    move-object/from16 v0, v32

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v53, v0

    .line 1319
    move-object/from16 v0, v41

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v52, v0

    .line 1327
    .end local v32    # "first":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    .end local v41    # "last":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    :goto_c
    move-object/from16 v0, v47

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->queryType:I

    packed-switch v4, :pswitch_data_0

    .line 1344
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$2104(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_11

    .line 1346
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$2000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    goto/16 :goto_9

    .line 1321
    :cond_1b
    move-object/from16 v0, v47

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v53, v0

    .line 1322
    move-object/from16 v0, v47

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v52, v0

    goto :goto_c

    .line 1329
    :pswitch_0
    move-object/from16 v0, v47

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v53, v0

    .line 1330
    move-object/from16 v0, v47

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    add-int/lit16 v4, v4, -0x2d0

    move-object/from16 v0, v47

    iput v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    goto :goto_d

    .line 1333
    :pswitch_1
    move-object/from16 v0, v47

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v52, v0

    .line 1334
    move-object/from16 v0, v47

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    add-int/lit16 v4, v4, 0x2d0

    move-object/from16 v0, v47

    iput v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    goto :goto_d

    .line 1337
    :pswitch_2
    move-object/from16 v0, v47

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v53, v0

    .line 1338
    move-object/from16 v0, v47

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v52, v0

    .line 1339
    move-object/from16 v0, v47

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    add-int/lit16 v4, v4, -0x168

    move-object/from16 v0, v47

    iput v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    .line 1340
    move-object/from16 v0, v47

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    add-int/lit16 v4, v4, 0x168

    move-object/from16 v0, v47

    iput v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_d

    .line 1371
    .end local v47    # "querySpec":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;
    .restart local v26    # "JulianToday":I
    .restart local v34    # "foundDay":Z
    .restart local v37    # "i":I
    .restart local v38    # "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v40    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;>;"
    .restart local v44    # "now":J
    .restart local v50    # "time":Landroid/text/format/Time;
    :cond_1c
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_b

    .line 1382
    .end local v34    # "foundDay":Z
    .end local v37    # "i":I
    .end local v40    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;>;"
    :cond_1d
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1385
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$2000(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .line 1386
    .local v39, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;>;"
    :goto_e
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1387
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;

    .line 1388
    .local v46, "queryData":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, v46

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    move-object/from16 v0, v46

    iget v6, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->start:I

    move-object/from16 v0, v46

    iget v7, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->end:I

    .line 1389
    invoke-static {v4, v6, v7}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$2400(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;II)Z

    move-result v4

    if-nez v4, :cond_22

    .line 1394
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    move-object/from16 v0, v46

    invoke-static {v4, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$2500(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;)V

    .line 1404
    .end local v46    # "queryData":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;
    :cond_1f
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$700(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)V

    .line 1411
    move-object/from16 v0, v29

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->orignalQueryType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_20

    .line 1412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$900(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Lcn/nubia/calendar/submodule_agenda/view/OnEventLoadFinishListener;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 1413
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$900(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Lcn/nubia/calendar/submodule_agenda/view/OnEventLoadFinishListener;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$800(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)I

    move-result v4

    if-nez v4, :cond_23

    const/4 v4, 0x1

    :goto_f
    invoke-interface {v5, v4}, Lcn/nubia/calendar/submodule_agenda/view/OnEventLoadFinishListener;->onEventLoadFinish(Z)V

    .line 1417
    :cond_20
    move-object/from16 v0, v29

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    move-object/from16 v36, v0

    .line 1418
    .local v36, "gotoTimePosition":Landroid/text/format/Time;
    const/4 v4, -0x1

    move/from16 v0, v43

    if-eq v0, v4, :cond_1

    if-eqz v36, :cond_1

    .line 1419
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    move-object/from16 v0, v29

    iget-wide v6, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;->id:J

    move-object/from16 v0, v36

    invoke-static {v4, v0, v6, v7}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$2600(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;Landroid/text/format/Time;J)I

    move-result v51

    .line 1420
    .local v51, "toPosition":I
    const/4 v4, -0x1

    move/from16 v0, v51

    if-eq v0, v4, :cond_1

    .line 1421
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    iget v4, v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->mListViewScrollState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_21

    .line 1422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1100(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 1425
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$1100(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getListView()Landroid/widget/ListView;

    move-result-object v4

    add-int/lit8 v5, v43, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-static {v6}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->access$2700(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto/16 :goto_1

    .line 1382
    .end local v26    # "JulianToday":I
    .end local v36    # "gotoTimePosition":Landroid/text/format/Time;
    .end local v38    # "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    .end local v39    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;>;"
    .end local v44    # "now":J
    .end local v50    # "time":Landroid/text/format/Time;
    .end local v51    # "toPosition":I
    :catchall_1
    move-exception v4

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v4

    .line 1398
    .restart local v26    # "JulianToday":I
    .restart local v38    # "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v39    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;>;"
    .restart local v44    # "now":J
    .restart local v46    # "queryData":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;
    .restart local v50    # "time":Landroid/text/format/Time;
    :cond_22
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->remove()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_e

    .line 1413
    .end local v46    # "queryData":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$QuerySpec;
    :cond_23
    const/4 v4, 0x0

    goto :goto_f

    .line 1327
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
