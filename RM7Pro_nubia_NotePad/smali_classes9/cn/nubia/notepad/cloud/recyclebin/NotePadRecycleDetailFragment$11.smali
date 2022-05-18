.class Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$11;
.super Ljava/lang/Object;
.source "NotePadRecycleDetailFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 428
    iput-object p1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$11;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2
    .param p1, "arg0"    # Landroid/widget/ExpandableListView;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "arg4"    # J

    .prologue
    .line 432
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$11;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$11;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$1500(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;

    move-result-object v0

    .line 433
    invoke-virtual {v0, p3, p4}, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;

    .line 432
    invoke-static {v1, v0, p3, p4}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$1600(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;II)V

    .line 434
    const/4 v0, 0x1

    return v0
.end method
