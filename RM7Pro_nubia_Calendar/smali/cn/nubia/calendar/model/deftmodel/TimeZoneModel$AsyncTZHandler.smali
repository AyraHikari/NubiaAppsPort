.class Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;
.super Landroid/content/AsyncQueryHandler;
.source "TimeZoneModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTZHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 67
    iput-object p1, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;->this$0:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    .line 68
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 69
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 73
    iget-object v9, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;->this$0:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    invoke-static {v9}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->access$000(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;)Ljava/util/HashSet;

    move-result-object v9

    monitor-enter v9

    .line 74
    if-nez p3, :cond_0

    .line 75
    :try_start_0
    iget-object v7, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;->this$0:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->access$102(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;Z)Z

    .line 76
    iget-object v7, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;->this$0:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->access$202(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;Z)Z

    .line 77
    monitor-exit v9

    .line 115
    :goto_0
    return-void

    .line 80
    :cond_0
    const/4 v6, 0x0

    .line 81
    .local v6, "writePrefs":Z
    const-string v10, "key"

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 82
    .local v2, "keyColumn":I
    const-string v10, "value"

    .line 83
    invoke-interface {p3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 84
    .local v5, "valueColumn":I
    :cond_1
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 85
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "value":Ljava/lang/String;
    const-string v10, "timezoneType"

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 88
    const-string v10, "auto"

    invoke-static {v4, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    move v3, v7

    .line 90
    .local v3, "useHomeTZ":Z
    :goto_2
    iget-object v10, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;->this$0:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    invoke-static {v10}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->access$300(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;)Z

    move-result v10

    if-eq v3, v10, :cond_1

    .line 91
    const/4 v6, 0x1

    goto :goto_1

    .end local v3    # "useHomeTZ":Z
    :cond_2
    move v3, v8

    .line 88
    goto :goto_2

    .line 93
    :cond_3
    const-string v10, "timezoneInstancesPrevious"

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 95
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;->this$0:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    .line 96
    invoke-static {v10}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->access$400(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 97
    const/4 v6, 0x1

    .line 98
    iget-object v10, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;->this$0:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    invoke-static {v10, v4}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->access$402(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 114
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keyColumn":I
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "valueColumn":I
    .end local v6    # "writePrefs":Z
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 102
    .restart local v2    # "keyColumn":I
    .restart local v5    # "valueColumn":I
    .restart local v6    # "writePrefs":Z
    :cond_4
    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 103
    if-eqz v6, :cond_5

    .line 104
    iget-object v7, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;->this$0:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    invoke-static {v7}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->access$500(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;)Lcn/nubia/calendar/util/SharedPrefUtil;

    move-result-object v7

    const-string v8, "preferences_home_tz"

    iget-object v10, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;->this$0:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    invoke-static {v10}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->access$400(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Lcn/nubia/calendar/util/SharedPrefUtil;->setSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_5
    iget-object v7, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;->this$0:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->access$102(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;Z)Z

    .line 108
    iget-object v7, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;->this$0:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    invoke-static {v7}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->access$000(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 109
    .local v0, "callback":Ljava/lang/Runnable;
    if-eqz v0, :cond_6

    .line 110
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 113
    .end local v0    # "callback":Ljava/lang/Runnable;
    :cond_7
    iget-object v7, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;->this$0:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    invoke-static {v7}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->access$000(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 114
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
