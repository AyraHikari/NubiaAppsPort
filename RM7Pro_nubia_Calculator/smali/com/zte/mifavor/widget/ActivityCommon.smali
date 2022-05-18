.class public Lcom/zte/mifavor/widget/ActivityCommon;
.super Ljava/lang/Object;
.source "ActivityCommon.java"

# interfaces
.implements Lcom/zte/mifavor/widget/MfvActivity;


# static fields
.field private static final BRIGHTNESS_THRESHHOLD:I = 0xbe

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ActivityCommon"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mIsMifavorStatusBar:Z

.field private mNavBarDividerColor:I

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private mStatusBarColorInTheme:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mIsMifavorStatusBar:Z

    .line 43
    new-instance v0, Lcom/zte/mifavor/widget/ActivityCommon$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/ActivityCommon$1;-><init>(Lcom/zte/mifavor/widget/ActivityCommon;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 58
    iput-object p1, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    .line 59
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityCommon;->setLayoutController()V

    .line 60
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ActivityCommon;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/ActivityCommon;)Landroid/app/Activity;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/ActivityCommon;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ActivityCommon;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/ActivityCommon;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/ActivityCommon;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ActivityCommon;->setNavBarDivider()V

    return-void
.end method

.method private generateNavBarDividerDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$dimen;->mfvc_line_small_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 313
    iget-object v1, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    move v1, v0

    :goto_0
    move v0, v3

    goto :goto_1

    .line 322
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v0, v1, v0

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 325
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    move v4, v1

    move v1, p1

    move p1, v4

    goto :goto_1

    .line 319
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    move v1, p1

    move p1, v0

    goto :goto_0

    .line 337
    :goto_1
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget p0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mNavBarDividerColor:I

    invoke-direct {v2, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 338
    invoke-virtual {v2, v0, v3, p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object v2
.end method

.method private init()V
    .locals 6

    .line 64
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x1010451

    aput v3, v1, v2

    sget v3, Lcom/zte/extres/R$attr;->mifavorStatusBar:I

    const/4 v4, 0x1

    aput v3, v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mStatusBarColorInTheme:I

    .line 67
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mIsMifavorStatusBar:Z

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mIsMifavorStatusBar:Z

    const/16 v1, 0x17

    if-eqz v0, :cond_2

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/zte/extres/R$color;->statusbar_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/zte/extres/R$color;->statusbar_color:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    .line 77
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init statusBarColor: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/zte/mifavor/widget/ActivityCommon;->log(Ljava/lang/String;)V

    .line 78
    iget v3, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mStatusBarColorInTheme:I

    if-ne v0, v3, :cond_1

    move v2, v4

    :cond_1
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mIsMifavorStatusBar:Z

    .line 81
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_3

    .line 82
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$color;->mfv_common_sk_divider_line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mNavBarDividerColor:I

    goto :goto_1

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/zte/extres/R$color;->mfv_common_sk_divider_line:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mNavBarDividerColor:I

    :goto_1
    return-void
.end method

.method private isNight(Landroid/content/Context;)Z
    .locals 2

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 354
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "night: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ActivityCommon;->log(Ljava/lang/String;)V

    return p1
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private setNavBarDivider()V
    .locals 6

    .line 280
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 282
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ActivityCommon;->generateNavBarDividerDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 292
    :cond_1
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 293
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 297
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 298
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 299
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 300
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 301
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 302
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 304
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v1, p0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2
    :goto_0
    const-string v0, "navBar is not visible"

    .line 283
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ActivityCommon;->log(Ljava/lang/String;)V

    return-void
.end method

.method private setNavUpBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 164
    iget-object p1, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "acb == null"

    .line 166
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ActivityCommon;->log(Ljava/lang/String;)V

    return-void

    .line 173
    :cond_0
    :try_start_0
    instance-of v0, p1, Lcom/android/internal/app/WindowDecorActionBar;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mDecorToolbar"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 177
    :cond_1
    instance-of v0, p1, Lcom/android/internal/app/ToolbarActionBar;

    if-eqz v0, :cond_3

    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mDecorToolbar"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 187
    :goto_0
    instance-of v0, p1, Lcom/android/internal/widget/ToolbarWidgetWrapper;

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mToolbar"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 190
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Toolbar;

    goto :goto_1

    .line 192
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown decorToolbar type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ActivityCommon;->log(Ljava/lang/String;)V

    return-void

    .line 182
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown actionbar type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ActivityCommon;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Failed to set Nav up background."

    .line 200
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ActivityCommon;->log(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private updateNavBarForeColor()V
    .locals 5

    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ActivityCommon;->isNight(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/zte/extres/R$color;->mfv_common_sk_bg:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    .line 255
    invoke-static {v0}, Lcom/zte/mifavor/widget/Utils;->getBrightness(I)I

    move-result v1

    const/16 v2, 0x20

    .line 257
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_2

    const/16 v2, 0x10

    .line 260
    :cond_2
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0xbe

    if-lt v1, v4, :cond_3

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NavBar background is light color:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ActivityCommon;->log(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    or-int/2addr p0, v2

    .line 264
    invoke-virtual {v3, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 267
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NavBar background is dark color:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ActivityCommon;->log(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    not-int v0, v2

    and-int/2addr p0, v0

    .line 269
    invoke-virtual {v3, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateStatusBarForeColor()V
    .locals 4

    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ActivityCommon;->isNight(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 213
    :cond_1
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mIsMifavorStatusBar:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mStatusBarColorInTheme:I

    iget-object v1, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    .line 214
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getStatusBarColor()I

    move-result v1

    if-eq v0, v1, :cond_2

    goto :goto_2

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/zte/extres/R$drawable;->statusbar_bg:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 223
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_3

    .line 224
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 225
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-static {v1}, Lcom/zte/mifavor/widget/Utils;->getBrightness(I)I

    move-result v1

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatusBar background color drawable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ActivityCommon;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    .line 230
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$drawable;->statusbar_bg:I

    .line 229
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/mifavor/widget/Utils;->getBrightness(Landroid/graphics/Bitmap;)I

    move-result v1

    const-string v0, "StatusBar background other drawable:"

    .line 231
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ActivityCommon;->log(Ljava/lang/String;)V

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0xbe

    if-lt v1, v2, :cond_4

    const-string v1, "StatusBar background is light color"

    .line 236
    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/ActivityCommon;->log(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    or-int/lit16 p0, p0, 0x2000

    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    :cond_4
    const-string v1, "StatusBar background is dark color"

    .line 239
    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/ActivityCommon;->log(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    and-int/lit16 p0, p0, -0x2001

    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_1
    return-void

    .line 215
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsMifavorStatusBar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mIsMifavorStatusBar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ActivityCommon;->log(Ljava/lang/String;)V

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStatusBarColorInTheme:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mStatusBarColorInTheme:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ActivityCommon;->log(Ljava/lang/String;)V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStatusBarColor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getStatusBarColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ActivityCommon;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getFromDecor()Landroid/view/View;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/zte/extres/R$drawable;->statusbar_bg:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ActivityCommon;->setStatusBackground(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-string v0, "customStatusBarColor"

    .line 154
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ActivityCommon;->log(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ActivityCommon;->updateStatusBarForeColor()V

    .line 156
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ActivityCommon;->updateNavBarForeColor()V

    .line 159
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/zte/extres/R$drawable;->image_button_ripple_bg:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ActivityCommon;->setNavUpBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 347
    iput-object v1, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 349
    :cond_0
    iput-object v1, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setLayoutController()V
    .locals 6

    .line 128
    sget v0, Lcom/zte/extres/R$style;->Theme_ZTE_Light:I

    iget-object v1, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getThemeResId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/zte/extres/R$anim;->item_anim_commoncontrols:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "action_bar_container"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 137
    iget-object p0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz v1, :cond_1

    .line 139
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eqz p0, :cond_1

    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 142
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 143
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    :cond_1
    return-void
.end method

.method public setStatusBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 90
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mIsMifavorStatusBar:Z

    if-nez v0, :cond_0

    const-string p1, "customed statusbar Bg."

    .line 91
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ActivityCommon;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 97
    :cond_1
    iput-object p1, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 99
    iget-object p1, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v0, 0x102002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "statusBar not found"

    .line 102
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ActivityCommon;->log(Ljava/lang/String;)V

    return-void

    .line 106
    :cond_2
    iget v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mStatusBarColorInTheme:I

    iget-object v1, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getStatusBarColor()I

    move-result v1

    if-eq v0, v1, :cond_3

    const/4 p1, 0x0

    .line 107
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mIsMifavorStatusBar:Z

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "app custom status bg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ActivityCommon;->log(Ljava/lang/String;)V

    return-void

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_4

    .line 114
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 115
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "statusBar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mActivity:Landroid/app/Activity;

    .line 118
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getStatusBarColor()I

    move-result v2

    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ActivityCommon;->log(Ljava/lang/String;)V

    .line 123
    :cond_4
    iget-object p0, p0, Lcom/zte/mifavor/widget/ActivityCommon;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 124
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
