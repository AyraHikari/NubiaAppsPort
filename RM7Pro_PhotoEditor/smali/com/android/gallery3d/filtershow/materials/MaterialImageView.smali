.class public Lcom/android/gallery3d/filtershow/materials/MaterialImageView;
.super Landroid/widget/ImageView;
.source ""


# static fields
.field public static final n:I


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v0

    sput v0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->n:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->d:Z

    iput-boolean p2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->e:Z

    iput p2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->f:I

    iput p2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->g:I

    iput p2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->h:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->l:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->m:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060088

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->f:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060089

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->g:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f050057

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->h:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f050059

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->i:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f05005a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->j:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f050058

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->k:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0e0070

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->l:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0e0072

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->c:Ljava/lang/String;

    return-void
.end method

.method public getCategoryType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMaterialType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->l:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->f:I

    div-int/lit8 v5, v4, 0x4

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v3, v5

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    div-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v4, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->h:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->e:Z

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->m:Ljava/lang/String;

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->g:I

    sub-int/2addr v2, v5

    iput v2, v4, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->i:I

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->e:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->k:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->j:I

    :goto_0
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget v2, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->n:I

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    sub-int/2addr v5, v2

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v5, v5

    invoke-virtual {p1, v0, v2, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->d:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->g:I

    div-int/lit8 v0, v0, 0x2

    iget v2, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    div-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    iget v4, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->j:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v2

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public setDownloadState(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->e:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->e:Z

    :goto_0
    return-void
.end method

.method public setNewMaterial(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->d:Z

    return-void
.end method
