.class Lcn/nubia/music/activity/SelectMusicFolderActivity$4;
.super Landroid/os/AsyncTask;
.source "SelectMusicFolderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/SelectMusicFolderActivity;->confirmOption()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/SelectMusicFolderActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/SelectMusicFolderActivity;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$4;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$4;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$1400(Lcn/nubia/music/activity/SelectMusicFolderActivity;)V

    .line 548
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$4;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$1500(Lcn/nubia/music/activity/SelectMusicFolderActivity;)V

    .line 549
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 554
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 555
    const-string v1, "add_song_count"

    iget-object v2, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$4;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v2}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$1600(Lcn/nubia/music/activity/SelectMusicFolderActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 556
    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$4;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->setResult(ILandroid/content/Intent;)V

    .line 557
    invoke-static {}, Lcn/nubia/music/ui/SaveMusicProgress;->dismissScanProgress()V

    .line 558
    invoke-static {}, Lcn/nubia/music/ui/SaveMusicProgress;->clear()V

    .line 559
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$4;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$1700(Lcn/nubia/music/activity/SelectMusicFolderActivity;)V

    .line 560
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$4;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->finish()V

    .line 561
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 544
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/SelectMusicFolderActivity$4;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 544
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/SelectMusicFolderActivity$4;->a(Ljava/lang/Void;)V

    return-void
.end method
