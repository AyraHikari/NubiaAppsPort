.class Lcn/nubia/calendar/EventInfoFragment$12;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/EventInfoFragment;->resetReminders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/EventInfoFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/EventInfoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 1320
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment$12;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 1324
    :try_start_0
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$12;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$000(Lcn/nubia/calendar/EventInfoFragment;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$12;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$000(Lcn/nubia/calendar/EventInfoFragment;)Landroid/app/Activity;

    move-result-object v2

    const-string v5, "android.permission.READ_CALENDAR"

    invoke-static {v2, v5}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1325
    new-instance v7, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1327
    .local v7, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$12;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$2900(Lcn/nubia/calendar/EventInfoFragment;)Landroid/content/Context;

    move-result-object v2

    .line 1328
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1329
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 1330
    .local v1, "mUri":Landroid/net/Uri;
    const-string v3, "event_id=?"

    .line 1331
    .local v3, "where":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v5, p0, Lcn/nubia/calendar/EventInfoFragment$12;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v5}, Lcn/nubia/calendar/EventInfoFragment;->access$1500(Lcn/nubia/calendar/EventInfoFragment;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 1332
    .local v4, "args":[Ljava/lang/String;
    iget-object v8, p0, Lcn/nubia/calendar/EventInfoFragment$12;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    sget-object v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v8, v2}, Lcn/nubia/calendar/EventInfoFragment;->access$4102(Lcn/nubia/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1335
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$12;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$4100(Lcn/nubia/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$12;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$4100(Lcn/nubia/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1336
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$12;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$4100(Lcn/nubia/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1337
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$12;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$4100(Lcn/nubia/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v2

    iget-object v5, p0, Lcn/nubia/calendar/EventInfoFragment$12;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v5}, Lcn/nubia/calendar/EventInfoFragment;->access$4100(Lcn/nubia/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v5

    const-string v8, "method"

    .line 1338
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1337
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1339
    .local v6, "mMethod":I
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$12;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    iget-object v5, p0, Lcn/nubia/calendar/EventInfoFragment$12;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    .line 1340
    invoke-static {v5}, Lcn/nubia/calendar/EventInfoFragment;->access$1500(Lcn/nubia/calendar/EventInfoFragment;)J

    move-result-wide v8

    iget-object v5, p0, Lcn/nubia/calendar/EventInfoFragment$12;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    .line 1341
    invoke-static {v5}, Lcn/nubia/calendar/EventInfoFragment;->access$4200(Lcn/nubia/calendar/EventInfoFragment;)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 1340
    invoke-static/range {v6 .. v12}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->saveHomeReminders(ILjava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result v5

    iput-boolean v5, v2, Lcn/nubia/calendar/EventInfoFragment;->mRecieverChanged:Z

    .line 1342
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$12;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    iget-boolean v2, v2, Lcn/nubia/calendar/EventInfoFragment;->mRecieverChanged:Z

    if-eqz v2, :cond_0

    .line 1343
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$12;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$2900(Lcn/nubia/calendar/EventInfoFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "com.android.calendar"

    .line 1344
    invoke-virtual {v2, v5, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1354
    .end local v0    # "mContentResolver":Landroid/content/ContentResolver;
    .end local v1    # "mUri":Landroid/net/Uri;
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v6    # "mMethod":I
    .end local v7    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$12;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$4100(Lcn/nubia/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1355
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$12;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$4100(Lcn/nubia/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1358
    :cond_1
    :goto_0
    return-void

    .line 1351
    :catch_0
    move-exception v13

    .line 1352
    .local v13, "exception":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1354
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$12;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$4100(Lcn/nubia/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1355
    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$12;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$4100(Lcn/nubia/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1354
    .end local v13    # "exception":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v5, p0, Lcn/nubia/calendar/EventInfoFragment$12;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v5}, Lcn/nubia/calendar/EventInfoFragment;->access$4100(Lcn/nubia/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1355
    iget-object v5, p0, Lcn/nubia/calendar/EventInfoFragment$12;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v5}, Lcn/nubia/calendar/EventInfoFragment;->access$4100(Lcn/nubia/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1357
    :cond_2
    throw v2
.end method
