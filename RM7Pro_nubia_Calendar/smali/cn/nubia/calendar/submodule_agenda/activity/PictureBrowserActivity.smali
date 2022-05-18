.class public Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;
.super Landroid/app/Activity;
.source "PictureBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity$ImageSimpleGesture;
    }
.end annotation


# static fields
.field private static final DEFAULT:I = 0x0

.field private static DIALOG_TOP_MARGIN:I = 0x0

.field private static final DRAG:I = 0x1

.field private static final MIN_DISTANCE_TWO_POINTER:F = 10.0f

.field private static final ZOOM:I = 0x2

.field private static mDialogHeight:I

.field private static mDialogWidth:I


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCurrentMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEndDis:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageView:Landroid/widget/ImageView;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxScale:F

.field private mMinScale:F

.field private mMinTop:I

.field private mStartDis:F

.field private mStartPoint:Landroid/graphics/PointF;

.field private mX:I

.field private mY:I

.field private midPoint:Landroid/graphics/PointF;

.field private mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x8

    sput v0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->DIALOG_TOP_MARGIN:I

    .line 38
    const/16 v0, 0x1f4

    sput v0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mDialogWidth:I

    .line 39
    const/16 v0, 0x258

    sput v0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mDialogHeight:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mX:I

    .line 41
    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mY:I

    .line 48
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMaxScale:F

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mode:I

    .line 55
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mStartPoint:Landroid/graphics/PointF;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;

    .prologue
    .line 35
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMinScale:F

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;

    .prologue
    .line 35
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMaxScale:F

    return v0
.end method

.method private applyDialogParams()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 257
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 258
    .local v1, "window":Landroid/view/Window;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 260
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 261
    .local v0, "a":Landroid/view/WindowManager$LayoutParams;
    const v2, 0x3ecccccd    # 0.4f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 263
    sget v2, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mDialogWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 264
    sget v2, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mDialogHeight:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 269
    iget v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mX:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mY:I

    if-eq v2, v3, :cond_2

    .line 270
    :cond_0
    iget v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mX:I

    sget v3, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mDialogWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 271
    iget v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mY:I

    sget v3, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mDialogHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 272
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMinTop:I

    if-ge v2, v3, :cond_1

    .line 273
    iget v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMinTop:I

    sget v3, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->DIALOG_TOP_MARGIN:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 275
    :cond_1
    const/16 v2, 0x33

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 277
    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 278
    return-void
.end method

.method private minZoom()V
    .locals 4

    .prologue
    .line 174
    sget v0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mDialogWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sget v1, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mDialogHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 175
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 174
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMinScale:F

    .line 176
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMinScale:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMinScale:F

    iget v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMinScale:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 179
    :cond_0
    return-void
.end method

.method private moveToCenter(ZZ)V
    .locals 12
    .param p1, "horizontal"    # Z
    .param p2, "vertical"    # Z

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 189
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 190
    .local v3, "m":Landroid/graphics/Matrix;
    iget-object v8, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 191
    new-instance v4, Landroid/graphics/RectF;

    iget-object v8, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 192
    .local v4, "mRect":Landroid/graphics/RectF;
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 193
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 194
    .local v2, "height":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 195
    .local v7, "width":F
    const/4 v0, 0x0

    .line 196
    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 198
    .local v1, "deltaY":F
    if-eqz p2, :cond_0

    .line 200
    iget-object v8, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    sget v9, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mDialogHeight:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v5, v8

    .line 202
    .local v5, "minHeight":F
    cmpg-float v8, v2, v5

    if-gez v8, :cond_2

    .line 203
    sub-float v8, v5, v2

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 211
    .end local v5    # "minHeight":F
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 213
    iget-object v8, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v9, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mDialogWidth:I

    .line 214
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v6, v8

    .line 215
    .local v6, "minWidth":F
    cmpg-float v8, v7, v6

    if-gez v8, :cond_4

    .line 216
    sub-float v8, v6, v7

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 224
    .end local v6    # "minWidth":F
    :cond_1
    :goto_1
    iget-object v8, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 226
    return-void

    .line 204
    .restart local v5    # "minHeight":F
    :cond_2
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_3

    .line 205
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    goto :goto_0

    .line 206
    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    cmpg-float v8, v8, v5

    if-gez v8, :cond_0

    .line 207
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v5, v8

    goto :goto_0

    .line 217
    .end local v5    # "minHeight":F
    .restart local v6    # "minWidth":F
    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_5

    .line 218
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_1

    .line 219
    :cond_5
    iget v8, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v8, v8, v6

    if-gez v8, :cond_1

    .line 220
    iget v8, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v6, v8

    goto :goto_1
.end method


# virtual methods
.method public checkImageBounds()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 152
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 153
    .local v0, "p":[F
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 154
    iget v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 155
    aget v1, v0, v4

    iget v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMinScale:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 156
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMinScale:F

    iget v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMinScale:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 158
    :cond_0
    aget v1, v0, v4

    iget v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMaxScale:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 159
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 162
    :cond_1
    invoke-direct {p0, v5, v5}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->moveToCenter(ZZ)V

    .line 163
    return-void
.end method

.method public mid(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 247
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 248
    .local v0, "x":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 249
    .local v1, "y":F
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->midPoint:Landroid/graphics/PointF;

    div-float v3, v0, v4

    div-float v4, v1, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 250
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v2, 0x7f0300aa

    invoke-virtual {p0, v2}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mDialogWidth:I

    .line 72
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mDialogHeight:I

    .line 75
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v2}, Lcn/nubia/calendar/util/PermissionUtils;->checkDontHavePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 76
    invoke-static {p0, v2}, Lcn/nubia/calendar/util/PermissionUtils;->checkDontHavePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->finish()V

    .line 80
    :cond_1
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->applyDialogParams()V

    .line 82
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity$ImageSimpleGesture;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity$ImageSimpleGesture;-><init>(Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity$1;)V

    invoke-direct {v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 83
    const v2, 0x7f110242

    invoke-virtual {p0, v2}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mImageView:Landroid/widget/ImageView;

    .line 84
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "source_picture"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Lcn/nubia/calendar/util/PictureUtils;->getBitmapByPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 87
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 88
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMatrix:Landroid/graphics/Matrix;

    .line 89
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mCurrentMatrix:Landroid/graphics/Matrix;

    .line 90
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->midPoint:Landroid/graphics/PointF;

    .line 91
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 92
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 93
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->minZoom()V

    .line 94
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMinScale:F

    iget v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMinScale:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 95
    invoke-direct {p0, v5, v5}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->moveToCenter(ZZ)V

    .line 96
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 97
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x2

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v6, 0x1

    .line 105
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 106
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 142
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->checkImageBounds()V

    .line 143
    return v6

    .line 108
    :pswitch_1
    iput v6, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mode:I

    .line 109
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 110
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 113
    :pswitch_2
    iget v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mode:I

    if-ne v3, v6, :cond_1

    .line 114
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v0, v3, v4

    .line 115
    .local v0, "dx":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v1, v3, v4

    .line 116
    .local v1, "dy":F
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 117
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 118
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    :cond_1
    iget v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mode:I

    if-ne v3, v5, :cond_0

    .line 119
    invoke-virtual {p0, p2}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->spacing(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mEndDis:F

    .line 120
    iget v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mEndDis:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 121
    iget v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mEndDis:F

    iget v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mStartDis:F

    div-float v2, v3, v4

    .line 122
    .local v2, "scale":F
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 123
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->midPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->midPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    .line 130
    .end local v2    # "scale":F
    :pswitch_3
    invoke-virtual {p0, p2}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->spacing(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mStartDis:F

    .line 131
    iget v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mStartDis:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 132
    invoke-virtual {p0, p2}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mid(Landroid/view/MotionEvent;)V

    .line 133
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 134
    iput v5, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mode:I

    goto/16 :goto_0

    .line 138
    :pswitch_4
    const/4 v3, 0x0

    iput v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->mode:I

    goto/16 :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public spacing(Landroid/view/MotionEvent;)F
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 238
    .local v1, "dy":F
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float v0, v3, v4

    .line 239
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    sub-float v1, v3, v4

    .line 243
    :goto_0
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    return v3

    .line 240
    :catch_0
    move-exception v2

    .line 241
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
