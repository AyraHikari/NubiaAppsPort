.class public Lcom/zte/mifavor/androidx/preference/PreferenceGroupAdapter;
.super Landroidx/preference/PreferenceGroupAdapter;
.source "PreferenceGroupAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceGroupAdapter"


# instance fields
.field private mIconHeight:I

.field private mIconWidth:I


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    return-void
.end method

.method private custom(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 8

    const v0, 0x1020006

    .line 38
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 40
    iget-object v1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 41
    sget v2, Lcom/zte/extres/R$dimen;->mfvc_xlarge_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 44
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/androidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 45
    instance-of v3, v3, Landroidx/preference/PreferenceCategory;

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    .line 46
    sget p0, Lcom/zte/extres/R$id;->title_bottom_divider:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 48
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-nez p2, :cond_1

    .line 51
    sget p0, Lcom/zte/extres/R$id;->group_divider:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 53
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/4 p2, 0x0

    if-eqz v0, :cond_7

    .line 59
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_7

    .line 60
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 61
    sget v3, Lcom/zte/extres/R$dimen;->mfvc_list_avatar_txt_left_padding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 62
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    mul-int/lit8 v6, v2, 0x2

    sub-int v6, v3, v6

    const/4 v7, 0x1

    if-lt v5, v6, :cond_3

    move v5, v7

    goto :goto_0

    :cond_3
    move v5, p2

    .line 63
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v0

    if-lt v0, v6, :cond_4

    goto :goto_1

    :cond_4
    move v7, p2

    :goto_1
    and-int v0, v5, v7

    .line 64
    iget v5, p0, Lcom/zte/mifavor/androidx/preference/PreferenceGroupAdapter;->mIconWidth:I

    if-lez v5, :cond_5

    .line 65
    iget p0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceGroupAdapter;->mIconWidth:I

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    sub-int p0, v3, v2

    goto :goto_2

    .line 69
    :cond_6
    sget p0, Lcom/zte/extres/R$dimen;->mfvc_list_ic_txt_left_padding:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr p0, v2

    goto :goto_2

    :cond_7
    move p0, p2

    move v0, p0

    :goto_2
    const v2, 0x102003e

    .line 74
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 76
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-gtz p0, :cond_8

    const/4 p0, -0x2

    .line 78
    iput p0, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_3

    .line 80
    :cond_8
    iput p0, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 82
    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    :cond_9
    iget-object p0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    sget v2, Lcom/zte/extres/R$id;->common_preference_layout:I

    if-ne p0, v2, :cond_c

    .line 87
    sget p0, Lcom/zte/extres/R$dimen;->mfvc_1line_list_height:I

    const v2, 0x1020010

    .line 88
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x1020016

    .line 89
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_a

    .line 90
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v4, :cond_a

    if-eqz v3, :cond_a

    .line 91
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v4, :cond_a

    .line 92
    sget p0, Lcom/zte/extres/R$dimen;->mfvc_2line_list_height:I

    goto :goto_4

    :cond_a
    if-eqz v0, :cond_b

    .line 94
    sget p0, Lcom/zte/extres/R$dimen;->mfvc_1line_list_with_avatar_height:I

    .line 96
    :cond_b
    :goto_4
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    .line 97
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 96
    invoke-virtual {v0, p0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 100
    :cond_c
    sget p0, Lcom/zte/extres/R$id;->indicator:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eq p0, v4, :cond_d

    .line 102
    iget-object p0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    sget p1, Lcom/zte/extres/R$dimen;->mfvc_xlarge_padding:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sget v0, Lcom/zte/extres/R$dimen;->mfvc_xlarge_padding_02:I

    .line 103
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 102
    invoke-virtual {p0, p1, p2, v0, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_d
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 2

    .line 26
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 27
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    .line 28
    iget-object v1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/androidx/preference/PreferenceGroupAdapter;->custom(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 15
    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/zte/mifavor/androidx/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public setIconSize(II)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/zte/mifavor/androidx/preference/PreferenceGroupAdapter;->mIconWidth:I

    .line 34
    iput p2, p0, Lcom/zte/mifavor/androidx/preference/PreferenceGroupAdapter;->mIconHeight:I

    return-void
.end method
