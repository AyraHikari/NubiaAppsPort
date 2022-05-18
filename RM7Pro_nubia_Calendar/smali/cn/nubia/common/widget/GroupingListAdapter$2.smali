.class Lcn/nubia/common/widget/GroupingListAdapter$2;
.super Landroid/database/DataSetObserver;
.source "GroupingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/common/widget/GroupingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/common/widget/GroupingListAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/common/widget/GroupingListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/common/widget/GroupingListAdapter;

    .prologue
    .line 103
    iput-object p1, p0, Lcn/nubia/common/widget/GroupingListAdapter$2;->this$0:Lcn/nubia/common/widget/GroupingListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcn/nubia/common/widget/GroupingListAdapter$2;->this$0:Lcn/nubia/common/widget/GroupingListAdapter;

    invoke-virtual {v0}, Lcn/nubia/common/widget/GroupingListAdapter;->notifyDataSetChanged()V

    .line 108
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcn/nubia/common/widget/GroupingListAdapter$2;->this$0:Lcn/nubia/common/widget/GroupingListAdapter;

    invoke-virtual {v0}, Lcn/nubia/common/widget/GroupingListAdapter;->notifyDataSetInvalidated()V

    .line 113
    return-void
.end method
