.class Lcn/nubia/music/activity/SelectMusicFolderActivity$1;
.super Ljava/lang/Object;
.source "SelectMusicFolderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/SelectMusicFolderActivity;->onResume()V
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
    .line 135
    iput-object p1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$1;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 138
    :goto_0
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$1;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$000(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Lcn/nubia/music/app/model/CompositeDir;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$1;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$000(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Lcn/nubia/music/app/model/CompositeDir;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/app/model/CompositeDir;->isFileExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$1;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$1;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$000(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Lcn/nubia/music/app/model/CompositeDir;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/music/app/model/CompositeDir;->getParent()Lcn/nubia/music/app/model/CompositeDir;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$002(Lcn/nubia/music/activity/SelectMusicFolderActivity;Lcn/nubia/music/app/model/CompositeDir;)Lcn/nubia/music/app/model/CompositeDir;

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$1;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$000(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Lcn/nubia/music/app/model/CompositeDir;

    move-result-object v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$1;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$1;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$100(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Lcn/nubia/music/app/model/CompositeDir;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$002(Lcn/nubia/music/activity/SelectMusicFolderActivity;Lcn/nubia/music/app/model/CompositeDir;)Lcn/nubia/music/app/model/CompositeDir;

    .line 145
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$1;->a:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$200(Lcn/nubia/music/activity/SelectMusicFolderActivity;)V

    .line 146
    return-void
.end method
