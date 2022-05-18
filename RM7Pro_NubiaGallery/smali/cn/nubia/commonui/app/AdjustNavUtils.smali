.class public Lcn/nubia/commonui/app/AdjustNavUtils;
.super Ljava/lang/Object;
.source "AdjustNavUtils.java"


# instance fields
.field private frameLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mAc:Landroid/app/Activity;

.field private mListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mViewObserved:Landroid/view/View;

.field private usableHeightPrevious:I

.field private usableWidthPrevious:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/app/Activity;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->mViewObserved:Landroid/view/View;

    .line 25
    iput-object p2, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->mAc:Landroid/app/Activity;

    .line 26
    new-instance p1, Lcn/nubia/commonui/app/AdjustNavUtils$1;

    invoke-direct {p1, p0}, Lcn/nubia/commonui/app/AdjustNavUtils$1;-><init>(Lcn/nubia/commonui/app/AdjustNavUtils;)V

    iput-object p1, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 31
    iget-object p1, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->mViewObserved:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 32
    iget-object p1, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->mViewObserved:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->frameLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/app/AdjustNavUtils;)I
    .locals 0

    .line 10
    invoke-direct {p0}, Lcn/nubia/commonui/app/AdjustNavUtils;->computeUsableHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcn/nubia/commonui/app/AdjustNavUtils;)I
    .locals 0

    .line 10
    invoke-direct {p0}, Lcn/nubia/commonui/app/AdjustNavUtils;->computeUsableWight()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/app/AdjustNavUtils;II)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/app/AdjustNavUtils;->resetLayoutByUsableHeight(II)V

    return-void
.end method

.method public static assistActivity(Landroid/view/View;Landroid/app/Activity;)V
    .locals 1

    .line 13
    new-instance v0, Lcn/nubia/commonui/app/AdjustNavUtils;

    invoke-direct {v0, p0, p1}, Lcn/nubia/commonui/app/AdjustNavUtils;-><init>(Landroid/view/View;Landroid/app/Activity;)V

    return-void
.end method

.method private computeUsableHeight()I
    .locals 2

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 74
    iget-object v1, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->mViewObserved:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 75
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    return v1
.end method

.method private computeUsableWight()I
    .locals 3

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 80
    iget-object v1, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->mViewObserved:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 81
    iget-object v1, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->mAc:Landroid/app/Activity;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLandOritentation270(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentSDKVersion()I

    move-result v1

    const/16 v2, 0x19

    if-le v1, v2, :cond_0

    .line 82
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->mAc:Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getVirtualBarHeight(Landroid/content/Context;)I

    move-result v0

    add-int/2addr v1, v0

    return v1

    .line 84
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    return v1
.end method

.method private resetLayoutByUsableHeight(II)V
    .locals 5

    .line 49
    iget v0, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->usableHeightPrevious:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->usableWidthPrevious:I

    if-eq v0, p2, :cond_4

    :cond_0
    const/4 v0, -0x1

    .line 51
    iget-object v1, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->mAc:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 53
    iget-object v0, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->mAc:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 58
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->frameLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    add-int/2addr v0, p1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 59
    iget-object v0, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->frameLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 60
    iget-object v0, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->mViewObserved:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 61
    iget-object v0, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->mListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    if-eqz v0, :cond_2

    .line 62
    invoke-interface {v0, v1}, Landroid/view/View$OnSystemUiVisibilityChangeListener;->onSystemUiVisibilityChange(I)V

    .line 63
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->mViewObserved:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 64
    iget-object v0, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->mAc:Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLandOritentation270(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->mAc:Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNavigationBarVisable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentSDKVersion()I

    move-result v0

    const/16 v2, 0x19

    if-le v0, v2, :cond_3

    .line 65
    iget-object v0, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->mViewObserved:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->mAc:Landroid/app/Activity;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getVirtualBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 67
    :cond_3
    iput p1, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->usableHeightPrevious:I

    .line 68
    iput p2, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->usableWidthPrevious:I

    :cond_4
    return-void
.end method


# virtual methods
.method public removeGlobalLayoutListerner()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->frameLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    iget-object v0, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->frameLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 42
    iget-object v0, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->mViewObserved:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 43
    iget-object v0, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->mViewObserved:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 44
    iget-object v0, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->mViewObserved:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public setmListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcn/nubia/commonui/app/AdjustNavUtils;->mListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    return-void
.end method
