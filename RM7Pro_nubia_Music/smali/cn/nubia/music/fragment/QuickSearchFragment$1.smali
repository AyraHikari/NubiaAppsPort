.class Lcn/nubia/music/fragment/QuickSearchFragment$1;
.super Ljava/lang/Object;
.source "QuickSearchFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/fragment/QuickSearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/QuickSearchFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/QuickSearchFragment;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcn/nubia/music/fragment/QuickSearchFragment$1;->a:Lcn/nubia/music/fragment/QuickSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 112
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment$1;->a:Lcn/nubia/music/fragment/QuickSearchFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/QuickSearchFragment;->access$100(Lcn/nubia/music/fragment/QuickSearchFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 113
    iget-object v1, p0, Lcn/nubia/music/fragment/QuickSearchFragment$1;->a:Lcn/nubia/music/fragment/QuickSearchFragment;

    invoke-static {v1}, Lcn/nubia/music/fragment/QuickSearchFragment;->access$200(Lcn/nubia/music/fragment/QuickSearchFragment;)Lcn/nubia/music/fragment/presenter/QuickSearchContract$Presenter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/nubia/music/fragment/presenter/QuickSearchContract$Presenter;->itemClick(Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment$1;->a:Lcn/nubia/music/fragment/QuickSearchFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/QuickSearchFragment;->access$300(Lcn/nubia/music/fragment/QuickSearchFragment;)V

    .line 115
    return-void
.end method
