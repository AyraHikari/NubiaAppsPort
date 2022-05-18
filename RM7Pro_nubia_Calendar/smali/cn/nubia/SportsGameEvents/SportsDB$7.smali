.class Lcn/nubia/SportsGameEvents/SportsDB$7;
.super Ljava/lang/Object;
.source "SportsDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/SportsGameEvents/SportsDB;->getSwitchlist()Ljava/util/List;
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
    .line 338
    iput-object p1, p0, Lcn/nubia/SportsGameEvents/SportsDB$7;->this$0:Lcn/nubia/SportsGameEvents/SportsDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 342
    :try_start_0
    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$7;->this$0:Lcn/nubia/SportsGameEvents/SportsDB;

    invoke-static {v2}, Lcn/nubia/SportsGameEvents/SportsDB;->access$300(Lcn/nubia/SportsGameEvents/SportsDB;)Ljava/util/List;

    move-result-object v1

    .line 343
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;>;"
    iget-object v2, p0, Lcn/nubia/SportsGameEvents/SportsDB$7;->this$0:Lcn/nubia/SportsGameEvents/SportsDB;

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Lcn/nubia/SportsGameEvents/SportsDB;->access$400(Lcn/nubia/SportsGameEvents/SportsDB;ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;>;"
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
