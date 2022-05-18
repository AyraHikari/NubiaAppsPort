.class public Lcom/android/gallery3d/filtershow/words/TextColorPickerView;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/words/TextColorPickerView$a;
    }
.end annotation


# static fields
.field private static final j:F


# instance fields
.field private final a:I

.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Rect;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/content/res/TypedArray;

.field private i:Lcom/android/gallery3d/filtershow/words/TextColorPickerView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->j:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x41900000    # 18.0f

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    const/high16 p2, 0x41a80000    # 21.0f

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->a:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->c:I

    iput p2, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->d:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->e:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->f:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->g:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->h:Landroid/content/res/TypedArray;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->i:Lcom/android/gallery3d/filtershow/words/TextColorPickerView$a;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->b:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->h:Landroid/content/res/TypedArray;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f020002

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->h:Landroid/content/res/TypedArray;

    :cond_0
    return-void
.end method

.method private a(ILandroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->f:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->a:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->c:I

    mul-int/2addr p1, v2

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    div-int/lit8 p1, v2, 0x2

    add-int/2addr v1, p1

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->d:I

    div-int/lit8 v3, v0, 0x2

    add-int/2addr p1, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->a:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x6

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->g:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050090

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->g:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->g:Landroid/graphics/Paint;

    sget v3, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->j:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v1, v1

    int-to-float p1, p1

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->g:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, p1, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->h:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->f:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->a:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->c:I

    add-int v4, v2, v3

    iput v4, v1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->d:I

    add-int v5, v2, v4

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v1, v3, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v5, v4, 0x2

    add-int/2addr v2, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->a:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->g:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_1

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->g:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->h:Landroid/content/res/TypedArray;

    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v6, v1

    int-to-float v7, v2

    int-to-float v8, v3

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v0, -0x1

    if-ne v5, v9, :cond_0

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->g:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->b:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f050027

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->g:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->g:Landroid/graphics/Paint;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget v6, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->c:I

    add-int/2addr v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->e:I

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->a(ILandroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->i:Lcom/android/gallery3d/filtershow/words/TextColorPickerView$a;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->e:I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->h:Landroid/content/res/TypedArray;

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/filtershow/words/TextColorPickerView$a;->a(II)V

    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->h:Landroid/content/res/TypedArray;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->length()I

    move-result p3

    iget p4, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->a:I

    mul-int/lit8 v0, p4, 0x2

    sub-int/2addr p1, v0

    div-int/2addr p1, p3

    iput p1, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->c:I

    mul-int/lit8 p4, p4, 0x2

    sub-int/2addr p2, p4

    iput p2, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->d:I

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->h:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->c:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->e:I

    const/4 v2, 0x1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->e:I

    goto :goto_1

    :cond_0
    sub-int/2addr v0, v2

    if-le v1, v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_2
    return v2
.end method

.method public setCurrentIndex(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->e:I

    return-void
.end method

.method public setOnTextColorChangedListener(Lcom/android/gallery3d/filtershow/words/TextColorPickerView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->i:Lcom/android/gallery3d/filtershow/words/TextColorPickerView$a;

    return-void
.end method
