.class public Lcn/nubia/calendar/AsyncQueryServiceHelper;
.super Landroid/app/IntentService;
.source "AsyncQueryServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncQuery"

.field private static final sWorkQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcn/nubia/calendar/AsyncQueryService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    sput-object v0, Lcn/nubia/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 260
    const-string v0, "AsyncQueryServiceHelper"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 64
    const-class v0, Lcn/nubia/calendar/AsyncQueryService;

    iput-object v0, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper;->mService:Ljava/lang/Class;

    .line 261
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 64
    const-class v0, Lcn/nubia/calendar/AsyncQueryService;

    iput-object v0, p0, Lcn/nubia/calendar/AsyncQueryServiceHelper;->mService:Ljava/lang/Class;

    .line 257
    return-void
.end method

.method private applyCustomTableChange(Landroid/content/ContentResolver;Ljava/lang/Object;)V
    .locals 8
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "args"    # Ljava/lang/Object;

    .prologue
    .line 423
    if-eqz p2, :cond_1

    instance-of v5, p2, Lcn/nubia/calendar/model/CalendarEventModel;

    if-eqz v5, :cond_1

    move-object v1, p2

    .line 427
    check-cast v1, Lcn/nubia/calendar/model/CalendarEventModel;

    .line 428
    .local v1, "model":Lcn/nubia/calendar/model/CalendarEventModel;
    iget-wide v2, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    .line 430
    .local v2, "eventId":J
    invoke-virtual {v1}, Lcn/nubia/calendar/model/CalendarEventModel;->getCalendarCustomEventModel()Lcn/nubia/calendar/model/CalendarCustomEventModel;

    move-result-object v0

    .line 431
    .local v0, "customModel":Lcn/nubia/calendar/model/CalendarCustomEventModel;
    if-eqz v0, :cond_0

    .line 432
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 433
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "sign_color"

    .line 434
    invoke-virtual {v0}, Lcn/nubia/calendar/model/CalendarCustomEventModel;->getColorItem()Lcn/nubia/calendar/submodule_agenda/view/ColorItem;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->getSignColor()Ljava/lang/String;

    move-result-object v6

    .line 433
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v5, "background_color"

    .line 437
    invoke-virtual {v0}, Lcn/nubia/calendar/model/CalendarCustomEventModel;->getColorItem()Lcn/nubia/calendar/submodule_agenda/view/ColorItem;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->getBackColor()Ljava/lang/String;

    move-result-object v6

    .line 435
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v5, "long_press_backcolor"

    .line 440
    invoke-virtual {v0}, Lcn/nubia/calendar/model/CalendarCustomEventModel;->getColorItem()Lcn/nubia/calendar/submodule_agenda/view/ColorItem;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->getLongPressBackColor()Ljava/lang/String;

    move-result-object v6

    .line 438
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v5, "long_press_bordercolor"

    .line 443
    invoke-virtual {v0}, Lcn/nubia/calendar/model/CalendarCustomEventModel;->getColorItem()Lcn/nubia/calendar/submodule_agenda/view/ColorItem;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->getLongPressBorderColor()Ljava/lang/String;

    move-result-object v6

    .line 441
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v5, "image_path"

    .line 445
    invoke-virtual {v0}, Lcn/nubia/calendar/model/CalendarCustomEventModel;->getPicturePath()Ljava/lang/String;

    move-result-object v6

    .line 444
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_7

    .line 452
    invoke-virtual {v1}, Lcn/nubia/calendar/model/CalendarEventModel;->getModifyWhich()I

    move-result v5

    if-nez v5, :cond_2

    .line 453
    invoke-direct {p0, p1, v2, v3, v4}, Lcn/nubia/calendar/AsyncQueryServiceHelper;->updateCustomEvent(Landroid/content/ContentResolver;JLandroid/content/ContentValues;)V

    .line 490
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    iget-object v5, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5, v2, v3}, Lcn/nubia/calendar/AsyncQueryServiceHelper;->savePhonesToReminder(Landroid/content/ContentResolver;Ljava/util/ArrayList;J)V

    .line 492
    .end local v0    # "customModel":Lcn/nubia/calendar/model/CalendarCustomEventModel;
    .end local v1    # "model":Lcn/nubia/calendar/model/CalendarEventModel;
    .end local v2    # "eventId":J
    :cond_1
    return-void

    .line 454
    .restart local v0    # "customModel":Lcn/nubia/calendar/model/CalendarCustomEventModel;
    .restart local v1    # "model":Lcn/nubia/calendar/model/CalendarEventModel;
    .restart local v2    # "eventId":J
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    const/4 v5, 0x1

    .line 455
    invoke-virtual {v1}, Lcn/nubia/calendar/model/CalendarEventModel;->getModifyWhich()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 456
    invoke-direct {p0, p1, v4}, Lcn/nubia/calendar/AsyncQueryServiceHelper;->insertCustomEvent(Landroid/content/ContentResolver;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0

    .line 457
    :cond_3
    const/4 v5, 0x2

    .line 458
    invoke-virtual {v1}, Lcn/nubia/calendar/model/CalendarEventModel;->getModifyWhich()I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 459
    iget-object v5, v1, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 460
    invoke-virtual {v1}, Lcn/nubia/calendar/model/CalendarEventModel;->isFirstEventInSeriesChanged()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 461
    invoke-direct {p0, p1, v2, v3}, Lcn/nubia/calendar/AsyncQueryServiceHelper;->deleteCustomEvent(Landroid/content/ContentResolver;J)I

    .line 463
    :cond_4
    invoke-direct {p0, p1, v4}, Lcn/nubia/calendar/AsyncQueryServiceHelper;->insertCustomEvent(Landroid/content/ContentResolver;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 465
    :cond_5
    invoke-virtual {v1}, Lcn/nubia/calendar/model/CalendarEventModel;->isFirstEventInSeriesChanged()Z

    move-result v5

    if-nez v5, :cond_0

    .line 466
    invoke-direct {p0, p1, v4}, Lcn/nubia/calendar/AsyncQueryServiceHelper;->insertCustomEvent(Landroid/content/ContentResolver;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 469
    :cond_6
    const/4 v5, 0x3

    .line 470
    invoke-virtual {v1}, Lcn/nubia/calendar/model/CalendarEventModel;->getModifyWhich()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 477
    invoke-direct {p0, p1, v2, v3, v4}, Lcn/nubia/calendar/AsyncQueryServiceHelper;->updateCustomEvent(Landroid/content/ContentResolver;JLandroid/content/ContentValues;)V

    goto :goto_0

    .line 486
    :cond_7
    invoke-direct {p0, p1, v4}, Lcn/nubia/calendar/AsyncQueryServiceHelper;->insertCustomEvent(Landroid/content/ContentResolver;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static cancelOperation(I)I
    .locals 4
    .param p0, "token"    # I

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "canceled":I
    sget-object v3, Lcn/nubia/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    monitor-enter v3

    .line 240
    :try_start_0
    sget-object v2, Lcn/nubia/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 241
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;

    iget v2, v2, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    if-ne v2, p0, :cond_0

    .line 243
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_1
    monitor-exit v3

    .line 252
    return v0

    .line 247
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private deleteCustomEvent(Landroid/content/ContentResolver;J)I
    .locals 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "eventId"    # J

    .prologue
    .line 544
    sget-object v1, Lcn/nubia/calendar/db/CustomCalendarProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "event_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 546
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 544
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 550
    .local v0, "i":I
    return v0
.end method

.method public static getLastCancelableOperation()Lcn/nubia/calendar/AsyncQueryService$Operation;
    .locals 12

    .prologue
    .line 195
    const-wide/high16 v2, -0x8000000000000000L

    .line 196
    .local v2, "lastScheduleTime":J
    const/4 v4, 0x0

    .line 198
    .local v4, "op":Lcn/nubia/calendar/AsyncQueryService$Operation;
    sget-object v7, Lcn/nubia/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    monitor-enter v7

    .line 200
    :try_start_0
    sget-object v6, Lcn/nubia/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;>;"
    move-object v5, v4

    .line 201
    .end local v4    # "op":Lcn/nubia/calendar/AsyncQueryService$Operation;
    .local v5, "op":Lcn/nubia/calendar/AsyncQueryService$Operation;
    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 202
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;

    .line 203
    .local v0, "info":Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;
    iget-wide v8, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->delayMillis:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_2

    .line 204
    invoke-static {v0}, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->access$000(Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;)J

    move-result-wide v8

    cmp-long v6, v2, v8

    if-gez v6, :cond_2

    .line 205
    if-nez v5, :cond_1

    .line 206
    new-instance v4, Lcn/nubia/calendar/AsyncQueryService$Operation;

    invoke-direct {v4}, Lcn/nubia/calendar/AsyncQueryService$Operation;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 209
    .end local v5    # "op":Lcn/nubia/calendar/AsyncQueryService$Operation;
    .restart local v4    # "op":Lcn/nubia/calendar/AsyncQueryService$Operation;
    :goto_1
    :try_start_2
    iget v6, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    iput v6, v4, Lcn/nubia/calendar/AsyncQueryService$Operation;->token:I

    .line 210
    iget v6, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    iput v6, v4, Lcn/nubia/calendar/AsyncQueryService$Operation;->op:I

    .line 211
    invoke-static {v0}, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->access$000(Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;)J

    move-result-wide v8

    iput-wide v8, v4, Lcn/nubia/calendar/AsyncQueryService$Operation;->scheduledExecutionTime:J

    .line 213
    invoke-static {v0}, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->access$000(Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    :goto_2
    move-object v5, v4

    .line 215
    .end local v4    # "op":Lcn/nubia/calendar/AsyncQueryService$Operation;
    .restart local v5    # "op":Lcn/nubia/calendar/AsyncQueryService$Operation;
    goto :goto_0

    .line 216
    .end local v0    # "info":Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;
    :cond_0
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 223
    return-object v5

    .line 216
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;>;"
    .end local v5    # "op":Lcn/nubia/calendar/AsyncQueryService$Operation;
    .restart local v4    # "op":Lcn/nubia/calendar/AsyncQueryService$Operation;
    :catchall_0
    move-exception v6

    :goto_3
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .end local v4    # "op":Lcn/nubia/calendar/AsyncQueryService$Operation;
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;>;"
    .restart local v5    # "op":Lcn/nubia/calendar/AsyncQueryService$Operation;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "op":Lcn/nubia/calendar/AsyncQueryService$Operation;
    .restart local v4    # "op":Lcn/nubia/calendar/AsyncQueryService$Operation;
    goto :goto_3

    .end local v4    # "op":Lcn/nubia/calendar/AsyncQueryService$Operation;
    .restart local v0    # "info":Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;
    .restart local v5    # "op":Lcn/nubia/calendar/AsyncQueryService$Operation;
    :cond_1
    move-object v4, v5

    .end local v5    # "op":Lcn/nubia/calendar/AsyncQueryService$Operation;
    .restart local v4    # "op":Lcn/nubia/calendar/AsyncQueryService$Operation;
    goto :goto_1

    .end local v4    # "op":Lcn/nubia/calendar/AsyncQueryService$Operation;
    .restart local v5    # "op":Lcn/nubia/calendar/AsyncQueryService$Operation;
    :cond_2
    move-object v4, v5

    .end local v5    # "op":Lcn/nubia/calendar/AsyncQueryService$Operation;
    .restart local v4    # "op":Lcn/nubia/calendar/AsyncQueryService$Operation;
    goto :goto_2
.end method

.method private insertCustomEvent(Landroid/content/ContentResolver;Landroid/content/ContentValues;)J
    .locals 10
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v1, 0x0

    .line 505
    const-wide/16 v8, -0x1

    .line 506
    .local v8, "eventId":J
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "MAX(_id) AS EVENT_ID"

    aput-object v0, v2, v1

    .line 507
    .local v2, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 509
    .local v7, "eventCursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 511
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 516
    const-string v0, "event_id"

    .line 517
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 516
    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 518
    sget-object v0, Lcn/nubia/calendar/db/CustomCalendarProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    :cond_0
    if-eqz v7, :cond_1

    .line 524
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_1
    :goto_0
    return-wide v8

    .line 520
    :catch_0
    move-exception v6

    .line 521
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    if-eqz v7, :cond_1

    .line 524
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 523
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 524
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 526
    :cond_2
    throw v0
.end method

.method private isExistCustomEvent(Landroid/content/ContentResolver;J)Z
    .locals 10
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "eventId"    # J

    .prologue
    .line 635
    const/4 v8, 0x0

    .line 636
    .local v8, "isExist":Z
    const/4 v6, 0x0

    .line 639
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcn/nubia/calendar/db/CustomCalendarProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "event_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 642
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    .line 639
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 643
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    const/4 v8, 0x1

    .line 649
    :cond_0
    if-eqz v6, :cond_1

    .line 650
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 653
    :cond_1
    :goto_0
    return v8

    .line 646
    :catch_0
    move-exception v7

    .line 647
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 649
    if-eqz v6, :cond_1

    .line 650
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 649
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 650
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 652
    :cond_2
    throw v0
.end method

.method public static queueOperation(Landroid/content/Context;Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;

    .prologue
    .line 179
    invoke-virtual {p1}, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->calculateScheduledTime()V

    .line 181
    sget-object v1, Lcn/nubia/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    monitor-enter v1

    .line 182
    :try_start_0
    sget-object v0, Lcn/nubia/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lcn/nubia/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 184
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/calendar/AsyncQueryServiceHelper;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 187
    return-void

    .line 184
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private savePhonesToReminder(Landroid/content/ContentResolver;Ljava/util/ArrayList;J)V
    .locals 9
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "eventId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 597
    .local p2, "reminderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;>;"
    sget-object v4, Lcn/nubia/calendar/db/CustomDbHelper$CustomReminderTableColumn;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "event_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 599
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 597
    invoke-virtual {p1, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 603
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 604
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 605
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 606
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    .line 607
    .local v1, "reminder":Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    if-eqz v1, :cond_0

    .line 608
    invoke-virtual {v1}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getPhoneNumbers()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 609
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 610
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "event_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 611
    const-string v4, "miniutes"

    .line 612
    invoke-virtual {v1}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 611
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 613
    const-string v4, "phone_numbers"

    .line 614
    invoke-virtual {v1}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getPhoneNumbers()Ljava/lang/String;

    move-result-object v5

    .line 613
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    sget-object v4, Lcn/nubia/calendar/db/CustomDbHelper$CustomReminderTableColumn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 605
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    .end local v0    # "i":I
    .end local v1    # "reminder":Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    .end local v2    # "size":I
    :cond_1
    return-void
.end method

.method private updateCustomEvent(Landroid/content/ContentResolver;JLandroid/content/ContentValues;)V
    .locals 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "eventId"    # J
    .param p4, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 565
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/calendar/AsyncQueryServiceHelper;->isExistCustomEvent(Landroid/content/ContentResolver;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    sget-object v0, Lcn/nubia/calendar/db/CustomCalendarProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "event_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 568
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 566
    invoke-virtual {p1, v0, p4, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 579
    :goto_0
    return-void

    .line 573
    :cond_0
    const-string v0, "event_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 574
    sget-object v0, Lcn/nubia/calendar/db/CustomCalendarProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, p4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 671
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 672
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 679
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 680
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 270
    sget-object v4, Lcn/nubia/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    monitor-enter v4

    .line 276
    :cond_0
    :try_start_0
    sget-object v3, Lcn/nubia/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 277
    monitor-exit v4

    .line 407
    :cond_1
    :goto_0
    return-void

    .line 278
    :cond_2
    sget-object v3, Lcn/nubia/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    .line 279
    sget-object v3, Lcn/nubia/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;

    .line 280
    .local v13, "first":Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;
    invoke-static {v13}, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->access$000(Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;)J

    move-result-wide v6

    .line 281
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v22

    sub-long v20, v6, v22

    .line 282
    .local v20, "waitTime":J
    const-wide/16 v6, 0x0

    cmp-long v3, v20, v6

    if-lez v3, :cond_3

    .line 284
    :try_start_1
    sget-object v3, Lcn/nubia/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    .end local v13    # "first":Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;
    .end local v20    # "waitTime":J
    :cond_3
    :goto_1
    :try_start_2
    sget-object v3, Lcn/nubia/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;

    .line 291
    .local v10, "args":Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;
    if-eqz v10, :cond_0

    .line 296
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    iget-object v2, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->resolver:Landroid/content/ContentResolver;

    .line 303
    .local v2, "resolver":Landroid/content/ContentResolver;
    if-eqz v2, :cond_1

    .line 304
    iget v3, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    packed-switch v3, :pswitch_data_0

    .line 397
    :goto_2
    iget-object v3, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->handler:Landroid/os/Handler;

    iget v4, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 398
    .local v16, "reply":Landroid/os/Message;
    move-object/from16 v0, v16

    iput-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 399
    iget v3, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 405
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 296
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v10    # "args":Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;
    .end local v16    # "reply":Landroid/os/Message;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 308
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v10    # "args":Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;
    :pswitch_0
    :try_start_4
    iget-object v3, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    iget-object v4, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->projection:[Ljava/lang/String;

    iget-object v5, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->selection:Ljava/lang/String;

    iget-object v6, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->selectionArgs:[Ljava/lang/String;

    iget-object v7, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 315
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_4

    .line 316
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 323
    :cond_4
    :goto_3
    iput-object v11, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto :goto_2

    .line 318
    .end local v11    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v12

    .line 319
    .local v12, "e":Ljava/lang/Exception;
    const-string v3, "AsyncQuery"

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/calendar/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/4 v11, 0x0

    .restart local v11    # "cursor":Landroid/database/Cursor;
    goto :goto_3

    .line 327
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "e":Ljava/lang/Exception;
    :pswitch_1
    iget-object v3, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    iget-object v4, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->values:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    .line 328
    const-string v3, "wllzlt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "args.uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 332
    :pswitch_2
    iget-object v3, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    iget-object v4, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->values:Landroid/content/ContentValues;

    iget-object v5, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->selection:Ljava/lang/String;

    iget-object v6, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto :goto_2

    .line 338
    :pswitch_3
    :try_start_5
    iget-object v3, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    iget-object v4, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->selection:Ljava/lang/String;

    iget-object v5, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 344
    :goto_4
    iget-object v3, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    .line 346
    .local v14, "id":Ljava/lang/String;
    const-string v3, "database"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete event id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/calendar/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 347
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcn/nubia/calendar/cloud/CalendarCloudSync;->getSyncId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    .line 349
    .local v18, "sync":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 350
    invoke-static/range {p0 .. p0}, Lcn/nubia/calendar/util/Utils;->getSyncDeleteSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 351
    .local v15, "pref":Landroid/content/SharedPreferences;
    const-string v3, "delete_event_id"

    const-string v4, ""

    invoke-interface {v15, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 352
    .local v8, "_id":Ljava/lang/String;
    const-string v3, "delete_event_sync_id"

    const-string v4, ""

    .line 353
    invoke-interface {v15, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 354
    .local v9, "_sync_id":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 356
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 357
    .local v17, "spe":Landroid/content/SharedPreferences$Editor;
    const-string v3, "delete_event_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 358
    const-string v3, "delete_event_sync_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 359
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 362
    .end local v8    # "_id":Ljava/lang/String;
    .end local v9    # "_sync_id":Ljava/lang/String;
    .end local v15    # "pref":Landroid/content/SharedPreferences;
    .end local v17    # "spe":Landroid/content/SharedPreferences$Editor;
    :cond_5
    sget-object v3, Lcn/nubia/calendar/db/CustomCalendarProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "event_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 365
    sget-object v3, Lcn/nubia/calendar/db/CustomDbHelper$CustomReminderTableColumn;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "event_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 340
    .end local v14    # "id":Ljava/lang/String;
    .end local v18    # "sync":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 341
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 373
    .end local v12    # "e":Ljava/lang/Exception;
    :pswitch_4
    :try_start_6
    iget-object v3, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->authority:Ljava/lang/String;

    iget-object v4, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->cpo:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v3

    iput-object v3, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    .line 375
    iget-object v3, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcn/nubia/calendar/AsyncQueryServiceHelper;->applyCustomTableChange(Landroid/content/ContentResolver;Ljava/lang/Object;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_2

    .line 377
    :catch_2
    move-exception v12

    .line 378
    .local v12, "e":Landroid/os/RemoteException;
    const-string v3, "AsyncQuery"

    invoke-virtual {v12}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const/4 v3, 0x0

    iput-object v3, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto/16 :goto_2

    .line 380
    .end local v12    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v12

    .line 381
    .local v12, "e":Landroid/content/OperationApplicationException;
    const-string v3, "AsyncQuery"

    invoke-virtual {v12}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const/4 v3, 0x0

    iput-object v3, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto/16 :goto_2

    .line 385
    .end local v12    # "e":Landroid/content/OperationApplicationException;
    :catch_4
    move-exception v12

    .line 386
    .local v12, "e":Landroid/database/sqlite/SQLiteException;
    const-string v3, "AsyncQuery"

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const/4 v3, 0x0

    iput-object v3, v10, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto/16 :goto_2

    .line 285
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v10    # "args":Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;
    .end local v12    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v13    # "first":Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;
    .restart local v20    # "waitTime":J
    :catch_5
    move-exception v3

    goto/16 :goto_1

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 663
    invoke-super {p0, p1, p2}, Landroid/app/IntentService;->onStart(Landroid/content/Intent;I)V

    .line 664
    return-void
.end method
