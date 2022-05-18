.class public Lcn/nubia/gallery3d/ui/BottomMenuLayout;
.super Landroid/widget/LinearLayout;
.source "BottomMenuLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;,
        Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItemListener;
    }
.end annotation


# instance fields
.field private mCancel:Landroid/widget/ImageView;

.field private mCancelLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field public final mHeight:I

.field private mListener:Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItemListener;

.field private mMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelected:Landroid/widget/ImageView;

.field private mSelectedLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mContext:Landroid/content/Context;

    .line 54
    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07006c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mHeight:I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/ui/BottomMenuLayout;)Landroid/widget/ImageView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mCancel:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/ui/BottomMenuLayout;)Landroid/widget/ImageView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mSelected:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/ui/BottomMenuLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/ui/BottomMenuLayout;)Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItemListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mListener:Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItemListener;

    return-object p0
.end method


# virtual methods
.method public addItem(IIII)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 213
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 215
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;->mTextView:Landroid/widget/TextView;

    .line 216
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p4, 0x0

    .line 217
    invoke-virtual {v0, p4, p3, p4, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 p3, 0x0

    .line 218
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    new-instance p3, Lcn/nubia/gallery3d/ui/BottomMenuLayout$3;

    invoke-direct {p3, p0, p1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout$3;-><init>(Lcn/nubia/gallery3d/ui/BottomMenuLayout;I)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;

    iput p2, p1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;->mId:I

    .line 227
    new-instance p1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$4;

    invoke-direct {p1, p0, v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout$4;-><init>(Lcn/nubia/gallery3d/ui/BottomMenuLayout;Landroid/widget/TextView;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public hide()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mCancel:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mCancelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mCancel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mSelected:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mSelectedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mSelected:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 122
    invoke-virtual {p0, v2}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public init()V
    .locals 4

    .line 60
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;

    const v2, 0x7f0900e8

    invoke-virtual {p0, v2}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;

    const v2, 0x7f0900e9

    invoke-virtual {p0, v2}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {v1, v2, v3}, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;

    const v2, 0x7f0900ea

    invoke-virtual {p0, v2}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {v1, v2, v3}, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;

    const v2, 0x7f0900eb

    invoke-virtual {p0, v2}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {v1, v2, v3}, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0900ee

    .line 64
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mCancel:Landroid/widget/ImageView;

    const v0, 0x7f0900ec

    .line 65
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mSelected:Landroid/widget/ImageView;

    const v0, 0x7f0900ef

    .line 66
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mCancelLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0900ed

    .line 67
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mSelectedLayout:Landroid/widget/LinearLayout;

    .line 68
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mCancel:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$1;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout$1;-><init>(Lcn/nubia/gallery3d/ui/BottomMenuLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mSelected:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$2;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout$2;-><init>(Lcn/nubia/gallery3d/ui/BottomMenuLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public removeItemByIndex(I)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;

    const/4 v1, 0x0

    iput v1, v0, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;->mId:I

    .line 271
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;

    iget-object p1, p1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;->mTextView:Landroid/widget/TextView;

    const-string v0, ""

    .line 272
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 273
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x8

    .line 274
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setAllItemEnabled(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 247
    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 248
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;

    iget-object v1, v1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBackgroundColor(Z)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    const v1, 0x7f06001e

    goto :goto_0

    :cond_0
    const v1, 0x7f0600f2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 256
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setBackgroundColor(I)V

    .line 257
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_1

    const v1, 0x7f060078

    goto :goto_1

    :cond_1
    const v1, 0x7f060077

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, 0x0

    .line 259
    :goto_2
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 260
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;

    iget-object v2, v2, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;->mTextView:Landroid/widget/TextView;

    .line 261
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p1, :cond_2

    const v4, 0x7f08011f

    goto :goto_3

    :cond_2
    const v4, 0x7f08011e

    :goto_3
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 263
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v4, 0x1

    .line 264
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 265
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public setItemEnabled(IZ)V
    .locals 2

    const/4 v0, 0x0

    .line 136
    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 137
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;

    iget v1, v1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;->mId:I

    if-ne v1, p1, :cond_0

    .line 138
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;

    iget-object p1, p1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;->mTextView:Landroid/widget/TextView;

    .line 139
    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eq v0, p2, :cond_1

    .line 140
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setItemIconById(II)V
    .locals 3

    const/4 v0, 0x0

    .line 185
    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 186
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;

    iget v1, v1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;->mId:I

    if-ne v1, p1, :cond_0

    .line 187
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;

    iget-object p1, p1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;->mTextView:Landroid/widget/TextView;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_2

    .line 192
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mContext:Landroid/content/Context;

    .line 193
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 192
    invoke-virtual {p1, v2, p2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setItemTitleById(II)V
    .locals 2

    const/4 v0, 0x0

    .line 199
    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 200
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;

    iget v1, v1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;->mId:I

    if-ne v1, p1, :cond_0

    .line 201
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;

    iget-object p1, p1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;->mTextView:Landroid/widget/TextView;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 206
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    return-void
.end method

.method public setItemVisibleById(IZ)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 163
    :goto_0
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 164
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;

    iget v2, v2, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;->mId:I

    if-ne v2, p1, :cond_1

    .line 165
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;

    iget-object p1, p1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;->mTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x8

    .line 167
    :goto_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-eq p2, v0, :cond_2

    .line 168
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public setItemVisibleByIndex(IZ)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;

    iget-object p1, p1, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;->mTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 178
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 179
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setListener(Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItemListener;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mListener:Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItemListener;

    return-void
.end method

.method public show()V
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showSelectedItemCancel(ZLandroid/view/View$OnClickListener;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mCancelLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mCancel:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showSelectedItemSelected(ZZLandroid/view/View$OnClickListener;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 154
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mSelected:Landroid/widget/ImageView;

    const v0, 0x7f080125

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mSelected:Landroid/widget/ImageView;

    const v0, 0x7f080127

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 158
    :goto_0
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mSelectedLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->mSelected:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
