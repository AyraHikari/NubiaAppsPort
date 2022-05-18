.class Lcn/nubia/music/fragment/MyPlaylistFragment$5;
.super Ljava/lang/Object;
.source "MyPlaylistFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/fragment/MyPlaylistFragment;->setSelectedClickEvent(Lcn/nubia/commonui/actionbar/app/AppCompatActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckedTextView;

.field final synthetic b:Lcn/nubia/music/fragment/MyPlaylistFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/MyPlaylistFragment;Landroid/widget/CheckedTextView;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$5;->b:Lcn/nubia/music/fragment/MyPlaylistFragment;

    iput-object p2, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$5;->a:Landroid/widget/CheckedTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$5;->b:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$1100(Lcn/nubia/music/fragment/MyPlaylistFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$5;->a:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 559
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$5;->b:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$1200(Lcn/nubia/music/fragment/MyPlaylistFragment;)V

    .line 564
    :goto_0
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$5;->b:Lcn/nubia/music/fragment/MyPlaylistFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/MyPlaylistFragment;->mRecycleAdapter:Lcn/nubia/music/adapter/CustomRecycleAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/adapter/CustomRecycleAdapter;->notifyDataSetChanged()V

    .line 565
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$5;->a:Landroid/widget/CheckedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 562
    iget-object v0, p0, Lcn/nubia/music/fragment/MyPlaylistFragment$5;->b:Lcn/nubia/music/fragment/MyPlaylistFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/MyPlaylistFragment;->access$1300(Lcn/nubia/music/fragment/MyPlaylistFragment;)V

    goto :goto_0
.end method
