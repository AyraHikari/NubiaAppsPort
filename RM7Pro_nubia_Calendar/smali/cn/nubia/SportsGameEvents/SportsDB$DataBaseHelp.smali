.class Lcn/nubia/SportsGameEvents/SportsDB$DataBaseHelp;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SportsDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/SportsGameEvents/SportsDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DataBaseHelp"
.end annotation


# static fields
.field private static final CREATASERVERSWITCH_TABLE:Ljava/lang/String; = "create table calendarpresetserverswitchTABLE_name ( id integer , name text , image text , begintime text , endtime text , status text , updateuser text);"

.field private static final CREATA_TABLE:Ljava/lang/String; = "create table calendarpresetTABLE_name ( id integer , tag text , matchtime text , matchtype text , home text , homeimg text , guest text , guestimg text , homescore integer , guestscore integer , type integer , url text );"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 308
    const-string v0, "calendarpresetDB_name.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 309
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 313
    const-string v0, "create table calendarpresetTABLE_name ( id integer , tag text , matchtime text , matchtype text , home text , homeimg text , guest text , guestimg text , homescore integer , guestscore integer , type integer , url text );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 314
    const-string v0, "create table calendarpresetserverswitchTABLE_name ( id integer , name text , image text , begintime text , endtime text , status text , updateuser text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 320
    return-void
.end method
