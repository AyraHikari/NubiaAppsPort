.class public Landroid/support/design/internal/BottomNavigationItemView;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationItemView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuView$ItemView;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field public static final INVALID_ITEM_POSITION:I = -0x1


# instance fields
.field private final mDefaultMargin:I

.field private mIcon:Landroid/widget/ImageView;

.field private mIconTint:Landroid/content/res/ColorStateList;

.field private mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

.field private mItemPosition:I

.field private final mLargeLabel:Landroid/widget/TextView;

.field private final mScaleDownFactor:F

.field private final mScaleUpFactor:F

.field private final mShiftAmount:I

.field private mShiftingMode:Z

.field private final mSmallLabel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/internal/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/internal/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    const/4 v3, -0x1

    iput v3, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemPosition:I

    .line 77
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 78
    .local v2, "res":Landroid/content/res/Resources;
    sget v3, Landroid/support/design/R$dimen;->design_bottom_navigation_text_size:I

    .line 79
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 80
    .local v1, "inactiveLabelSize":I
    sget v3, Landroid/support/design/R$dimen;->design_bottom_navigation_active_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 82
    .local v0, "activeLabelSize":I
    sget v3, Landroid/support/design/R$dimen;->design_bottom_navigation_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/support/design/internal/BottomNavigationItemView;->mDefaultMargin:I

    .line 83
    sub-int v3, v1, v0

    iput v3, p0, Landroid/support/design/internal/BottomNavigationItemView;->mShiftAmount:I

    .line 84
    int-to-float v3, v0

    mul-float/2addr v3, v5

    int-to-float v4, v1

    div-float/2addr v3, v4

    iput v3, p0, Landroid/support/design/internal/BottomNavigationItemView;->mScaleUpFactor:F

    .line 85
    int-to-float v3, v1

    mul-float/2addr v3, v5

    int-to-float v4, v0

    div-float/2addr v3, v4

    iput v3, p0, Landroid/support/design/internal/BottomNavigationItemView;->mScaleDownFactor:F

    .line 87
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Landroid/support/design/R$layout;->design_bottom_navigation_item:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 88
    sget v3, Landroid/support/design/R$drawable;->design_bottom_navigation_item_background:I

    invoke-virtual {p0, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setBackgroundResource(I)V

    .line 89
    sget v3, Landroid/support/design/R$id;->icon:I

    invoke-virtual {p0, v3}, Landroid/support/design/internal/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    .line 90
    sget v3, Landroid/support/design/R$id;->smallLabel:I

    invoke-virtual {p0, v3}, Landroid/support/design/internal/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    .line 91
    sget v3, Landroid/support/design/R$id;->largeLabel:I

    invoke-virtual {p0, v3}, Landroid/support/design/internal/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    .line 92
    return-void
.end method


# virtual methods
.method public getItemData()Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getItemPosition()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemPosition:I

    return v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V
    .locals 1
    .param p1, "itemData"    # Landroid/support/v7/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    .line 96
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 97
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setCheckable(Z)V

    .line 98
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setChecked(Z)V

    .line 99
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setEnabled(Z)V

    .line 100
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setId(I)V

    .line 103
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 209
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 210
    .local v0, "drawableState":[I
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    sget-object v1, Landroid/support/design/internal/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/support/design/internal/BottomNavigationItemView;->mergeDrawableStates([I[I)[I

    .line 213
    :cond_0
    return-object v0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->refreshDrawableState()V

    .line 133
    return-void
.end method

.method public setChecked(Z)V
    .locals 8
    .param p1, "checked"    # Z

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/16 v6, 0x31

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    .line 137
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPivotX(F)V

    .line 138
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBaseline()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPivotY(F)V

    .line 139
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPivotX(F)V

    .line 140
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBaseline()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPivotY(F)V

    .line 141
    iget-boolean v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mShiftingMode:Z

    if-eqz v1, :cond_1

    .line 142
    if-eqz p1, :cond_0

    .line 143
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 144
    .local v0, "iconParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 145
    iget v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mDefaultMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 146
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setScaleX(F)V

    .line 149
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setScaleY(F)V

    .line 159
    :goto_0
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    :goto_1
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->refreshDrawableState()V

    .line 189
    return-void

    .line 151
    .end local v0    # "iconParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 152
    .restart local v0    # "iconParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 153
    iget v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mDefaultMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 154
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setScaleX(F)V

    .line 157
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setScaleY(F)V

    goto :goto_0

    .line 161
    .end local v0    # "iconParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    if-eqz p1, :cond_2

    .line 162
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 163
    .restart local v0    # "iconParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 164
    iget v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mDefaultMargin:I

    iget v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mShiftAmount:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 165
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setScaleX(F)V

    .line 170
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setScaleY(F)V

    .line 171
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mScaleUpFactor:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleX(F)V

    .line 172
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mScaleUpFactor:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleY(F)V

    goto :goto_1

    .line 174
    .end local v0    # "iconParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 175
    .restart local v0    # "iconParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 176
    iget v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mDefaultMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 177
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mScaleDownFactor:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleX(F)V

    .line 182
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mScaleDownFactor:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleY(F)V

    .line 183
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setScaleX(F)V

    .line 184
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setScaleY(F)V

    goto/16 :goto_1
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 198
    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Landroid/support/v4/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroid/support/v4/view/PointerIconCompat;

    move-result-object v0

    .line 199
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V

    .line 205
    :goto_0
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 222
    if-eqz p1, :cond_0

    .line 223
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 224
    .local v0, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_1

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 225
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIconTint:Landroid/content/res/ColorStateList;

    invoke-static {p1, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 227
    .end local v0    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    return-void

    .line 224
    .restart local v0    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 241
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIconTint:Landroid/content/res/ColorStateList;

    .line 242
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 246
    :cond_0
    return-void
.end method

.method public setItemBackground(I)V
    .locals 2
    .param p1, "background"    # I

    .prologue
    .line 254
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 256
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 257
    return-void

    .line 255
    .end local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setItemPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 108
    iput p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemPosition:I

    .line 109
    return-void
.end method

.method public setShiftingMode(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mShiftingMode:Z

    .line 117
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 218
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 249
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 250
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 251
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 126
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    return v0
.end method
