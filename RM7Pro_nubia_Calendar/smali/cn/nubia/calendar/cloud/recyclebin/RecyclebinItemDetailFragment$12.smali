.class Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$12;
.super Ljava/lang/Object;
.source "RecyclebinItemDetailFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 392
    iput-object p1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$12;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

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
    .line 396
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$12;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$12;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$1900(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;

    invoke-static {v1, v0, p3, p4}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$2000(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;II)V

    .line 398
    const/4 v0, 0x1

    return v0
.end method
