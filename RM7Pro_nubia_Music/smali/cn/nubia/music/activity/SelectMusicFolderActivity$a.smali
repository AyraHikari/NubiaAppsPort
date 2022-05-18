.class Lcn/nubia/music/activity/SelectMusicFolderActivity$a;
.super Landroid/os/Handler;
.source "SelectMusicFolderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/SelectMusicFolderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/SelectMusicFolderActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/music/activity/SelectMusicFolderActivity;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$a;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    .line 310
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 311
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    const/16 v1, 0xb

    .line 315
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 330
    :goto_0
    :pswitch_0
    return-void

    .line 317
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$a;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$000(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Lcn/nubia/music/app/model/CompositeDir;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/app/model/CompositeDir;->listChild()Ljava/util/List;

    .line 318
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$a;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$600(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 319
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$a;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$600(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 320
    iput v1, v0, Landroid/os/Message;->what:I

    .line 321
    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$a;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$600(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 324
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$a;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$702(Lcn/nubia/music/activity/SelectMusicFolderActivity;Z)Z

    .line 325
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$a;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$702(Lcn/nubia/music/activity/SelectMusicFolderActivity;Z)Z

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
