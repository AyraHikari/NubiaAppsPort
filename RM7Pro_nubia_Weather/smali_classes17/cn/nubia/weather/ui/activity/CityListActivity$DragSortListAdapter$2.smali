.class Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$2;
.super Ljava/lang/Object;
.source "CityListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->bindViewData(Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;I)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    .prologue
    .line 490
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$2;->this$1:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    iput p2, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 493
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$2;->this$1:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-static {v3}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->access$400(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)Ljava/util/HashMap;

    move-result-object v3

    iget v4, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$2;->val$position:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 494
    .local v0, "isContainItem":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 495
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$2;->this$1:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-static {v3}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->access$400(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)Ljava/util/HashMap;

    move-result-object v3

    iget v4, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$2;->val$position:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    :goto_1
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$2;->this$1:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    iget-object v3, v3, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    iget-object v4, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$2;->this$1:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-static {v4}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->access$400(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {v3, v4}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$500(Lcn/nubia/weather/ui/activity/CityListActivity;I)V

    .line 500
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$2;->this$1:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    iget-object v3, v3, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v3}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$600(Lcn/nubia/weather/ui/activity/CityListActivity;)Landroid/widget/CheckedTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 501
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$2;->this$1:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-static {v1}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->access$400(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$2;->this$1:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 502
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$2;->this$1:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    iget-object v1, v1, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$600(Lcn/nubia/weather/ui/activity/CityListActivity;)Landroid/widget/CheckedTextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 513
    :cond_0
    :goto_2
    return-void

    .end local v0    # "isContainItem":Z
    :cond_1
    move v0, v2

    .line 493
    goto :goto_0

    .line 497
    .restart local v0    # "isContainItem":Z
    :cond_2
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$2;->this$1:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-static {v3}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->access$400(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)Ljava/util/HashMap;

    move-result-object v3

    iget v4, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$2;->val$position:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 507
    :cond_3
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$2;->this$1:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-static {v2}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->access$400(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$2;->this$1:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 508
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$2;->this$1:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    iget-object v2, v2, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v2}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$600(Lcn/nubia/weather/ui/activity/CityListActivity;)Landroid/widget/CheckedTextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_2
.end method
