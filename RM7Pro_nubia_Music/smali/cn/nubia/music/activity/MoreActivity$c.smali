.class Lcn/nubia/music/activity/MoreActivity$c;
.super Landroid/os/Handler;
.source "MoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/MoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/music/activity/MoreActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/MoreActivity;)V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 144
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/music/activity/MoreActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 145
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 150
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/activity/MoreActivity;

    .line 151
    if-nez v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 158
    :pswitch_0
    invoke-static {}, Lcn/nubia/music/app/scan/MusicScanProgress;->dismissScanProgress()V

    .line 160
    invoke-static {}, Lcn/nubia/music/app/scan/MusicScanFoundFolder;->getFoundMusicHashmapSize()I

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    invoke-static {}, Lcn/nubia/music/app/scan/MusicScanFoundFolder;->getFoundMusicFolderSize()I

    move-result v1

    if-nez v1, :cond_3

    .line 162
    :cond_2
    const-string v1, "not Found Music"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Lcn/nubia/music/activity/MoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00e4

    .line 166
    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v0, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_3
    invoke-static {}, Lcn/nubia/music/app/scan/MusicScanProgress;->isSkipScan()Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Lcn/nubia/music/activity/MoreActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
