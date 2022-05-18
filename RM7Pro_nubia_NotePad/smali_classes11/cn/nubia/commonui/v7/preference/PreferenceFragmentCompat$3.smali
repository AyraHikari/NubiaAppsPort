.class Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$3;
.super Ljava/lang/Object;
.source "PreferenceFragmentCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->scrollToPreferenceInternal(Lcn/nubia/commonui/v7/preference/Preference;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$preference:Lcn/nubia/commonui/v7/preference/Preference;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;Lcn/nubia/commonui/v7/preference/Preference;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;

    .prologue
    .line 682
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$3;->this$0:Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;

    iput-object p2, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$3;->val$preference:Lcn/nubia/commonui/v7/preference/Preference;

    iput-object p3, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$3;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 685
    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$3;->this$0:Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;

    invoke-static {v2}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->access$200(Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 686
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    instance-of v2, v0, Lcn/nubia/commonui/v7/preference/PreferenceGroup$PreferencePositionCallback;

    if-nez v2, :cond_0

    .line 688
    if-eqz v0, :cond_1

    .line 689
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Adapter must implement PreferencePositionCallback"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 697
    :cond_0
    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$3;->val$preference:Lcn/nubia/commonui/v7/preference/Preference;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 698
    check-cast v2, Lcn/nubia/commonui/v7/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$3;->val$preference:Lcn/nubia/commonui/v7/preference/Preference;

    .line 699
    invoke-interface {v2, v3}, Lcn/nubia/commonui/v7/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Lcn/nubia/commonui/v7/preference/Preference;)I

    move-result v1

    .line 704
    .local v1, "position":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 705
    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$3;->this$0:Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;

    invoke-static {v2}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->access$200(Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 711
    .end local v1    # "position":I
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v2, v0

    .line 701
    check-cast v2, Lcn/nubia/commonui/v7/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$3;->val$key:Ljava/lang/String;

    .line 702
    invoke-interface {v2, v3}, Lcn/nubia/commonui/v7/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "position":I
    goto :goto_0

    .line 708
    :cond_3
    new-instance v2, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;

    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$3;->this$0:Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;

    .line 709
    invoke-static {v3}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;->access$200(Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$3;->val$preference:Lcn/nubia/commonui/v7/preference/Preference;

    iget-object v5, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$3;->val$key:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4, v5}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView;Lcn/nubia/commonui/v7/preference/Preference;Ljava/lang/String;)V

    .line 708
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    goto :goto_1
.end method
