.class public Lcn/nubia/calendar/db/CustomDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CustomDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/db/CustomDbHelper$CustomReminderTableColumn;,
        Lcn/nubia/calendar/db/CustomDbHelper$CustomEventTableColumn;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "customdatabase.db"

.field public static final DATABASE_VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-string v0, "customdatabase.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 40
    const-string v0, "create table if not exists customEventTable(_id INTEGER PRIMARY KEY AUTOINCREMENT,event_id INTEGER,event_ring_mode INTEGER,event_ring_tone TEXT,sign_color TEXT,background_color TEXT,long_press_backcolor TEXT,long_press_bordercolor TEXT,image_path TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    const-string v0, "create table if not exists customReminderTable(_id INTEGER PRIMARY KEY AUTOINCREMENT,event_id INTEGER,miniutes INTEGER,phone_numbers TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 49
    const-string v0, "DROP TABLE IF EXISTS customEventTable"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    const-string v0, "DROP TABLE IF EXISTS customReminderTable"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    const-string v0, "create table if not exists customEventTable(_id INTEGER PRIMARY KEY AUTOINCREMENT,event_id INTEGER,event_ring_mode INTEGER,event_ring_tone TEXT,sign_color TEXT,background_color TEXT,long_press_backcolor TEXT,long_press_bordercolor TEXT,image_path TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    const-string v0, "create table if not exists customReminderTable(_id INTEGER PRIMARY KEY AUTOINCREMENT,event_id INTEGER,miniutes INTEGER,phone_numbers TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    return-void
.end method
