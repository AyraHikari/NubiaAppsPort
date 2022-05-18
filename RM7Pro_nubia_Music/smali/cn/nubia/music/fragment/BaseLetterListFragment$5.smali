.class Lcn/nubia/music/fragment/BaseLetterListFragment$5;
.super Ljava/lang/Object;
.source "BaseLetterListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/fragment/BaseLetterListFragment;->setSelectedClickEvent(Lcn/nubia/commonui/actionbar/app/AppCompatActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckedTextView;

.field final synthetic b:Lcn/nubia/music/fragment/BaseLetterListFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/BaseLetterListFragment;Landroid/widget/CheckedTextView;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$5;->b:Lcn/nubia/music/fragment/BaseLetterListFragment;

    iput-object p2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$5;->a:Landroid/widget/CheckedTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 707
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$5;->b:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->access$1100(Lcn/nubia/music/fragment/BaseLetterListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$5;->a:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 709
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$5;->b:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->access$1200(Lcn/nubia/music/fragment/BaseLetterListFragment;)V

    .line 714
    :goto_0
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$5;->b:Lcn/nubia/music/fragment/BaseLetterListFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->notifyDataSetChanged()V

    .line 715
    return-void

    .line 711
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$5;->a:Landroid/widget/CheckedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 712
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$5;->b:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->access$1300(Lcn/nubia/music/fragment/BaseLetterListFragment;)V

    goto :goto_0
.end method
