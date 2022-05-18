.class Lcn/nubia/music/activity/AddToPlaylistActivity$2;
.super Ljava/lang/Object;
.source "AddToPlaylistActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/AddToPlaylistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/AddToPlaylistActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/AddToPlaylistActivity;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$2;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

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

    .line 95
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$2;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->access$100(Lcn/nubia/music/activity/AddToPlaylistActivity;)Lcn/nubia/music/activity/AddToPlaylistActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/activity/AddToPlaylistActivity$a;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    .line 99
    new-instance v0, Lcn/nubia/music/dialog/CreatePlaylistDialog;

    iget-object v1, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$2;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-direct {v0, v1}, Lcn/nubia/music/dialog/CreatePlaylistDialog;-><init>(Landroid/content/Context;)V

    .line 100
    iget-object v1, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$2;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-virtual {v0, v1}, Lcn/nubia/music/dialog/CreatePlaylistDialog;->setCallback(Lcn/nubia/music/dialog/PlaylistActionBaseDialog$DialogActionCallback;)V

    .line 101
    invoke-virtual {v0}, Lcn/nubia/music/dialog/CreatePlaylistDialog;->show()V

    .line 102
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$2;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$2;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/AddToPlaylistActivity;->access$200(Lcn/nubia/music/activity/AddToPlaylistActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$2;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-static {v2}, Lcn/nubia/music/activity/AddToPlaylistActivity;->access$300(Lcn/nubia/music/activity/AddToPlaylistActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "new_playlist"

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/music/activity/AddToPlaylistActivity;->access$400(Lcn/nubia/music/activity/AddToPlaylistActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$2;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->access$100(Lcn/nubia/music/activity/AddToPlaylistActivity;)Lcn/nubia/music/activity/AddToPlaylistActivity$a;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/activity/AddToPlaylistActivity$a;->a(Lcn/nubia/music/activity/AddToPlaylistActivity$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/PlaylistModel;

    .line 107
    iget-object v1, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$2;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/AddToPlaylistActivity;->access$600(Lcn/nubia/music/activity/AddToPlaylistActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    iget-object v1, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$2;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/AddToPlaylistActivity;->access$600(Lcn/nubia/music/activity/AddToPlaylistActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$2;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->access$710(Lcn/nubia/music/activity/AddToPlaylistActivity;)I

    .line 110
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$2;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-static {v0, v2}, Lcn/nubia/music/activity/AddToPlaylistActivity;->access$802(Lcn/nubia/music/activity/AddToPlaylistActivity;Z)Z

    .line 111
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$2;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-virtual {v0, v2}, Lcn/nubia/music/activity/AddToPlaylistActivity;->setAllSelectIcon(Z)V

    .line 120
    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$2;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$2;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/AddToPlaylistActivity;->access$700(Lcn/nubia/music/activity/AddToPlaylistActivity;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcn/nubia/music/activity/AddToPlaylistActivity;->setSelectTitle(J)V

    .line 121
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$2;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->access$100(Lcn/nubia/music/activity/AddToPlaylistActivity;)Lcn/nubia/music/activity/AddToPlaylistActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/activity/AddToPlaylistActivity$a;->notifyDataSetChanged()V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v1, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$2;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/AddToPlaylistActivity;->access$600(Lcn/nubia/music/activity/AddToPlaylistActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$2;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->access$708(Lcn/nubia/music/activity/AddToPlaylistActivity;)I

    .line 115
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$2;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AddToPlaylistActivity;->access$700(Lcn/nubia/music/activity/AddToPlaylistActivity;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$2;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/AddToPlaylistActivity;->access$100(Lcn/nubia/music/activity/AddToPlaylistActivity;)Lcn/nubia/music/activity/AddToPlaylistActivity$a;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/activity/AddToPlaylistActivity$a;->a(Lcn/nubia/music/activity/AddToPlaylistActivity$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 116
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$2;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-static {v0, v3}, Lcn/nubia/music/activity/AddToPlaylistActivity;->access$802(Lcn/nubia/music/activity/AddToPlaylistActivity;Z)Z

    .line 117
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$2;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-virtual {v0, v3}, Lcn/nubia/music/activity/AddToPlaylistActivity;->setAllSelectIcon(Z)V

    goto :goto_1
.end method
