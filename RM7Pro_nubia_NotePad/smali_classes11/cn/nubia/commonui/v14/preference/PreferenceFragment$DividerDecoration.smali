.class Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/v14/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DividerDecoration"
.end annotation


# instance fields
.field private mAllowDividerAfterLastItem:Z

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field final synthetic this$0:Lcn/nubia/commonui/v14/preference/PreferenceFragment;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/v14/preference/PreferenceFragment;)V
    .locals 1

    .prologue
    .line 791
    iput-object p1, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;->this$0:Lcn/nubia/commonui/v14/preference/PreferenceFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;->mAllowDividerAfterLastItem:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/v14/preference/PreferenceFragment;Lcn/nubia/commonui/v14/preference/PreferenceFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/commonui/v14/preference/PreferenceFragment;
    .param p2, "x1"    # Lcn/nubia/commonui/v14/preference/PreferenceFragment$1;

    .prologue
    .line 791
    invoke-direct {p0, p1}, Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;-><init>(Lcn/nubia/commonui/v14/preference/PreferenceFragment;)V

    return-void
.end method

.method private shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v3, 0x0

    .line 823
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 824
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v4, v1, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;

    if-eqz v4, :cond_1

    check-cast v1, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;

    .line 825
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;->isDividerAllowedBelow()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 826
    .local v0, "dividerAllowedBelow":Z
    :goto_0
    if-nez v0, :cond_2

    .line 838
    :cond_0
    :goto_1
    return v3

    .end local v0    # "dividerAllowedBelow":Z
    :cond_1
    move v0, v3

    .line 825
    goto :goto_0

    .line 829
    .restart local v0    # "dividerAllowedBelow":Z
    :cond_2
    iget-boolean v3, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 830
    .local v3, "nextAllowed":Z
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 831
    .local v2, "index":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_0

    .line 836
    move v3, v0

    goto :goto_1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 817
    invoke-direct {p0, p2, p3}, Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    iget v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 820
    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 799
    iget-object v5, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_1

    .line 812
    :cond_0
    return-void

    .line 802
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 803
    .local v0, "childCount":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    .line 804
    .local v4, "width":I
    const/4 v1, 0x0

    .local v1, "childViewIndex":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 805
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 806
    .local v3, "view":Landroid/view/View;
    invoke-direct {p0, v3, p2}, Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 807
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int v2, v5, v6

    .line 808
    .local v2, "top":I
    iget-object v5, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget v7, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    add-int/2addr v7, v2

    invoke-virtual {v5, v6, v2, v4, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 809
    iget-object v5, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 804
    .end local v2    # "top":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setAllowDividerAfterLastItem(Z)V
    .locals 0
    .param p1, "allowDividerAfterLastItem"    # Z

    .prologue
    .line 857
    iput-boolean p1, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 858
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 842
    if-eqz p1, :cond_0

    .line 843
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    .line 847
    :goto_0
    iput-object p1, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 848
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;->this$0:Lcn/nubia/commonui/v14/preference/PreferenceFragment;

    invoke-static {v0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->access$200(Lcn/nubia/commonui/v14/preference/PreferenceFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidateItemDecorations()V

    .line 849
    return-void

    .line 845
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 1
    .param p1, "dividerHeight"    # I

    .prologue
    .line 852
    iput p1, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    .line 853
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceFragment$DividerDecoration;->this$0:Lcn/nubia/commonui/v14/preference/PreferenceFragment;

    invoke-static {v0}, Lcn/nubia/commonui/v14/preference/PreferenceFragment;->access$200(Lcn/nubia/commonui/v14/preference/PreferenceFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidateItemDecorations()V

    .line 854
    return-void
.end method
