.class Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "PreferenceFragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollToPreferenceObserver"
.end annotation


# instance fields
.field private final mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private final mKey:Ljava/lang/String;

.field private final mList:Landroid/support/v7/widget/RecyclerView;

.field private final mPreference:Lcn/nubia/commonui/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView;Lcn/nubia/commonui/v7/preference/Preference;Ljava/lang/String;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "list"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "preference"    # Lcn/nubia/commonui/v7/preference/Preference;
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 727
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 728
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 729
    iput-object p2, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mList:Landroid/support/v7/widget/RecyclerView;

    .line 730
    iput-object p3, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mPreference:Lcn/nubia/commonui/v7/preference/Preference;

    .line 731
    iput-object p4, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mKey:Ljava/lang/String;

    .line 732
    return-void
.end method

.method private scrollToPreference()V
    .locals 3

    .prologue
    .line 735
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 737
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mPreference:Lcn/nubia/commonui/v7/preference/Preference;

    if-eqz v1, :cond_1

    .line 738
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v1, Lcn/nubia/commonui/v7/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mPreference:Lcn/nubia/commonui/v7/preference/Preference;

    .line 739
    invoke-interface {v1, v2}, Lcn/nubia/commonui/v7/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Lcn/nubia/commonui/v7/preference/Preference;)I

    move-result v0

    .line 744
    .local v0, "position":I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 745
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 747
    :cond_0
    return-void

    .line 741
    .end local v0    # "position":I
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v1, Lcn/nubia/commonui/v7/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mKey:Ljava/lang/String;

    .line 742
    invoke-interface {v1, v2}, Lcn/nubia/commonui/v7/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_0
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 751
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 752
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 756
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 757
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 761
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 762
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 766
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 767
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 776
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 777
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 771
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 772
    return-void
.end method
