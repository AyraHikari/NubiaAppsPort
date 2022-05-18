.class Lcn/nubia/music/activity/SelectMusicFolderActivity$3;
.super Landroid/os/Handler;
.source "SelectMusicFolderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/SelectMusicFolderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/SelectMusicFolderActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/SelectMusicFolderActivity;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$3;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 390
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 407
    :goto_0
    return-void

    .line 392
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$3;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$800(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Lcn/nubia/music/activity/SelectMusicFolderActivity$b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$3;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    new-instance v1, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;

    iget-object v2, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$3;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    iget-object v3, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$3;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-direct {v1, v2, v3}, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;-><init>(Lcn/nubia/music/activity/SelectMusicFolderActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$802(Lcn/nubia/music/activity/SelectMusicFolderActivity;Lcn/nubia/music/activity/SelectMusicFolderActivity$b;)Lcn/nubia/music/activity/SelectMusicFolderActivity$b;

    .line 395
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$3;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$3;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    iget-object v2, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$3;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v2}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$1000(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$1100(Lcn/nubia/music/activity/SelectMusicFolderActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$1002(Lcn/nubia/music/activity/SelectMusicFolderActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 396
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$3;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$800(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Lcn/nubia/music/activity/SelectMusicFolderActivity$b;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$3;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$1000(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->a(Ljava/util/ArrayList;)V

    .line 397
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$3;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$1200(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$3;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$800(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Lcn/nubia/music/activity/SelectMusicFolderActivity$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 398
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$3;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$1200(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcn/nubia/music/activity/SelectMusicFolderActivity$c;

    iget-object v2, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$3;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/nubia/music/activity/SelectMusicFolderActivity$c;-><init>(Lcn/nubia/music/activity/SelectMusicFolderActivity;Lcn/nubia/music/activity/SelectMusicFolderActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 400
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$3;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$800(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Lcn/nubia/music/activity/SelectMusicFolderActivity$b;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$3;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$1000(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->a(Ljava/util/ArrayList;)V

    .line 401
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$3;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$800(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Lcn/nubia/music/activity/SelectMusicFolderActivity$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->notifyDataSetChanged()V

    goto :goto_0

    .line 390
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method
