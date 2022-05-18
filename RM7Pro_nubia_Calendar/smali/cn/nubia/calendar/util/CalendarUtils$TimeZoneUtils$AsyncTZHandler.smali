.class Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTZHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 120
    iput-object p1, p0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->this$0:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

    .line 121
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 122
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 127
    invoke-static {}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->access$100()Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 128
    if-nez p3, :cond_0

    .line 129
    const/4 v8, 0x0

    :try_start_0
    invoke-static {v8}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->access$202(Z)Z

    .line 130
    const/4 v8, 0x1

    invoke-static {v8}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->access$302(Z)Z

    .line 131
    monitor-exit v10

    .line 178
    .end local p2    # "cookie":Ljava/lang/Object;
    :goto_0
    return-void

    .line 134
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_0
    const/4 v7, 0x0

    .line 136
    .local v7, "writePrefs":Z
    const-string v11, "key"

    .line 137
    invoke-interface {p3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 138
    .local v2, "keyColumn":I
    const-string v11, "value"

    .line 139
    invoke-interface {p3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 140
    .local v6, "valueColumn":I
    :cond_1
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 141
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "value":Ljava/lang/String;
    const-string v11, "timezoneType"

    invoke-static {v1, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 145
    const-string v11, "auto"

    invoke-static {v5, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    move v4, v8

    .line 147
    .local v4, "useHomeTZ":Z
    :goto_2
    invoke-static {}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->access$400()Z

    move-result v11

    if-eq v4, v11, :cond_1

    .line 148
    const/4 v7, 0x1

    goto :goto_1

    .end local v4    # "useHomeTZ":Z
    :cond_2
    move v4, v9

    .line 145
    goto :goto_2

    .line 151
    :cond_3
    const-string v11, "timezoneInstancesPrevious"

    invoke-static {v1, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 153
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 154
    invoke-static {}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->access$500()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 155
    const/4 v7, 0x1

    .line 156
    invoke-static {v5}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->access$502(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 177
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keyColumn":I
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "valueColumn":I
    .end local v7    # "writePrefs":Z
    .end local p2    # "cookie":Ljava/lang/Object;
    :catchall_0
    move-exception v8

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 160
    .restart local v2    # "keyColumn":I
    .restart local v6    # "valueColumn":I
    .restart local v7    # "writePrefs":Z
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_4
    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 161
    if-eqz v7, :cond_5

    .line 162
    check-cast p2, Landroid/content/Context;

    .end local p2    # "cookie":Ljava/lang/Object;
    iget-object v8, p0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->this$0:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

    .line 163
    invoke-static {v8}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->access$600(Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;)Ljava/lang/String;

    move-result-object v8

    .line 162
    invoke-static {p2, v8}, Lcn/nubia/calendar/util/CalendarUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 167
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v8, "preferences_home_tz"

    invoke-static {}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->access$500()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v8, v9}, Lcn/nubia/calendar/util/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_5
    const/4 v8, 0x0

    invoke-static {v8}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->access$202(Z)Z

    .line 171
    invoke-static {}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->access$100()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 172
    .local v0, "callback":Ljava/lang/Runnable;
    if-eqz v0, :cond_6

    .line 173
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 176
    .end local v0    # "callback":Ljava/lang/Runnable;
    :cond_7
    invoke-static {}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->access$100()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    .line 177
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
