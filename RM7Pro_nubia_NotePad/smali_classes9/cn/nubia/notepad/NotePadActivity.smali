.class public Lcn/nubia/notepad/NotePadActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "NotePadActivity.java"


# instance fields
.field protected mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field protected mDisplayRoundedImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field protected mExecutor:Ljava/util/concurrent/ExecutorService;

.field protected mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

.field private mSharePreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/notepad/NotePadActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/notepad/NotePadActivity;->mSharePreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private adapterWaterDropScreen()V
    .locals 4

    .prologue
    .line 63
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 64
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 65
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 68
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 69
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 72
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method private checkCtaAndPermissions()V
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lcn/nubia/notepad/utils/CtaPermissionUtils;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/utils/CtaPermissionUtils;-><init>(Landroid/app/Activity;)V

    .line 76
    .local v0, "ctaPermissionUtils":Lcn/nubia/notepad/utils/CtaPermissionUtils;
    const-string v1, "all"

    new-instance v2, Lcn/nubia/notepad/NotePadActivity$1;

    invoke-direct {v2, p0}, Lcn/nubia/notepad/NotePadActivity$1;-><init>(Lcn/nubia/notepad/NotePadActivity;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/utils/CtaPermissionUtils;->firstShowCtaWarningRequestPermissions(Ljava/lang/String;Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 39
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadActivity;->adapterWaterDropScreen()V

    .line 42
    invoke-static {}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->getInstance()Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/NotePadActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    .line 43
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/NotePadActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 45
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 47
    .local v0, "cornerRadiusPixels":I
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 48
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    invoke-direct {v2, v0}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    .line 49
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 50
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 51
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/NotePadActivity;->mDisplayRoundedImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 54
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 55
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 56
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 57
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/NotePadActivity;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 58
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/NotePadActivity;->mSharePreferences:Landroid/content/SharedPreferences;

    .line 59
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadActivity;->checkCtaAndPermissions()V

    .line 60
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onDestroy()V

    .line 97
    iget-object v0, p0, Lcn/nubia/notepad/NotePadActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcn/nubia/notepad/NotePadActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 101
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 105
    invoke-static {p0}, Lcn/nubia/notepad/engine/statistic/MobclickAgentUtil;->onPause(Landroid/content/Context;)V

    .line 106
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onPause()V

    .line 107
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 90
    invoke-static {p0}, Lcn/nubia/notepad/engine/statistic/MobclickAgentUtil;->onResume(Landroid/content/Context;)V

    .line 91
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onResume()V

    .line 92
    return-void
.end method
