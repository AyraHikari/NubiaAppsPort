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
.field final synthetic a:Lcn/nubia/commonui/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/preference/PreferenceActivity;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->a:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 235
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 237
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->a:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-static {v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->access$000(Lcn/nubia/commonui/preference/PreferenceActivity;)V

    goto :goto_0

    .line 240
    :pswitch_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->a:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-static {v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->access$100(Lcn/nubia/commonui/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 241
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->a:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-static {v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->access$100(Lcn/nubia/commonui/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 242
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->a:Lcn/nubia/commonui/preference/PreferenceActivity;

    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->a:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-static {v2}, Lcn/nubia/commonui/preference/PreferenceActivity;->access$100(Lcn/nubia/commonui/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 243
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->a:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-static {v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->access$200(Lcn/nubia/commonui/preference/PreferenceActivity;)Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->a:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-static {v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->access$300(Lcn/nubia/commonui/preference/PreferenceActivity;)Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 246
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->a:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-virtual {v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->onGetNewHeader()Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcn/nubia/commonui/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 248
    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->a:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->findBestMatchingHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    move-result-object v1

    .line 249
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->a:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-static {v2}, Lcn/nubia/commonui/preference/PreferenceActivity;->access$400(Lcn/nubia/commonui/preference/PreferenceActivity;)Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    move-result-object v2

    if-eq v2, v1, :cond_0

    .line 250
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->a:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->switchToHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 252
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->a:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-static {v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->access$400(Lcn/nubia/commonui/preference/PreferenceActivity;)Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->a:Lcn/nubia/commonui/preference/PreferenceActivity;

    iget-object v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->a:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-static {v1}, Lcn/nubia/commonui/preference/PreferenceActivity;->access$400(Lcn/nubia/commonui/preference/PreferenceActivity;)Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->a:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-static {v2}, Lcn/nubia/commonui/preference/PreferenceActivity;->access$100(Lcn/nubia/commonui/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/preference/PreferenceActivity;->findBestMatchingHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Lcn/nubia/commonui/preference/PreferenceActivity$Header;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_0

    .line 255
    iget-object v1, p0, Lcn/nubia/commonui/preference/PreferenceActivity$1;->a:Lcn/nubia/commonui/preference/PreferenceActivity;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/preference/PreferenceActivity;->setSelectedHeader(Lcn/nubia/commonui/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
