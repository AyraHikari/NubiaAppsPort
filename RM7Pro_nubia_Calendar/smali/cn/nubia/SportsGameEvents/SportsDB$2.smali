.class Lcn/nubia/SportsGameEvents/SportsDB$2;
.super Ljava/lang/Object;
.source "SportsDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/SportsGameEvents/SportsDB;->getSportsDataList()Ljava/util/List;
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
    .line 76
    iput-object p1, p0, Lcn/nubia/SportsGameEvents/SportsDB$2;->this$0:Lcn/nubia/SportsGameEvents/SportsDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 79
    iget-object v1, p0, Lcn/nubia/SportsGameEvents/SportsDB$2;->this$0:Lcn/nubia/SportsGameEvents/SportsDB;

    invoke-static {v1}, Lcn/nubia/SportsGameEvents/SportsDB;->access$100(Lcn/nubia/SportsGameEvents/SportsDB;)Ljava/util/List;

    move-result-object v0

    .line 80
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsSportsItem;>;"
    iget-object v1, p0, Lcn/nubia/SportsGameEvents/SportsDB$2;->this$0:Lcn/nubia/SportsGameEvents/SportsDB;

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lcn/nubia/SportsGameEvents/SportsDB;->access$200(Lcn/nubia/SportsGameEvents/SportsDB;ILjava/lang/Object;)V

    .line 81
    return-void
.end method
