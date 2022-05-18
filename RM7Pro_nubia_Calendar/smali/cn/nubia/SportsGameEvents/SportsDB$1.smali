.class Lcn/nubia/SportsGameEvents/SportsDB$1;
.super Ljava/lang/Object;
.source "SportsDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/SportsGameEvents/SportsDB;->deleteAllDatabase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/SportsGameEvents/SportsDB;


# direct methods
.method constructor <init>(Lcn/nubia/SportsGameEvents/SportsDB;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/SportsGameEvents/SportsDB;

    .prologue
    .line 66
    iput-object p1, p0, Lcn/nubia/SportsGameEvents/SportsDB$1;->this$0:Lcn/nubia/SportsGameEvents/SportsDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcn/nubia/SportsGameEvents/SportsDB;->access$000()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from calendarpresetTABLE_name"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    return-void
.end method
