.class Lcn/nubia/SportsGameEvents/SportsDB$4;
.super Ljava/lang/Object;
.source "SportsDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/SportsGameEvents/SportsDB;->deleteData(Lcom/nubia/nucms/bean/NuCmsSportsItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/SportsGameEvents/SportsDB;

.field final synthetic val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;


# direct methods
.method constructor <init>(Lcn/nubia/SportsGameEvents/SportsDB;Lcom/nubia/nucms/bean/NuCmsSportsItem;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/SportsGameEvents/SportsDB;

    .prologue
    .line 201
    iput-object p1, p0, Lcn/nubia/SportsGameEvents/SportsDB$4;->this$0:Lcn/nubia/SportsGameEvents/SportsDB;

    iput-object p2, p0, Lcn/nubia/SportsGameEvents/SportsDB$4;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 204
    invoke-static {}, Lcn/nubia/SportsGameEvents/SportsDB;->access$000()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "calendarpresetTABLE_name"

    const-string v2, "id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcn/nubia/SportsGameEvents/SportsDB$4;->val$mSportsBean:Lcom/nubia/nucms/bean/NuCmsSportsItem;

    invoke-virtual {v6}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 205
    return-void
.end method
