.class public Lcn/nubia/common/content/SyncStateContentProviderHelper;
.super Ljava/lang/Object;
.source "SyncStateContentProviderHelper.java"


# static fields
.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static DB_VERSION:J = 0x0L

.field public static final PATH:Ljava/lang/String; = "syncstate"

.field private static final QUERY_COUNT_SYNC_STATE_ROWS:Ljava/lang/String; = "SELECT count(*) FROM _sync_state WHERE _id=?"

.field private static final SELECT_BY_ACCOUNT:Ljava/lang/String; = "account_name=? AND account_type=?"

.field private static final SYNC_STATE_META_TABLE:Ljava/lang/String; = "_sync_state_metadata"

.field private static final SYNC_STATE_META_VERSION_COLUMN:Ljava/lang/String; = "version"

.field private static final SYNC_STATE_TABLE:Ljava/lang/String; = "_sync_state"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const-wide/16 v0, 0x1

    sput-wide v0, Lcn/nubia/common/content/SyncStateContentProviderHelper;->DB_VERSION:J

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/common/content/SyncStateContentProviderHelper;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    array-length v4, p0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v0, p0, v3

    .line 138
    .local v0, "element":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_1

    .line 139
    if-nez p1, :cond_2

    .line 144
    .end local v0    # "element":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_1
    return v1

    .line 141
    .restart local v0    # "element":Ljava/lang/Object;, "TT;"
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 137
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "element":Ljava/lang/Object;, "TT;"
    :cond_3
    move v1, v2

    .line 144
    goto :goto_1
.end method


# virtual methods
.method public createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 55
    const-string v1, "DROP TABLE IF EXISTS _sync_state"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    const-string v1, "CREATE TABLE _sync_state (_id INTEGER PRIMARY KEY,account_name TEXT NOT NULL,account_type TEXT NOT NULL,data TEXT,UNIQUE(account_name, account_type));"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    const-string v1, "DROP TABLE IF EXISTS _sync_state_metadata"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    const-string v1, "CREATE TABLE _sync_state_metadata (version INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 68
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "version"

    sget-wide v2, Lcn/nubia/common/content/SyncStateContentProviderHelper;->DB_VERSION:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 69
    const-string v1, "_sync_state_metadata"

    const-string v2, "version"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 70
    return-void
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "userWhere"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 92
    const-string v0, "_sync_state"

    invoke-virtual {p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 88
    const-string v0, "_sync_state"

    const-string v1, "account_name"

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onAccountsChanged(Landroid/database/sqlite/SQLiteDatabase;[Landroid/accounts/Account;)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "accounts"    # [Landroid/accounts/Account;

    .prologue
    const/4 v3, 0x0

    .line 114
    const-string v1, "_sync_state"

    sget-object v2, Lcn/nubia/common/content/SyncStateContentProviderHelper;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 116
    .local v11, "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 118
    .local v9, "accountName":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 119
    .local v10, "accountType":Ljava/lang/String;
    new-instance v8, Landroid/accounts/Account;

    invoke-direct {v8, v9, v10}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v8, "account":Landroid/accounts/Account;
    invoke-static {p2, v8}, Lcn/nubia/common/content/SyncStateContentProviderHelper;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const-string v0, "_sync_state"

    const-string v1, "account_name=? AND account_type=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    const/4 v3, 0x1

    aput-object v10, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 126
    .end local v8    # "account":Landroid/accounts/Account;
    .end local v9    # "accountName":Ljava/lang/String;
    .end local v10    # "accountType":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 127
    throw v0

    .line 126
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 128
    return-void
.end method

.method public onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 73
    const-string v2, "SELECT version FROM _sync_state_metadata"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 76
    .local v0, "version":J
    sget-wide v2, Lcn/nubia/common/content/SyncStateContentProviderHelper;->DB_VERSION:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {p0, p1}, Lcn/nubia/common/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 79
    :cond_0
    return-void
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 83
    const-string v1, "_sync_state"

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/Object;)I
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rowId"    # J
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 101
    const-string v2, "SELECT count(*) FROM _sync_state WHERE _id=?"

    new-array v3, v1, [Ljava/lang/String;

    .line 102
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 101
    invoke-static {p1, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 110
    :goto_0
    return v0

    .line 105
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE _sync_state SET data=? WHERE _id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p4, v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 110
    goto :goto_0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 97
    const-string v0, "_sync_state"

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
