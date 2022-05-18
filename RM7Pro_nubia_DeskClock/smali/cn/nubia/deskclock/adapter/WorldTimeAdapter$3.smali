.class Lcn/nubia/deskclock/adapter/WorldTimeAdapter$3;
.super Ljava/lang/Object;
.source "WorldTimeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->reloadData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    .prologue
    .line 162
    iput-object p1, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$3;->this$0:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    iput-object p2, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 165
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$3;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/deskclock/database/WorldclockDbHelper;->loadCitiesToList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 166
    .local v2, "tempCitiesList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/City;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 167
    .local v0, "bundleArgs":Landroid/os/Bundle;
    const-string v3, "mCitiesList"

    check-cast v2, Ljava/util/ArrayList;

    .end local v2    # "tempCitiesList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/City;>;"
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 169
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$3;->this$0:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-static {v3}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->access$300(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 170
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->what:I

    .line 171
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 172
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$3;->this$0:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-static {v3}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->access$300(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 173
    return-void
.end method
