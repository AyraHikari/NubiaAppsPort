.class public final Lcom/google/zxing/view/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0xaL

.field private static final CORNER_RECT_HEIGHT:I = 0x28

.field private static final CORNER_RECT_WIDTH:I = 0x8

.field private static final OPAQUE:I = 0xff

.field private static final SCANNER_ALPHA:[I

.field private static final SCANNER_LINE_HEIGHT:I = 0xa

.field private static final SCANNER_LINE_MOVE_DISTANCE:I = 0x5

.field public static scannerEnd:I

.field public static scannerStart:I


# instance fields
.field private final cornerColor:I

.field private dstRectF:Landroid/graphics/RectF;

.field private final frameColor:I

.field private final labelTextColor:I

.field private final labelTextSize:F

.field private final labelText_1:Ljava/lang/String;

.field private final labelText_2:Ljava/lang/String;

.field private final labelText_3:Ljava/lang/String;

.field private final labelText_4:Ljava/lang/String;

.field private final laserBitmap:Landroid/graphics/Bitmap;

.field private final laserColor:I

.field private lastPossibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final maskColor:I

.field private final paint:Landroid/graphics/Paint;

.field private possibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private final resultColor:I

.field private final resultPointColor:I

.field private scannerAlpha:I

.field private srcRectF:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/view/ViewfinderView;->SCANNER_ALPHA:[I

    .line 53
    sput v1, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    .line 54
    sput v1, Lcom/google/zxing/view/ViewfinderView;->scannerEnd:I

    return-void

    .line 30
    nop

    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v2, 0xff00

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->srcRectF:Landroid/graphics/Rect;

    .line 56
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->dstRectF:Landroid/graphics/RectF;

    .line 62
    sget-object v1, Lcn/nubia/touping/R$styleable;->ViewfinderView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/view/ViewfinderView;->laserColor:I

    .line 64
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/view/ViewfinderView;->cornerColor:I

    .line 65
    const/4 v1, 0x2

    const v2, 0xffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/view/ViewfinderView;->frameColor:I

    .line 66
    const/4 v1, 0x4

    const v2, -0x3f000100    # -7.999878f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/view/ViewfinderView;->resultPointColor:I

    .line 67
    const/4 v1, 0x3

    const/high16 v2, 0x60000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/view/ViewfinderView;->maskColor:I

    .line 68
    const/high16 v1, -0x50000000

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/view/ViewfinderView;->resultColor:I

    .line 69
    const/4 v1, 0x6

    const v2, -0x6f000001

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/view/ViewfinderView;->labelTextColor:I

    .line 70
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->labelText_1:Ljava/lang/String;

    .line 71
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->labelText_2:Ljava/lang/String;

    .line 72
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->labelText_3:Ljava/lang/String;

    .line 73
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->labelText_4:Ljava/lang/String;

    .line 74
    const/16 v1, 0xb

    const/high16 v2, 0x42100000    # 36.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/zxing/view/ViewfinderView;->labelTextSize:F

    .line 75
    invoke-virtual {p0}, Lcom/google/zxing/view/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b0

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->laserBitmap:Landroid/graphics/Bitmap;

    .line 76
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 77
    iget-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iput v3, p0, Lcom/google/zxing/view/ViewfinderView;->scannerAlpha:I

    .line 79
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 80
    return-void
.end method

.method private drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/zxing/view/ViewfinderView;->cornerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0xc

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0xc

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x3c

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 157
    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0xc

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x3c

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 158
    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0xc

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0xc

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x3c

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 159
    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x3c

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0xc

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 160
    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0xc

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x3c

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0xc

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 161
    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0xc

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x3c

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 162
    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x3c

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0xc

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 163
    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x3c

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0xc

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0xc

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 164
    return-void
.end method

.method private drawExterior(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "frame"    # Landroid/graphics/Rect;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v2, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/zxing/view/ViewfinderView;->resultColor:I

    :goto_0
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    int-to-float v3, p3

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 203
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 204
    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    int-to-float v5, p3

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v6, v0

    iget-object v7, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 205
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    int-to-float v3, p3

    int-to-float v4, p4

    iget-object v5, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 206
    return-void

    .line 201
    :cond_0
    iget v0, p0, Lcom/google/zxing/view/ViewfinderView;->maskColor:I

    goto :goto_0
.end method

.method private drawFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/zxing/view/ViewfinderView;->frameColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 195
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 196
    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 197
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 198
    return-void
.end method

.method private drawLaserScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 167
    sget v0, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    sget v1, Lcom/google/zxing/view/ViewfinderView;->scannerEnd:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->laserBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    if-lt v0, v1, :cond_0

    .line 168
    sget v0, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    add-int/lit8 v0, v0, -0x5

    sput v0, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    .line 173
    :goto_0
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    sget v1, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->laserBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 174
    iget-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->srcRectF:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->laserBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sget v3, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 175
    iget-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->dstRectF:Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sget v2, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 176
    iget-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->laserBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->srcRectF:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/google/zxing/view/ViewfinderView;->dstRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 184
    :goto_1
    return-void

    .line 170
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    sput v0, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    goto :goto_0

    .line 177
    :cond_1
    sget v0, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    sget v1, Lcom/google/zxing/view/ViewfinderView;->scannerEnd:I

    if-ge v0, v1, :cond_2

    .line 178
    iget-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->srcRectF:Landroid/graphics/Rect;

    sget v1, Lcom/google/zxing/view/ViewfinderView;->scannerEnd:I

    sget v2, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/zxing/view/ViewfinderView;->laserBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/view/ViewfinderView;->laserBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 179
    iget-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->dstRectF:Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sget v4, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    iget-object v5, p0, Lcom/google/zxing/view/ViewfinderView;->laserBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 180
    iget-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->laserBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->srcRectF:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/google/zxing/view/ViewfinderView;->dstRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->laserBitmap:Landroid/graphics/Bitmap;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sget v2, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private drawTextInfo(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 139
    iget-object v4, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/google/zxing/view/ViewfinderView;->labelTextColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object v4, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/google/zxing/view/ViewfinderView;->labelTextSize:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 141
    iget-object v4, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 142
    iget-object v4, p0, Lcom/google/zxing/view/ViewfinderView;->labelText_1:Ljava/lang/String;

    iget v5, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v6, v6, 0x78

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 143
    iget-object v4, p0, Lcom/google/zxing/view/ViewfinderView;->labelText_2:Ljava/lang/String;

    iget v5, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v6, v6, 0xaa

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "i":I
    iget-object v4, p0, Lcom/google/zxing/view/ViewfinderView;->labelText_3:Ljava/lang/String;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v5, v4

    .line 146
    .local v2, "line":Ljava/lang/String;
    iget v7, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v8, v8, 0xdc

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    mul-int/lit8 v9, v1, 0x32

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 145
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 149
    .end local v2    # "line":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/google/zxing/view/ViewfinderView;->labelText_4:Ljava/lang/String;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v2, v4, v3

    .line 150
    .restart local v2    # "line":Ljava/lang/String;
    iget v6, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v7, v7, 0x10e

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    mul-int/lit8 v8, v1, 0x32

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 149
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 152
    .end local v2    # "line":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/google/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 215
    invoke-virtual {p0}, Lcom/google/zxing/view/ViewfinderView;->invalidate()V

    .line 216
    return-void
.end method

.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 210
    invoke-virtual {p0}, Lcom/google/zxing/view/ViewfinderView;->invalidate()V

    .line 211
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 84
    invoke-static {}, Lcom/google/zxing/camera/CameraManager;->get()Lcom/google/zxing/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/camera/CameraManager;->getFraminRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 85
    .local v0, "frame":Landroid/graphics/Rect;
    if-eqz v0, :cond_2

    .line 86
    sget v1, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    if-eqz v1, :cond_0

    sget v1, Lcom/google/zxing/view/ViewfinderView;->scannerEnd:I

    if-nez v1, :cond_1

    .line 87
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sput v1, Lcom/google/zxing/view/ViewfinderView;->scannerStart:I

    .line 88
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sput v1, Lcom/google/zxing/view/ViewfinderView;->scannerEnd:I

    .line 91
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    .line 92
    .local v9, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    .line 93
    .local v8, "height":I
    invoke-direct {p0, p1, v0, v9, v8}, Lcom/google/zxing/view/ViewfinderView;->drawExterior(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    .line 94
    iget-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 95
    iget-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 96
    iget-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 136
    .end local v8    # "height":I
    .end local v9    # "width":I
    :cond_2
    :goto_0
    return-void

    .line 98
    .restart local v8    # "height":I
    .restart local v9    # "width":I
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/google/zxing/view/ViewfinderView;->drawFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/google/zxing/view/ViewfinderView;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/google/zxing/view/ViewfinderView;->drawTextInfo(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/google/zxing/view/ViewfinderView;->drawLaserScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 132
    const-wide/16 v2, 0xa

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/zxing/view/ViewfinderView;->postInvalidateDelayed(JIIII)V

    goto :goto_0
.end method

.method public shadeColor(I)I
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "hax":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "20"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "result":Ljava/lang/String;
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method
