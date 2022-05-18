.class public Lcom/zte/mifavor/androidx/preference/DividerDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DividerDecoration.java"


# instance fields
.field private mAllowDividerAfterLastItem:Z

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mIconWidth:I

.field private mLargePadding:I

.field private mList:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 25
    iput-object p1, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    iget-object p1, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zte/extres/R$dimen;->mfvc_large_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mLargePadding:I

    return-void
.end method

.method private shouldDrawDividerBelow(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 4

    .line 56
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 57
    instance-of v1, v0, Landroidx/preference/PreferenceViewHolder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/preference/PreferenceViewHolder;

    .line 58
    invoke-virtual {v0}, Landroidx/preference/PreferenceViewHolder;->isDividerAllowedBelow()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    return v2

    .line 62
    :cond_1
    iget-boolean p0, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 63
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 64
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-ge p1, v0, :cond_3

    add-int/2addr p1, v3

    .line 65
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 66
    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    .line 67
    instance-of p1, p0, Landroidx/preference/PreferenceViewHolder;

    if-eqz p1, :cond_2

    check-cast p0, Landroidx/preference/PreferenceViewHolder;

    .line 68
    invoke-virtual {p0}, Landroidx/preference/PreferenceViewHolder;->isDividerAllowedAbove()Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v3

    goto :goto_1

    :cond_2
    move p0, v2

    :cond_3
    :goto_1
    return p0
.end method


# virtual methods
.method public getDividerPaddingStart(Landroid/view/View;)I
    .locals 6

    const v0, 0x1020006

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 99
    iget v1, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mLargePadding:I

    if-eqz v0, :cond_4

    .line 101
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    .line 102
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 103
    sget v1, Lcom/zte/extres/R$dimen;->mfvc_list_avatar_txt_left_padding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 104
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    iget v3, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mLargePadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    .line 105
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v0

    iget v3, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mLargePadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    if-lt v0, v3, :cond_1

    move v4, v5

    :cond_1
    and-int v0, v2, v4

    .line 106
    iget v2, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mIconWidth:I

    if-lez v2, :cond_2

    .line 107
    iget p1, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mIconWidth:I

    iget p0, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mLargePadding:I

    add-int v1, p1, p0

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_1

    .line 111
    :cond_3
    sget p0, Lcom/zte/extres/R$dimen;->mfvc_list_ic_txt_left_padding:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_4
    :goto_1
    return v1
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 50
    invoke-direct {p0, p2, p3}, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 51
    iget p0, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mDividerHeight:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    .line 31
    iget-object p3, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p3

    .line 35
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 37
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 38
    invoke-direct {p0, v2, p2}, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 40
    iget-object v4, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->getDividerPaddingStart(Landroid/view/View;)I

    move-result v2

    iget v5, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mLargePadding:I

    sub-int v5, v0, v5

    iget v6, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mDividerHeight:I

    add-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 42
    iget-object v2, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setAllowDividerAfterLastItem(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mAllowDividerAfterLastItem:Z

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mDividerHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mDividerHeight:I

    .line 79
    :goto_0
    iput-object p1, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 80
    iget-object p0, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mDividerHeight:I

    .line 85
    iget-object p0, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    return-void
.end method

.method public setIconWidth(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->mIconWidth:I

    return-void
.end method
