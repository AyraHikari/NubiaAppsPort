.class Lcn/nubia/commonui/preference/PreferenceActivity$1;
.super Landroid/os/Handler;
.source "PreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/preference/PreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/preference/PreferenceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/preference/PreferenceActivity;

    .prologue
    .line 232
    iput-object p1, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->this$0:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 235
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 237
    :pswitch_0
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->this$0:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-static {v3}, Lcn/nubia/commonui/preference/PreferenceActivity;->access$000(Lcn/nubia/commonui/preference/PreferenceActivity;)V

    goto :goto_0

    .line 240
    :pswitch_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->this$0:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-static {v3}, Lcn/nubia/commonui/preference/PreferenceActivity;->access$100(Lcn/nubia/commonui/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 241
    .local v2, "oldHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/commonui/preference/PreferenceActivity$Header;>;"
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->this$0:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-static {v3}, Lcn/nubia/commonui/preference/PreferenceActivity;->access$100(Lcn/nubia/commonui/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 242
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->this$0:Lcn/nubia/commonui/preference/PreferenceActivity;

    iget-object v4, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->this$0:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-static {v4}, Lcn/nubia/commonui/preference/PreferenceActivity;->access$100(Lcn/nubia/commonui/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 243
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->this$0:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-static {v3}, Lcn/nubia/commonui/preference/PreferenceActivity;->access$200(Lcn/nubia/commonui/preference/PreferenceActivity;)Landroid/widget/ListAdapter;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/BaseAdapter;

    if-eqz v3, :cond_1

    .line 244
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->this$0:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-static {v3}, Lcn/nubia/commonui/preference/PreferenceActivity;->access$300(Lcn/nubia/commonui/preference/PreferenceActivity;)Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 246
    :cond_1
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->this$0:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-virtual {v3}, Lcn/nubia/commonui/preference/PreferenceActivity;->onGetNewHeader()Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    move-result-object v0

    .line 247
    .local v0, "header":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 248
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->this$0:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-virtual {v3, v0, v2}, Lcn/nubia/commonui/preference/PreferenceActivity;->findBestMatchingHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    move-result-object v1

    .line 249
    .local v1, "mappedHeader":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->this$0:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-static {v3}, Lcn/nubia/commonui/preference/PreferenceActivity;->access$400(Lcn/nubia/commonui/preference/PreferenceActivity;)Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    move-result-object v3

    if-eq v3, v1, :cond_0

    .line 250
    :cond_2
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->this$0:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-virtual {v3, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->switchToHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 252
    .end local v1    # "mappedHeader":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    :cond_3
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->this$0:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-static {v3}, Lcn/nubia/commonui/preference/PreferenceActivity;->access$400(Lcn/nubia/commonui/preference/PreferenceActivity;)Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 253
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->this$0:Lcn/nubia/commonui/preference/PreferenceActivity;

    iget-object v4, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->this$0:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-static {v4}, Lcn/nubia/commonui/preference/PreferenceActivity;->access$400(Lcn/nubia/commonui/preference/PreferenceActivity;)Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->this$0:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-static {v5}, Lcn/nubia/commonui/preference/PreferenceActivity;->access$100(Lcn/nubia/commonui/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcn/nubia/commonui/preference/PreferenceActivity;->findBestMatchingHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    move-result-object v1

    .line 254
    .restart local v1    # "mappedHeader":Lcn/nubia/commonui/preference/PreferenceActivity$Header;
    if-eqz v1, :cond_0

    .line 255
    iget-object v3, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->this$0:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-virtual {v3, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->setSelectedHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
