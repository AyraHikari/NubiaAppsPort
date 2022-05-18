.class Lcn/nubia/common/widget/GroupingListAdapter$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcn/nubia/common/widget/GroupingListAdapter;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/common/widget/GroupingListAdapter;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 90
    iput-object p1, p0, Lcn/nubia/common/widget/GroupingListAdapter$1;->this$0:Lcn/nubia/common/widget/GroupingListAdapter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 99
    iget-object v0, p0, Lcn/nubia/common/widget/GroupingListAdapter$1;->this$0:Lcn/nubia/common/widget/GroupingListAdapter;

    invoke-virtual {v0}, Lcn/nubia/common/widget/GroupingListAdapter;->onContentChanged()V

    .line 100
    return-void
.end method
