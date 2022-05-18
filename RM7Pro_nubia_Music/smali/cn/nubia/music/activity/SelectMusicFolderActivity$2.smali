.class Lcn/nubia/music/activity/SelectMusicFolderActivity$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 289
    iput-object p1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$2;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 292
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 293
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 295
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$2;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    const v1, 0x7f0b00f3

    invoke-static {v0, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    .line 296
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$2;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->finish()V

    .line 304
    :cond_1
    :goto_0
    return-void

    .line 297
    :cond_2
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$2;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v1}, Lcn/nubia/music/utils/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mount action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$2;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    new-instance v1, Lcn/nubia/music/app/model/CompositeDir;

    const-string v2, "/./storage/"

    invoke-direct {v1, v2}, Lcn/nubia/music/app/model/CompositeDir;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$102(Lcn/nubia/music/activity/SelectMusicFolderActivity;Lcn/nubia/music/app/model/CompositeDir;)Lcn/nubia/music/app/model/CompositeDir;

    .line 301
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$2;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$2;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$100(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Lcn/nubia/music/app/model/CompositeDir;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$002(Lcn/nubia/music/activity/SelectMusicFolderActivity;Lcn/nubia/music/app/model/CompositeDir;)Lcn/nubia/music/app/model/CompositeDir;

    .line 302
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$2;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$200(Lcn/nubia/music/activity/SelectMusicFolderActivity;)V

    goto :goto_0
.end method
