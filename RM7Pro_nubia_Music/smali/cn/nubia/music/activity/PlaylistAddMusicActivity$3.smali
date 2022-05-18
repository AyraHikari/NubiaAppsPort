.class Lcn/nubia/music/activity/PlaylistAddMusicActivity$3;
.super Ljava/lang/Object;
.source "PlaylistAddMusicActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/PlaylistAddMusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$3;->a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$3;->a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->access$500(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;->a(Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MusicModel;

    .line 173
    iget-object v1, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$3;->a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->access$600(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$3;->a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->access$600(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$3;->a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->access$710(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)I

    .line 176
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$3;->a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    invoke-static {v0, v2}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->access$802(Lcn/nubia/music/activity/PlaylistAddMusicActivity;Z)Z

    .line 177
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$3;->a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    invoke-virtual {v0, v2}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->setAllSelectIcon(Z)V

    .line 186
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$3;->a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$3;->a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->access$700(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->setSelectTitle(J)V

    .line 187
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$3;->a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->access$500(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;->notifyDataSetChanged()V

    .line 188
    return-void

    .line 179
    :cond_1
    iget-object v1, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$3;->a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->access$600(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$3;->a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->access$708(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)I

    .line 181
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$3;->a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->access$700(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$3;->a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->access$500(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;->a(Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$3;->a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    invoke-static {v0, v3}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->access$802(Lcn/nubia/music/activity/PlaylistAddMusicActivity;Z)Z

    .line 183
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$3;->a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    invoke-virtual {v0, v3}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->setAllSelectIcon(Z)V

    goto :goto_0
.end method
