.class public Lcn/nubia/gallery3d/ui/GalleryTabLayout;
.super Landroid/widget/RelativeLayout;
.source "GalleryTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/GalleryTabLayout$OnTabClickedListener;
    }
.end annotation


# static fields
.field public static final INDEX_ALBUM:I = 0x0

.field public static final INDEX_CAMERA:I = 0x1

.field public static final INDEX_CLOUD:I = 0x2


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentTabIndex:I

.field public final mHeight:I

.field private mOnTabClickedListeners:[Lcn/nubia/gallery3d/ui/GalleryTabLayout$OnTabClickedListener;

.field private mTabAlbum:Landroid/view/View;

.field private mTabCamera:Landroid/view/View;

.field private mTabCloud:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 25
    iput p2, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mCurrentTabIndex:I

    .line 44
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070239

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mHeight:I

    const/4 p1, 0x3

    new-array p1, p1, [Lcn/nubia/gallery3d/ui/GalleryTabLayout$OnTabClickedListener;

    .line 46
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mOnTabClickedListeners:[Lcn/nubia/gallery3d/ui/GalleryTabLayout$OnTabClickedListener;

    return-void
.end method

.method private ensureTab(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mTabCloud:Landroid/view/View;

    if-nez p1, :cond_3

    const p1, 0x7f090181

    .line 68
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mTabCloud:Landroid/view/View;

    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mTabCamera:Landroid/view/View;

    if-nez p1, :cond_3

    const p1, 0x7f090180

    .line 63
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mTabCamera:Landroid/view/View;

    goto :goto_0

    .line 57
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mTabAlbum:Landroid/view/View;

    if-nez p1, :cond_3

    const p1, 0x7f09017f

    .line 58
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mTabAlbum:Landroid/view/View;

    :cond_3
    :goto_0
    return-void
.end method

.method private setTabCheckedIntetnal(IZ)V
    .locals 4

    if-eqz p2, :cond_0

    const v0, 0x7f0600e0

    goto :goto_0

    :cond_0
    const v0, 0x7f0600e1

    .line 125
    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    goto :goto_4

    .line 142
    :cond_1
    invoke-direct {p0, v3}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->ensureTab(I)V

    if-eqz p2, :cond_2

    const p1, 0x7f080089

    goto :goto_1

    :cond_2
    const p1, 0x7f080088

    .line 144
    :goto_1
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mTabCloud:Landroid/view/View;

    check-cast p2, Landroid/widget/TextView;

    .line 145
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 144
    invoke-virtual {p2, v2, p1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mTabCloud:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 135
    :cond_3
    invoke-direct {p0, v3}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->ensureTab(I)V

    if-eqz p2, :cond_4

    const p1, 0x7f080087

    goto :goto_2

    :cond_4
    const p1, 0x7f080086

    .line 137
    :goto_2
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mTabCamera:Landroid/view/View;

    check-cast p2, Landroid/widget/TextView;

    .line 138
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 137
    invoke-virtual {p2, v2, p1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mTabCamera:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    .line 128
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->ensureTab(I)V

    if-eqz p2, :cond_6

    const p1, 0x7f080085

    goto :goto_3

    :cond_6
    const p1, 0x7f080084

    .line 130
    :goto_3
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mTabAlbum:Landroid/view/View;

    check-cast p2, Landroid/widget/TextView;

    .line 131
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 130
    invoke-virtual {p2, v2, p1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mTabAlbum:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_4
    return-void
.end method

.method private setTabOnClickListener(I)V
    .locals 1

    .line 77
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->ensureTab(I)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mTabCloud:Landroid/view/View;

    new-instance v0, Lcn/nubia/gallery3d/ui/GalleryTabLayout$3;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/ui/GalleryTabLayout$3;-><init>(Lcn/nubia/gallery3d/ui/GalleryTabLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 88
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mTabCamera:Landroid/view/View;

    new-instance v0, Lcn/nubia/gallery3d/ui/GalleryTabLayout$2;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/ui/GalleryTabLayout$2;-><init>(Lcn/nubia/gallery3d/ui/GalleryTabLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 80
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mTabAlbum:Landroid/view/View;

    new-instance v0, Lcn/nubia/gallery3d/ui/GalleryTabLayout$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/ui/GalleryTabLayout$1;-><init>(Lcn/nubia/gallery3d/ui/GalleryTabLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addTabListener(ILcn/nubia/gallery3d/ui/GalleryTabLayout$OnTabClickedListener;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mOnTabClickedListeners:[Lcn/nubia/gallery3d/ui/GalleryTabLayout$OnTabClickedListener;

    aput-object p2, v0, p1

    .line 110
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->setTabOnClickListener(I)V

    return-void
.end method

.method public hide()V
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 187
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setTabChecked(I)V
    .locals 2

    .line 114
    iget v0, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mCurrentTabIndex:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, v0, v1}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->setTabCheckedIntetnal(IZ)V

    const/4 v0, 0x1

    .line 117
    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->setTabCheckedIntetnal(IZ)V

    .line 118
    iput p1, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mCurrentTabIndex:I

    .line 119
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mOnTabClickedListeners:[Lcn/nubia/gallery3d/ui/GalleryTabLayout$OnTabClickedListener;

    aget-object p1, v0, p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/GalleryTabLayout$OnTabClickedListener;->onClick()V

    return-void
.end method

.method public setTabVisibility(IZ)V
    .locals 1

    .line 162
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->ensureTab(I)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 172
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mTabCloud:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 169
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mTabCamera:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 166
    :cond_3
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mTabAlbum:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public show()V
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateTab(I)V
    .locals 2

    .line 154
    iget v0, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mCurrentTabIndex:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0, v0, v1}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->setTabCheckedIntetnal(IZ)V

    const/4 v0, 0x1

    .line 157
    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->setTabCheckedIntetnal(IZ)V

    .line 158
    iput p1, p0, Lcn/nubia/gallery3d/ui/GalleryTabLayout;->mCurrentTabIndex:I

    return-void
.end method
