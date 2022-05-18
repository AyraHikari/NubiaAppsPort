.class Lcn/nubia/deskclock/adapter/WorldTimeAdapter$1;
.super Landroid/os/Handler;
.source "WorldTimeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/adapter/WorldTimeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    .prologue
    .line 70
    iput-object p1, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$1;->this$0:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 72
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 100
    :goto_0
    :pswitch_0
    return-void

    .line 74
    :pswitch_1
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$1;->this$0:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "mCitiesList"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->access$002(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;Ljava/util/List;)Ljava/util/List;

    .line 76
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$1;->this$0:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-static {v3}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->access$100(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$1;->this$0:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-static {v3}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->access$100(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v2, "originSelection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$1;->this$0:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-static {v3}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->access$100(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/City;

    .line 79
    .local v0, "city":Lcn/nubia/deskclock/model/City;
    iget-object v4, v0, Lcn/nubia/deskclock/model/City;->mCityId:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    .end local v0    # "city":Lcn/nubia/deskclock/model/City;
    :cond_0
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$1;->this$0:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-static {v3}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->access$100(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 82
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$1;->this$0:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-static {v3}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->access$000(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/City;

    .line 83
    .restart local v0    # "city":Lcn/nubia/deskclock/model/City;
    iget-object v1, v0, Lcn/nubia/deskclock/model/City;->mCityId:Ljava/lang/String;

    .line 84
    .local v1, "cityId":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    iget-object v4, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$1;->this$0:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-static {v4}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->access$100(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 89
    .end local v0    # "city":Lcn/nubia/deskclock/model/City;
    .end local v1    # "cityId":Ljava/lang/String;
    .end local v2    # "originSelection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$1;->this$0:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {v3}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 92
    :pswitch_2
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$1;->this$0:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "mCitiesList"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->access$002(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;Ljava/util/List;)Ljava/util/List;

    .line 94
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$1;->this$0:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {v3}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 97
    :pswitch_3
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$1;->this$0:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-virtual {v3}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
