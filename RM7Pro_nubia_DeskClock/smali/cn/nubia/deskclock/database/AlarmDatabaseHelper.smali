.class Lcn/nubia/deskclock/database/AlarmDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AlarmDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/database/AlarmDatabaseHelper$CreateTable;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "alarms.db"

.field private static final DATABASE_VERSION:I = 0xa

.field private static final TAG:Ljava/lang/String; = "AlarmDatabaseHelper"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const-string v0, "alarms.db"

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 46
    return-void
.end method

.method private addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "notNull"    # Z
    .param p5, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 198
    const-string v1, "AlarmDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addColumn(s) columnName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 201
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALTER TABLE alarms ADD COLUMN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " NOT NULL DEFAULT "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 211
    const-string v1, "db"

    const-string v2, "addColumn(e) OK"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 201
    :cond_0
    :try_start_1
    const-string v1, ""
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "ex":Landroid/database/SQLException;
    const/4 v1, 0x0

    .line 209
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v0    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 210
    throw v1
.end method

.method private upgradeToVersion10(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 195
    const-string v2, "recent_alarm_time"

    const-string v3, "INTEGER"

    const/4 v4, 0x0

    const-string v5, "0"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/deskclock/database/AlarmDatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 196
    return-void
.end method

.method private upgradeToVersion6(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 154
    :try_start_0
    const-string v1, "ALTER TABLE alarms ADD poweroffalarm INTEGER DEFAULT 1;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "UPDATE alarms SET poweroffalarm = 1;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private upgradeToVersion7(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 163
    :try_start_0
    const-string v1, "ALTER TABLE alarms ADD enablerecentalarm INTEGER DEFAULT 1;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "UPDATE alarms SET enablerecentalarm = 1;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private upgradeToVersion8(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 172
    :try_start_0
    const-string v1, "ALTER TABLE alarms ADD holidayalarm INTEGER DEFAULT 1;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "UPDATE alarms SET holidayalarm = 1;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private upgradeToVersion9(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 182
    :try_start_0
    const-string v1, "ALTER TABLE alarms RENAME TO alarms_old_20160305;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 183
    const-string v1, "CREATE TABLE alarms (_id INTEGER PRIMARY KEY,hour INTEGER, minutes INTEGER, daysofweek INTEGER, alarmtime INTEGER, enabled INTEGER, vibrate INTEGER, message TEXT, alert TEXT, issnooze INTEGER, snoozetime INTEGER, snoozemaxcount INTEGER, snoozecount INTEGER, volumevalue INTEGER, cancelcount INTEGER,poweroffalarm INTEGER NOT NULL DEFAULT 1,enablerecentalarm INTEGER NOT NULL DEFAULT 1,holidayalarm INTEGER NOT NULL DEFAULT 1, recent_alarm_time INTEGER NOT NULL DEFAULT 0 );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 184
    const-string v1, "INSERT INTO alarms(_id,hour,minutes,daysofweek,alarmtime,enabled,vibrate, message,alert,issnooze,snoozetime,snoozemaxcount,snoozecount,volumevalue,cancelcount) SELECT _id,hour,minutes,daysofweek,alarmtime,enabled,vibrate, message,alert,issnooze,snoozetime,snoozemaxcount,snoozecount,volumevalue,cancelcount FROM alarms_old_20160305;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "AlarmDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not update to 9   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method commonInsert(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 116
    invoke-virtual {p0}, Lcn/nubia/deskclock/database/AlarmDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 117
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 118
    const-wide/16 v10, -0x1

    .line 121
    .local v10, "rowId":J
    :try_start_0
    const-string v1, "_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 122
    .local v12, "value":Ljava/lang/Object;
    if-eqz v12, :cond_1

    .line 123
    check-cast v12, Ljava/lang/Integer;

    .end local v12    # "value":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 124
    .local v9, "id":I
    const/4 v1, -0x1

    if-le v9, v1, :cond_1

    .line 125
    const-string v1, "alarms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 128
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 129
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const-string v1, "_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 134
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 139
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "id":I
    :cond_1
    const-string v1, "alarms"

    const-string v2, "message"

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    .line 140
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 144
    const-wide/16 v2, 0x0

    cmp-long v1, v10, v2

    if-gez v1, :cond_2

    .line 145
    new-instance v1, Landroid/database/SQLException;

    const-string v2, "Failed to insert row"

    invoke-direct {v1, v2}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 143
    throw v1

    .line 147
    :cond_2
    const-string v1, "AlarmDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added alarm rowId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object v1, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 65
    const-string v0, "CREATE TABLE alarms (_id INTEGER PRIMARY KEY,hour INTEGER, minutes INTEGER, daysofweek INTEGER, alarmtime INTEGER, enabled INTEGER, vibrate INTEGER, message TEXT, alert TEXT, issnooze INTEGER, snoozetime INTEGER, snoozemaxcount INTEGER, snoozecount INTEGER, volumevalue INTEGER, cancelcount INTEGER,poweroffalarm INTEGER NOT NULL DEFAULT 1,enablerecentalarm INTEGER NOT NULL DEFAULT 1,holidayalarm INTEGER NOT NULL DEFAULT 1, recent_alarm_time INTEGER NOT NULL DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "currentVersion"    # I

    .prologue
    const/4 v3, 0x5

    .line 70
    sget-boolean v0, Lcn/nubia/deskclock/util/LogUtils;->LOGV:Z

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "AlarmDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading alarms database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    if-ge p2, v3, :cond_1

    .line 75
    const-string v0, "DROP TABLE IF EXISTS alarms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->clearAllSharePreferceData()V

    .line 77
    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/database/AlarmDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 78
    const-string v0, "AlarmDatabaseHelper"

    const-string v1, "upgradeToVersion5"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 p2, 0x5

    .line 82
    :cond_1
    if-ne p2, v3, :cond_2

    .line 83
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/database/AlarmDatabaseHelper;->upgradeToVersion6(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 84
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->clearAllSharePreferceData()V

    .line 85
    const-string v0, "AlarmDatabaseHelper"

    const-string v1, "upgradeToVersion6"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 p2, 0x6

    .line 88
    :cond_2
    const/4 v0, 0x6

    if-ne p2, v0, :cond_3

    .line 89
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/database/AlarmDatabaseHelper;->upgradeToVersion7(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 90
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->clearAllSharePreferceData()V

    .line 91
    const-string v0, "AlarmDatabaseHelper"

    const-string v1, "upgradeToVersion7"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 p2, 0x7

    .line 94
    :cond_3
    const/4 v0, 0x7

    if-ne p2, v0, :cond_4

    .line 95
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/database/AlarmDatabaseHelper;->upgradeToVersion8(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 96
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->clearAllSharePreferceData()V

    .line 97
    const-string v0, "AlarmDatabaseHelper"

    const-string v1, "upgradeToVersion8"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/16 p2, 0x8

    .line 101
    :cond_4
    const/16 v0, 0x8

    if-ne p2, v0, :cond_5

    .line 102
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/database/AlarmDatabaseHelper;->upgradeToVersion9(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 103
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->clearAllSharePreferceData()V

    .line 104
    const-string v0, "AlarmDatabaseHelper"

    const-string v1, "upgradeToVersion9"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/16 p2, 0x9

    .line 107
    :cond_5
    const/16 v0, 0x9

    if-ne p2, v0, :cond_6

    .line 108
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/database/AlarmDatabaseHelper;->upgradeToVersion10(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 109
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->clearAllSharePreferceData()V

    .line 110
    const-string v0, "AlarmDatabaseHelper"

    const-string v1, "upgradeToVersion10"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/16 p2, 0xa

    .line 113
    :cond_6
    return-void
.end method
