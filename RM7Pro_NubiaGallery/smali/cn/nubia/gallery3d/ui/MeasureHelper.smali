.class Lcn/nubia/gallery3d/ui/MeasureHelper;
.super Ljava/lang/Object;
.source "MeasureHelper.java"


# static fields
.field private static sInstance:Lcn/nubia/gallery3d/ui/MeasureHelper;


# instance fields
.field private mComponent:Lcn/nubia/gallery3d/ui/GLView;

.field private mPreferredHeight:I

.field private mPreferredWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcn/nubia/gallery3d/ui/MeasureHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/ui/MeasureHelper;-><init>(Lcn/nubia/gallery3d/ui/GLView;)V

    sput-object v0, Lcn/nubia/gallery3d/ui/MeasureHelper;->sInstance:Lcn/nubia/gallery3d/ui/MeasureHelper;

    return-void
.end method

.method private constructor <init>(Lcn/nubia/gallery3d/ui/GLView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MeasureHelper;->mComponent:Lcn/nubia/gallery3d/ui/GLView;

    return-void
.end method

.method public static getInstance(Lcn/nubia/gallery3d/ui/GLView;)Lcn/nubia/gallery3d/ui/MeasureHelper;
    .locals 1

    .line 35
    sget-object v0, Lcn/nubia/gallery3d/ui/MeasureHelper;->sInstance:Lcn/nubia/gallery3d/ui/MeasureHelper;

    iput-object p0, v0, Lcn/nubia/gallery3d/ui/MeasureHelper;->mComponent:Lcn/nubia/gallery3d/ui/GLView;

    return-object v0
.end method

.method private static getLength(II)I
    .locals 2

    .line 53
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 54
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq p0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq p0, v1, :cond_0

    return p1

    :cond_0
    return v0

    .line 56
    :cond_1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public measure(II)V
    .locals 3

    .line 46
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MeasureHelper;->mComponent:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    .line 47
    iget v1, p0, Lcn/nubia/gallery3d/ui/MeasureHelper;->mPreferredWidth:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    .line 48
    invoke-static {p1, v1}, Lcn/nubia/gallery3d/ui/MeasureHelper;->getLength(II)I

    move-result p1

    iget v1, p0, Lcn/nubia/gallery3d/ui/MeasureHelper;->mPreferredHeight:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    .line 49
    invoke-static {p2, v1}, Lcn/nubia/gallery3d/ui/MeasureHelper;->getLength(II)I

    move-result p2

    .line 47
    invoke-virtual {p0, p1, p2}, Lcn/nubia/gallery3d/ui/MeasureHelper;->setMeasuredSize(II)V

    return-void
.end method

.method protected setMeasuredSize(II)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MeasureHelper;->mComponent:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/ui/GLView;->setMeasuredSize(II)V

    return-void
.end method

.method public setPreferredContentSize(II)Lcn/nubia/gallery3d/ui/MeasureHelper;
    .locals 0

    .line 40
    iput p1, p0, Lcn/nubia/gallery3d/ui/MeasureHelper;->mPreferredWidth:I

    .line 41
    iput p2, p0, Lcn/nubia/gallery3d/ui/MeasureHelper;->mPreferredHeight:I

    return-object p0
.end method
