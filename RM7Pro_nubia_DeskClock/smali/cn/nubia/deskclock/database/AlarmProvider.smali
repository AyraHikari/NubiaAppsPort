.class public Lcn/nubia/deskclock/database/AlarmProvider;
.super Landroid/content/ContentProvider;
.source "AlarmProvider.java"


# static fields
.field private static final ALARMS:I = 0x1

.field private static final ALARMS_ID:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AlarmProvider"

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Lcn/nubia/deskclock/database/AlarmDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 48
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcn/nubia/deskclock/database/AlarmProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 51
    sget-object v0, Lcn/nubia/deskclock/database/AlarmProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.deskclock"

    const-string v2, "alarm"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    sget-object v0, Lcn/nubia/deskclock/database/AlarmProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.deskclock"

    const-string v2, "alarm/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 185
    const-string v7, "getAlarmDataForFIT"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcn/nubia/deskclock/database/AlarmProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcn/nubia/deskclock/model/Alarms;->calculateAlarmInOneDay(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 188
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v4, "label":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v2, "alarmtime":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 191
    .local v0, "alarm":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 193
    aget-object v8, v0, v9

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    .end local v0    # "alarm":[Ljava/lang/String;
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 197
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v7, "label"

    invoke-virtual {v3, v7, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 198
    const-string v7, "alarmtime"

    invoke-virtual {v3, v7, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 224
    .end local v1    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    .end local v2    # "alarmtime":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "label":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v3

    .line 200
    :cond_2
    const-string v7, "getCityId"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 201
    sget-object v7, Lcn/nubia/deskclock/DeskClockApplication;->globalApplicationContext:Landroid/app/Application;

    const-string v8, "city_list_file_widget"

    .line 202
    invoke-virtual {v7, v8, v9}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 203
    .local v6, "sharedPref":Landroid/content/SharedPreferences;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 204
    .restart local v3    # "bundle":Landroid/os/Bundle;
    const-string v7, "TOP_CITY_ID"

    const-string v8, "TOP_CITY_ID"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 206
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v6    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_3
    const-string v7, "checkPermission"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 207
    const-string v5, "0"

    .line 208
    .local v5, "result":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 209
    .restart local v3    # "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcn/nubia/deskclock/database/AlarmProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcn/nubia/deskclock/util/Utils;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 210
    const-string v5, "-1"

    .line 211
    const-string v7, "AlarmProvider"

    const-string v8, " no enter deskclock "

    invoke-static {v7, v8}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v7, "result"

    invoke-virtual {v3, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 215
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/deskclock/database/AlarmProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "org.codeaurora.permission.POWER_OFF_ALARM"

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_5

    .line 216
    const-string v5, "-2"

    .line 217
    const-string v7, "AlarmProvider"

    const-string v8, " insertAlarm  no_poweroff_alarm_permission"

    invoke-static {v7, v8}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v7, "result"

    invoke-virtual {v3, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 221
    :cond_5
    const-string v7, "result"

    invoke-virtual {v3, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 224
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v5    # "result":Ljava/lang/String;
    :cond_6
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 158
    iget-object v5, p0, Lcn/nubia/deskclock/database/AlarmProvider;->mOpenHelper:Lcn/nubia/deskclock/database/AlarmDatabaseHelper;

    invoke-virtual {v5}, Lcn/nubia/deskclock/database/AlarmDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 160
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 161
    .local v2, "rowId":J
    sget-object v5, Lcn/nubia/deskclock/database/AlarmProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 176
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot delete from URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 163
    :pswitch_0
    const-string v5, "alarms"

    invoke-virtual {v1, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 179
    .local v0, "count":I
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/database/AlarmProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 180
    return v0

    .line 166
    .end local v0    # "count":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 167
    .local v4, "segment":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 168
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 173
    :goto_1
    const-string v5, "alarms"

    invoke-virtual {v1, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 174
    .restart local v0    # "count":I
    goto :goto_0

    .line 171
    .end local v0    # "count":I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 113
    sget-object v1, Lcn/nubia/deskclock/database/AlarmProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 114
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 120
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/alarms"

    .line 118
    :goto_0
    return-object v1

    :pswitch_1
    const-string v1, "vnd.android.cursor.item/alarms"

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 148
    sget-object v1, Lcn/nubia/deskclock/database/AlarmProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 149
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot insert into URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/database/AlarmProvider;->mOpenHelper:Lcn/nubia/deskclock/database/AlarmDatabaseHelper;

    invoke-virtual {v1, p2}, Lcn/nubia/deskclock/database/AlarmDatabaseHelper;->commonInsert(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 153
    .local v0, "newUrl":Landroid/net/Uri;
    invoke-virtual {p0}, Lcn/nubia/deskclock/database/AlarmProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 154
    return-object v0
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/deskclock/database/AlarmProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    :goto_0
    new-instance v1, Lcn/nubia/deskclock/database/AlarmDatabaseHelper;

    invoke-direct {v1, v0}, Lcn/nubia/deskclock/database/AlarmDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/deskclock/database/AlarmProvider;->mOpenHelper:Lcn/nubia/deskclock/database/AlarmDatabaseHelper;

    .line 68
    const/4 v1, 0x1

    return v1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/database/AlarmProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lcn/nubia/deskclock/database/AlarmProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarms.db"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projectionIn"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 77
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcn/nubia/deskclock/database/AlarmProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 78
    .local v10, "match":I
    packed-switch v10, :pswitch_data_0

    .line 88
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :pswitch_0
    const-string v2, "alarms"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 90
    :goto_0
    const/4 v1, 0x0

    .line 91
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 93
    .local v11, "ret":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcn/nubia/deskclock/database/AlarmProvider;->mOpenHelper:Lcn/nubia/deskclock/database/AlarmDatabaseHelper;

    invoke-virtual {v2}, Lcn/nubia/deskclock/database/AlarmDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 94
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 102
    :goto_1
    if-nez v11, :cond_0

    .line 103
    const-string v2, "AlarmProvider"

    const-string v3, "Alarms.query: failed"

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_2
    return-object v11

    .line 83
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "ret":Landroid/database/Cursor;
    :pswitch_1
    const-string v2, "alarms"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 84
    const-string v2, "_id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 95
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11    # "ret":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 96
    .local v8, "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    const/4 v1, 0x0

    .line 97
    const/4 v11, 0x0

    .line 101
    goto :goto_1

    .line 98
    .end local v8    # "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    :catch_1
    move-exception v9

    .line 99
    .local v9, "ex":Landroid/database/sqlite/SQLiteDiskIOException;
    const/4 v1, 0x0

    .line 100
    const/4 v11, 0x0

    goto :goto_1

    .line 105
    .end local v9    # "ex":Landroid/database/sqlite/SQLiteDiskIOException;
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/database/AlarmProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v11, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_2

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 127
    const-wide/16 v4, 0x0

    .line 128
    .local v4, "rowId":J
    sget-object v6, Lcn/nubia/deskclock/database/AlarmProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 129
    .local v2, "match":I
    iget-object v6, p0, Lcn/nubia/deskclock/database/AlarmProvider;->mOpenHelper:Lcn/nubia/deskclock/database/AlarmDatabaseHelper;

    invoke-virtual {v6}, Lcn/nubia/deskclock/database/AlarmDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 130
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    packed-switch v2, :pswitch_data_0

    .line 138
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot update URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 132
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 133
    .local v3, "segment":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 134
    const-string v6, "alarms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, p2, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 141
    .local v0, "count":I
    const-string v6, "AlarmProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*** notifyChange() rowId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " url "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcn/nubia/deskclock/database/AlarmProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 143
    return v0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
