.class public Lcn/nubia/camera/panorama/PanoPreviewView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/panorama/PanoPreviewView$a;
    }
.end annotation


# static fields
.field private static final c:[I


# instance fields
.field public final a:I

.field private b:I

.field private d:[Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/text/TextPaint;

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/animation/ValueAnimator;

.field private q:Landroid/text/StaticLayout;

.field private r:Landroid/text/StaticLayout;

.field private s:I

.field private t:Landroid/graphics/Bitmap;

.field private u:Landroid/graphics/Bitmap;

.field private v:Landroid/graphics/Rect;

.field private w:Landroid/graphics/Rect;

.field private x:Landroid/graphics/Rect;

.field private y:I

.field private z:Lcn/nubia/camera/panorama/PanoPreviewView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 42
    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/camera/panorama/PanoPreviewView;->c:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f08027e
        0x7f08027f
        0x7f080280
        0x7f08027d
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 39
    iput p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->b:I

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/drawable/Drawable;

    .line 48
    iput-object v1, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->d:[Landroid/graphics/drawable/Drawable;

    .line 53
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->k:Landroid/graphics/Paint;

    .line 54
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->l:Landroid/text/TextPaint;

    const/16 v1, 0x38

    .line 56
    invoke-static {v1, p2, p2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->m:I

    const/16 v1, 0x99

    const/16 v2, 0xff

    .line 57
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->n:I

    .line 72
    iput p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->s:I

    const/4 v1, 0x0

    .line 289
    iput-object v1, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->z:Lcn/nubia/camera/panorama/PanoPreviewView$a;

    .line 83
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/PanoPreviewView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07011f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->a:I

    .line 84
    invoke-static {}, Lcn/nubia/camera/ba/d;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->o:I

    goto :goto_0

    :cond_0
    const v2, 0x7f060064

    .line 87
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->o:I

    .line 89
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/PanoPreviewView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_1
    if-ge p2, v0, :cond_1

    .line 92
    iget-object v3, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->d:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcn/nubia/camera/panorama/PanoPreviewView;->c:[I

    aget v5, v5, p2

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 95
    :cond_1
    iget-object p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->k:Landroid/graphics/Paint;

    iget v0, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->m:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->l:Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 97
    iget-object p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->l:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 98
    iget-object p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->l:Landroid/text/TextPaint;

    int-to-float v0, v2

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 99
    iget-object p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->l:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/PanoPreviewView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 100
    iget-object p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->l:Landroid/text/TextPaint;

    const/high16 v0, 0x41c80000    # 25.0f

    const/high16 v1, -0x1000000

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v2, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 102
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/PanoPreviewView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700be

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    .line 103
    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result v0

    sub-int p2, v0, p2

    .line 104
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->l:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move v4, p2

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->q:Landroid/text/StaticLayout;

    .line 105
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f01a6

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->l:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->r:Landroid/text/StaticLayout;

    return-void
.end method

.method private a(II)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->z:Lcn/nubia/camera/panorama/PanoPreviewView$a;

    if-eqz v0, :cond_0

    .line 285
    invoke-interface {v0, p1, p2}, Lcn/nubia/camera/panorama/PanoPreviewView$a;->b(II)V

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;ILandroid/graphics/Rect;Landroid/text/TextPaint;)V
    .locals 7

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/16 v0, 0x5a

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p2, v0, :cond_0

    .line 177
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iget v0, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->a:I

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr p2, v0

    int-to-float p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    const/high16 p2, 0x42b40000    # 90.0f

    .line 165
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, p2, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 166
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    neg-int p2, p2

    div-int/lit8 p2, p2, 0x2

    iget v0, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->a:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_1
    const/high16 p2, 0x43340000    # 180.0f

    .line 169
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, p2, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 170
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    neg-int p2, p2

    div-int/lit8 p2, p2, 0x2

    iget v0, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->a:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_2
    const/high16 p2, 0x43870000    # 270.0f

    .line 173
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, p2, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 174
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    neg-int p2, p2

    div-int/lit8 p2, p2, 0x2

    iget v0, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->a:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 181
    :goto_0
    iget p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->n:I

    invoke-virtual {p4, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 182
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 183
    iget p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->s:I

    if-nez p2, :cond_3

    .line 184
    iget-object p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->q:Landroid/text/StaticLayout;

    invoke-virtual {p2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 186
    :cond_3
    iget-object p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->r:Landroid/text/StaticLayout;

    invoke-virtual {p2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 189
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 190
    iget p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->o:I

    invoke-virtual {p4, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 191
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-le p2, v0, :cond_4

    const/4 v2, 0x0

    .line 192
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    int-to-float v3, p2

    iget p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->e:I

    int-to-float v4, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    int-to-float v5, p2

    move-object v1, p1

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 194
    :cond_4
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float v1, p2

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float v3, p2

    iget p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->f:I

    int-to-float v4, p2

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_2
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->x:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 242
    invoke-virtual {p1, p3, v0, p2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 243
    iget-object p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->w:Landroid/graphics/Rect;

    if-eqz p2, :cond_0

    .line 244
    iget-object p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->d:[Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->b:I

    aget-object p2, p2, p3

    const/16 p3, 0xc8

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 245
    iget-object p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->d:[Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->b:I

    aget-object p2, p2, p3

    iget-object p3, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->w:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 246
    iget-object p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->d:[Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->b:I

    aget-object p2, p2, p3

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Bitmap;I)V
    .locals 8

    .line 215
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 218
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 219
    iget v0, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->y:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->i:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->j:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 220
    iget-object v0, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->v:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 223
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 224
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 225
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    .line 226
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 227
    div-int/lit8 v3, v3, 0x2

    sub-int v4, v0, v3

    int-to-float v5, v4

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    const/4 v6, 0x0

    invoke-virtual {p1, p3, v5, p2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 228
    iget-object p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->d:[Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x0

    aget-object p2, p2, p3

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 229
    iget-object p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->d:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    aget-object p2, p2, v5

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 230
    iget-object p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->d:[Landroid/graphics/drawable/Drawable;

    aget-object p2, p2, p3

    sub-int p4, v4, v2

    div-int/lit8 v6, v2, 0x2

    sub-int/2addr p4, v6

    sub-int v7, v1, v6

    sub-int/2addr v4, v6

    add-int/2addr v1, v6

    invoke-virtual {p2, p4, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 231
    iget-object p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->d:[Landroid/graphics/drawable/Drawable;

    aget-object p2, p2, v5

    add-int/2addr v0, v3

    add-int p4, v0, v6

    add-int/2addr v0, v2

    add-int/2addr v0, v6

    invoke-virtual {p2, p4, v7, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 232
    iget-object p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->d:[Landroid/graphics/drawable/Drawable;

    aget-object p2, p2, p3

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 233
    iget-object p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->d:[Landroid/graphics/drawable/Drawable;

    aget-object p2, p2, v5

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 234
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 109
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/PanoPreviewView;->b()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 110
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->p:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    .line 111
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 112
    iget-object v1, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->p:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 113
    iget-object v1, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 114
    iget-object v0, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xc8
    .end array-data
.end method

.method public a(Landroid/graphics/Bitmap;III)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->t:Landroid/graphics/Bitmap;

    .line 252
    iput p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->s:I

    .line 253
    iput p3, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->y:I

    .line 254
    iput p4, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->b:I

    .line 255
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/PanoPreviewView;->postInvalidate()V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;IIILandroid/graphics/Rect;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->u:Landroid/graphics/Bitmap;

    .line 260
    iput p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->s:I

    .line 261
    iput-object p5, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->w:Landroid/graphics/Rect;

    .line 262
    iput p3, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->y:I

    .line 263
    iput p4, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->b:I

    .line 264
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/PanoPreviewView;->postInvalidate()V

    return-void
.end method

.method public a(Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIII)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->v:Landroid/graphics/Rect;

    .line 274
    iput-object p2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->x:Landroid/graphics/Rect;

    .line 275
    iput p3, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->i:I

    .line 276
    iput p4, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->j:I

    .line 277
    iput p7, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->g:I

    .line 278
    iput p8, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->h:I

    .line 279
    iput p5, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->e:I

    .line 280
    iput p6, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->f:I

    return-void
.end method

.method public b()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->p:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->p:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x2

    .line 268
    iput v0, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->s:I

    .line 269
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/PanoPreviewView;->postInvalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 137
    iget v0, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->g:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->h:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->e:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->f:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 146
    iget-object v1, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->p:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 148
    :cond_1
    iget v1, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->y:I

    iget-object v2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->x:Landroid/graphics/Rect;

    iget-object v3, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->l:Landroid/text/TextPaint;

    invoke-direct {p0, p1, v1, v2, v3}, Lcn/nubia/camera/panorama/PanoPreviewView;->a(Landroid/graphics/Canvas;ILandroid/graphics/Rect;Landroid/text/TextPaint;)V

    .line 149
    iget v1, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->s:I

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    goto :goto_0

    .line 154
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->x:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->u:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/camera/panorama/PanoPreviewView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 151
    :cond_3
    iget-object v1, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->v:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->t:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v1, v2, v0}, Lcn/nubia/camera/panorama/PanoPreviewView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Bitmap;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 126
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 127
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/PanoPreviewView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "PanoPreviewView"

    const-string p2, "orientation landscape, return;"

    .line 128
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 132
    invoke-direct {p0, p4, p5}, Lcn/nubia/camera/panorama/PanoPreviewView;->a(II)V

    return-void
.end method

.method public setListener(Lcn/nubia/camera/panorama/PanoPreviewView$a;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcn/nubia/camera/panorama/PanoPreviewView;->z:Lcn/nubia/camera/panorama/PanoPreviewView$a;

    return-void
.end method
