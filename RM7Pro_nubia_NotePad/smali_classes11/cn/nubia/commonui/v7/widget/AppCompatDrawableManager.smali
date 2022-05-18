.class public final Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$AvdcInflateDelegate;,
        Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$VdcInflateDelegate;,
        Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;,
        Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$InflateDelegate;
    }
.end annotation


# static fields
.field private static final COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

.field private static final COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

.field private static final COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

.field private static final COLOR_FILTER_CACHE:Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static INSTANCE:Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager; = null

.field private static final PLATFORM_VD_CLAZZ:Ljava/lang/String; = "android.graphics.drawable.VectorDrawable"

.field private static final SKIP_DRAWABLE_TAG:Ljava/lang/String; = "appcompat_skip_skip"

.field private static final TAG:Ljava/lang/String; = "AppCompatDrawableManager"

.field private static final TINT_CHECKABLE_BUTTON_LIST:[I

.field private static final TINT_COLOR_CONTROL_NORMAL:[I

.field private static final TINT_COLOR_CONTROL_STATE_LIST:[I


# instance fields
.field private mDelegates:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$InflateDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrawableCacheLock:Ljava/lang/Object;

.field private final mDrawableCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mHasCheckedVectorDrawableSetup:Z

.field private mKnownDrawableIdTags:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTintLists:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 104
    new-instance v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    invoke-direct {v0, v7}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;-><init>(I)V

    sput-object v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    .line 110
    new-array v0, v6, [I

    sget v1, Lcn/nubia/commonui/R$drawable;->abc_textfield_search_default_mtrl_alpha:I

    aput v1, v0, v3

    sget v1, Lcn/nubia/commonui/R$drawable;->abc_textfield_default_mtrl_alpha:I

    aput v1, v0, v4

    sget v1, Lcn/nubia/commonui/R$drawable;->abc_ab_share_pack_mtrl_alpha:I

    aput v1, v0, v5

    sput-object v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    .line 120
    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Lcn/nubia/commonui/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v1, v0, v3

    sget v1, Lcn/nubia/commonui/R$drawable;->abc_seekbar_tick_mark_material:I

    aput v1, v0, v4

    sget v1, Lcn/nubia/commonui/R$drawable;->abc_ic_menu_share_mtrl_alpha:I

    aput v1, v0, v5

    sget v1, Lcn/nubia/commonui/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v1, v0, v6

    const/4 v1, 0x4

    sget v2, Lcn/nubia/commonui/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcn/nubia/commonui/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I

    aput v2, v0, v1

    sget v1, Lcn/nubia/commonui/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I

    aput v1, v0, v7

    sput-object v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    .line 134
    const/16 v0, 0xa

    new-array v0, v0, [I

    sget v1, Lcn/nubia/commonui/R$drawable;->abc_textfield_activated_mtrl_alpha:I

    aput v1, v0, v3

    sget v1, Lcn/nubia/commonui/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I

    aput v1, v0, v4

    sget v1, Lcn/nubia/commonui/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    aput v1, v0, v5

    sget v1, Lcn/nubia/commonui/R$drawable;->abc_text_cursor_material:I

    aput v1, v0, v6

    const/4 v1, 0x4

    sget v2, Lcn/nubia/commonui/R$drawable;->abc_text_select_handle_left_mtrl_dark:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcn/nubia/commonui/R$drawable;->abc_text_select_handle_middle_mtrl_dark:I

    aput v2, v0, v1

    sget v1, Lcn/nubia/commonui/R$drawable;->abc_text_select_handle_right_mtrl_dark:I

    aput v1, v0, v7

    const/4 v1, 0x7

    sget v2, Lcn/nubia/commonui/R$drawable;->abc_text_select_handle_left_mtrl_light:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcn/nubia/commonui/R$drawable;->abc_text_select_handle_middle_mtrl_light:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcn/nubia/commonui/R$drawable;->abc_text_select_handle_right_mtrl_light:I

    aput v2, v0, v1

    sput-object v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    .line 151
    new-array v0, v6, [I

    sget v1, Lcn/nubia/commonui/R$drawable;->abc_popup_background_mtrl_mult:I

    aput v1, v0, v3

    sget v1, Lcn/nubia/commonui/R$drawable;->abc_cab_background_internal_bg:I

    aput v1, v0, v4

    sget v1, Lcn/nubia/commonui/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v1, v0, v5

    sput-object v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    .line 161
    new-array v0, v5, [I

    sget v1, Lcn/nubia/commonui/R$drawable;->abc_tab_indicator_material:I

    aput v1, v0, v3

    sget v1, Lcn/nubia/commonui/R$drawable;->abc_textfield_search_material:I

    aput v1, v0, v4

    sput-object v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    .line 171
    new-array v0, v5, [I

    sget v1, Lcn/nubia/commonui/R$drawable;->abc_btn_check_material:I

    aput v1, v0, v3

    sget v1, Lcn/nubia/commonui/R$drawable;->abc_btn_radio_material:I

    aput v1, v0, v4

    sput-object v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    .line 181
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    .line 786
    return-void
.end method

.method private addDelegate(Ljava/lang/String;Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$InflateDelegate;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "delegate"    # Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$InflateDelegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 493
    iget-object v0, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    if-nez v0, :cond_0

    .line 494
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    .line 496
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    return-void
.end method

.method private addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # J
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 417
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 418
    .local v1, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_1

    .line 419
    iget-object v3, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 420
    :try_start_0
    iget-object v2, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/LongSparseArray;

    .line 421
    .local v0, "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    if-nez v0, :cond_0

    .line 422
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    .end local v0    # "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 423
    .restart local v0    # "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    iget-object v2, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 426
    monitor-exit v3

    .line 427
    const/4 v2, 0x1

    .line 429
    .end local v0    # "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    :goto_0
    return v2

    .line 426
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 429
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "tintList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 572
    iget-object v1, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 573
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    .line 575
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/SparseArrayCompat;

    .line 576
    .local v0, "themeTints":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Landroid/content/res/ColorStateList;>;"
    if-nez v0, :cond_1

    .line 577
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    .end local v0    # "themeTints":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Landroid/content/res/ColorStateList;>;"
    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    .line 578
    .restart local v0    # "themeTints":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Landroid/content/res/ColorStateList;>;"
    iget-object v1, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/util/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 581
    return-void
.end method

.method private static arrayContains([II)Z
    .locals 4
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 506
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 507
    .local v0, "id":I
    if-ne v0, p1, :cond_1

    .line 508
    const/4 v1, 0x1

    .line 511
    .end local v0    # "id":I
    :cond_0
    return v1

    .line 506
    .restart local v0    # "id":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private checkVectorDrawableSetup(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 749
    iget-boolean v1, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    if-eqz v1, :cond_1

    .line 762
    :cond_0
    return-void

    .line 755
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    .line 756
    sget v1, Lcn/nubia/commonui/R$drawable;->abc_vector_test:I

    invoke-virtual {p0, p1, v1}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 757
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->isVectorDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 758
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    .line 759
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createBorderlessButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 590
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "baseColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x4

    .line 600
    new-array v4, v5, [[I

    .line 601
    .local v4, "states":[[I
    new-array v1, v5, [I

    .line 602
    .local v1, "colors":[I
    const/4 v3, 0x0

    .line 604
    .local v3, "i":I
    sget v5, Lcn/nubia/commonui/R$attr;->colorControlHighlight:I

    invoke-static {p1, v5}, Lcn/nubia/commonui/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 605
    .local v0, "colorControlHighlight":I
    sget v5, Lcn/nubia/commonui/R$attr;->colorButtonNormal:I

    invoke-static {p1, v5}, Lcn/nubia/commonui/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v2

    .line 608
    .local v2, "disabledColor":I
    sget-object v5, Lcn/nubia/commonui/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v5, v4, v3

    .line 609
    aput v2, v1, v3

    .line 610
    add-int/lit8 v3, v3, 0x1

    .line 612
    sget-object v5, Lcn/nubia/commonui/v7/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    aput-object v5, v4, v3

    .line 613
    invoke-static {v0, p2}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v5

    aput v5, v1, v3

    .line 614
    add-int/lit8 v3, v3, 0x1

    .line 616
    sget-object v5, Lcn/nubia/commonui/v7/widget/ThemeUtils;->FOCUSED_STATE_SET:[I

    aput-object v5, v4, v3

    .line 617
    invoke-static {v0, p2}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v5

    aput v5, v1, v3

    .line 618
    add-int/lit8 v3, v3, 0x1

    .line 621
    sget-object v5, Lcn/nubia/commonui/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v5, v4, v3

    .line 622
    aput p2, v1, v3

    .line 623
    add-int/lit8 v3, v3, 0x1

    .line 625
    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v4, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v5
.end method

.method private static createCacheKey(Landroid/util/TypedValue;)J
    .locals 4
    .param p0, "tv"    # Landroid/util/TypedValue;

    .prologue
    .line 226
    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 594
    sget v0, Lcn/nubia/commonui/R$attr;->colorAccent:I

    .line 595
    invoke-static {p1, v0}, Lcn/nubia/commonui/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 594
    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 584
    sget v0, Lcn/nubia/commonui/R$attr;->colorButtonNormal:I

    .line 585
    invoke-static {p1, v0}, Lcn/nubia/commonui/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 584
    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x1

    .line 231
    iget-object v5, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    if-nez v5, :cond_0

    .line 232
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    iput-object v5, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 234
    :cond_0
    iget-object v4, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 235
    .local v4, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2, v4, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 236
    invoke-static {v4}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v2

    .line 238
    .local v2, "key":J
    invoke-direct {p0, p1, v2, v3}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 239
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 258
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 245
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    sget v5, Lcn/nubia/commonui/R$drawable;->abc_cab_background_top_material:I

    if-ne p2, v5, :cond_2

    .line 246
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget v7, Lcn/nubia/commonui/R$drawable;->abc_cab_background_internal_bg:I

    .line 247
    invoke-virtual {p0, p1, v7}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v5, v6

    sget v6, Lcn/nubia/commonui/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    .line 248
    invoke-virtual {p0, p1, v6}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-direct {v0, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 252
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_2
    if-eqz v0, :cond_3

    .line 253
    iget v5, v4, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 255
    invoke-direct {p0, p1, v2, v3, v0}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    :cond_3
    move-object v1, v0

    .line 258
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private createSwitchThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x3

    .line 629
    new-array v2, v4, [[I

    .line 630
    .local v2, "states":[[I
    new-array v0, v4, [I

    .line 631
    .local v0, "colors":[I
    const/4 v1, 0x0

    .line 633
    .local v1, "i":I
    sget v4, Lcn/nubia/commonui/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v4}, Lcn/nubia/commonui/v7/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 636
    .local v3, "thumbColor":Landroid/content/res/ColorStateList;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 641
    sget-object v4, Lcn/nubia/commonui/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v4, v2, v1

    .line 642
    aget-object v4, v2, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    aput v4, v0, v1

    .line 643
    add-int/lit8 v1, v1, 0x1

    .line 645
    sget-object v4, Lcn/nubia/commonui/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v4, v2, v1

    .line 646
    sget v4, Lcn/nubia/commonui/R$attr;->colorControlActivated:I

    invoke-static {p1, v4}, Lcn/nubia/commonui/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    aput v4, v0, v1

    .line 647
    add-int/lit8 v1, v1, 0x1

    .line 650
    sget-object v4, Lcn/nubia/commonui/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v4, v2, v1

    .line 651
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    aput v4, v0, v1

    .line 652
    add-int/lit8 v1, v1, 0x1

    .line 671
    :goto_0
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v4

    .line 657
    :cond_0
    sget-object v4, Lcn/nubia/commonui/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v4, v2, v1

    .line 658
    sget v4, Lcn/nubia/commonui/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v4}, Lcn/nubia/commonui/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    aput v4, v0, v1

    .line 659
    add-int/lit8 v1, v1, 0x1

    .line 661
    sget-object v4, Lcn/nubia/commonui/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v4, v2, v1

    .line 662
    sget v4, Lcn/nubia/commonui/R$attr;->colorControlActivated:I

    invoke-static {p1, v4}, Lcn/nubia/commonui/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    aput v4, v0, v1

    .line 663
    add-int/lit8 v1, v1, 0x1

    .line 666
    sget-object v4, Lcn/nubia/commonui/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v4, v2, v1

    .line 667
    sget v4, Lcn/nubia/commonui/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v4}, Lcn/nubia/commonui/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    aput v4, v0, v1

    .line 668
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .locals 2
    .param p0, "tint"    # Landroid/content/res/ColorStateList;
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
    .param p2, "state"    # [I

    .prologue
    .line 721
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 722
    :cond_0
    const/4 v1, 0x0

    .line 725
    :goto_0
    return-object v1

    .line 724
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 725
    .local v0, "color":I
    invoke-static {v0, p1}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    goto :goto_0
.end method

.method public static get()Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->INSTANCE:Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;

    invoke-direct {v0}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;-><init>()V

    sput-object v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->INSTANCE:Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;

    .line 86
    sget-object v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->INSTANCE:Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;

    invoke-static {v0}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->installDefaultInflateDelegates(Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;)V

    .line 88
    :cond_0
    sget-object v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->INSTANCE:Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;

    return-object v0
.end method

.method private getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # J

    .prologue
    const/4 v3, 0x0

    .line 393
    iget-object v4, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    monitor-enter v4

    .line 394
    :try_start_0
    iget-object v5, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    .line 395
    invoke-virtual {v5, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/LongSparseArray;

    .line 396
    .local v0, "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    if-nez v0, :cond_0

    .line 397
    monitor-exit v4

    .line 412
    :goto_0
    return-object v3

    .line 400
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 401
    .local v2, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v2, :cond_2

    .line 403
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 404
    .local v1, "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_1

    .line 405
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    monitor-exit v4

    goto :goto_0

    .line 411
    .end local v0    # "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .end local v1    # "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v2    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 408
    .restart local v0    # "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v1    # "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v2    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    .line 411
    .end local v1    # "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2
    .param p0, "color"    # I
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 730
    sget-object v1, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    invoke-virtual {v1, p0, p1}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    .line 732
    .local v0, "filter":Landroid/graphics/PorterDuffColorFilter;
    if-nez v0, :cond_0

    .line 734
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .end local v0    # "filter":Landroid/graphics/PorterDuffColorFilter;
    invoke-direct {v0, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 735
    .restart local v0    # "filter":Landroid/graphics/PorterDuffColorFilter;
    sget-object v1, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    invoke-virtual {v1, p0, p1, v0}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    .line 738
    :cond_0
    return-object v0
.end method

.method private getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 563
    iget-object v2, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    if-eqz v2, :cond_0

    .line 564
    iget-object v2, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/SparseArrayCompat;

    .line 565
    .local v0, "tints":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Landroid/content/res/ColorStateList;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    .line 567
    .end local v0    # "tints":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Landroid/content/res/ColorStateList;>;"
    :cond_0
    return-object v1
.end method

.method static getTintMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .param p0, "resId"    # I

    .prologue
    .line 515
    const/4 v0, 0x0

    .line 517
    .local v0, "mode":Landroid/graphics/PorterDuff$Mode;
    sget v1, Lcn/nubia/commonui/R$drawable;->abc_switch_thumb_material:I

    if-ne p0, v1, :cond_0

    .line 518
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 521
    :cond_0
    return-object v0
.end method

.method private static installDefaultInflateDelegates(Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;)V
    .locals 2
    .param p0, "manager"    # Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 96
    const-string v0, "vector"

    new-instance v1, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$VdcInflateDelegate;

    invoke-direct {v1}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$VdcInflateDelegate;-><init>()V

    invoke-direct {p0, v0, v1}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$InflateDelegate;)V

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 99
    const-string v0, "animated-vector"

    new-instance v1, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$AvdcInflateDelegate;

    invoke-direct {v1}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$AvdcInflateDelegate;-><init>()V

    invoke-direct {p0, v0, v1}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$InflateDelegate;)V

    .line 102
    :cond_0
    return-void
.end method

.method private static isVectorDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 765
    instance-of v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    if-nez v0, :cond_0

    const-string v0, "android.graphics.drawable.VectorDrawable"

    .line 766
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 308
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v14}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_a

    .line 309
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v14, :cond_2

    .line 310
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/support/v4/util/SparseArrayCompat;

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 311
    .local v3, "cachedTagName":Ljava/lang/String;
    const-string v14, "appcompat_skip_skip"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    .line 312
    invoke-virtual {v14, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_3

    .line 319
    :cond_0
    const/4 v5, 0x0

    .line 389
    .end local v3    # "cachedTagName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v5

    .line 323
    :cond_2
    new-instance v14, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v14}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/support/v4/util/SparseArrayCompat;

    .line 326
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    if-nez v14, :cond_4

    .line 327
    new-instance v14, Landroid/util/TypedValue;

    invoke-direct {v14}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 329
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 330
    .local v12, "tv":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 331
    .local v10, "res":Landroid/content/res/Resources;
    const/4 v14, 0x1

    move/from16 v0, p2

    invoke-virtual {v10, v0, v12, v14}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 333
    invoke-static {v12}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v8

    .line 335
    .local v8, "key":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 336
    .local v5, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_1

    .line 345
    iget-object v14, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v14, :cond_7

    iget-object v14, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".xml"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 348
    :try_start_0
    move/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 349
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 351
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_5
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v14, 0x2

    if-eq v13, v14, :cond_6

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 355
    :cond_6
    const/4 v14, 0x2

    if-eq v13, v14, :cond_8

    .line 356
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v15, "No start tag found"

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "type":I
    :catch_0
    move-exception v6

    .line 378
    .local v6, "e":Ljava/lang/Exception;
    const-string v14, "AppCompatDrawableManager"

    const-string v15, "Exception while inflating drawable"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_1
    if-nez v5, :cond_1

    .line 384
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/support/v4/util/SparseArrayCompat;

    const-string v15, "appcompat_skip_skip"

    move/from16 v0, p2

    invoke-virtual {v14, v0, v15}, Landroid/support/v4/util/SparseArrayCompat;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 359
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "type":I
    :cond_8
    :try_start_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 361
    .local v11, "tagName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/support/v4/util/SparseArrayCompat;

    move/from16 v0, p2

    invoke-virtual {v14, v0, v11}, Landroid/support/v4/util/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v14, v11}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$InflateDelegate;

    .line 365
    .local v4, "delegate":Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$InflateDelegate;
    if-eqz v4, :cond_9

    .line 367
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    .line 366
    move-object/from16 v0, p1

    invoke-interface {v4, v0, v7, v2, v14}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$InflateDelegate;->createFromXmlInner(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 369
    :cond_9
    if-eqz v5, :cond_7

    .line 371
    iget v14, v12, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v5, v14}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 372
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9, v5}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v14

    if-eqz v14, :cond_7

    goto :goto_1

    .line 389
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "delegate":Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$InflateDelegate;
    .end local v5    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "key":J
    .end local v10    # "res":Landroid/content/res/Resources;
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "tv":Landroid/util/TypedValue;
    .end local v13    # "type":I
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private removeDelegate(Ljava/lang/String;Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$InflateDelegate;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "delegate"    # Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager$InflateDelegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 500
    iget-object v0, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 501
    iget-object v0, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    :cond_0
    return-void
.end method

.method private static setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 742
    invoke-static {p0}, Lcn/nubia/commonui/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 745
    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .end local p2    # "mode":Landroid/graphics/PorterDuff$Mode;
    :cond_1
    invoke-static {p1, p2}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 746
    return-void
.end method

.method private tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "failIfNotKnown"    # Z
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v8, 0x102000f

    const v7, 0x102000d

    const/high16 v5, 0x1020000

    .line 263
    invoke-virtual {p0, p1, p2}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 264
    .local v1, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_2

    .line 266
    invoke-static {p4}, Lcn/nubia/commonui/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 267
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 269
    :cond_0
    invoke-static {p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 270
    invoke-static {p4, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 273
    invoke-static {p2}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->getTintMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 274
    .local v2, "tintMode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v2, :cond_1

    .line 275
    invoke-static {p4, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 304
    .end local v2    # "tintMode":Landroid/graphics/PorterDuff$Mode;
    :cond_1
    :goto_0
    return-object p4

    .line 277
    :cond_2
    sget v4, Lcn/nubia/commonui/R$drawable;->abc_seekbar_track_material:I

    if-ne p2, v4, :cond_3

    move-object v0, p4

    .line 278
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 279
    .local v0, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$attr;->colorControlNormal:I

    .line 280
    invoke-static {p1, v5}, Lcn/nubia/commonui/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 279
    invoke-static {v4, v5, v6}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 281
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$attr;->colorControlNormal:I

    .line 282
    invoke-static {p1, v5}, Lcn/nubia/commonui/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 281
    invoke-static {v4, v5, v6}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 283
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$attr;->colorControlActivated:I

    .line 284
    invoke-static {p1, v5}, Lcn/nubia/commonui/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 283
    invoke-static {v4, v5, v6}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 285
    .end local v0    # "ld":Landroid/graphics/drawable/LayerDrawable;
    :cond_3
    sget v4, Lcn/nubia/commonui/R$drawable;->abc_ratingbar_material:I

    if-eq p2, v4, :cond_4

    sget v4, Lcn/nubia/commonui/R$drawable;->abc_ratingbar_indicator_material:I

    if-eq p2, v4, :cond_4

    sget v4, Lcn/nubia/commonui/R$drawable;->abc_ratingbar_small_material:I

    if-ne p2, v4, :cond_5

    :cond_4
    move-object v0, p4

    .line 288
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 289
    .restart local v0    # "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$attr;->colorControlNormal:I

    .line 290
    invoke-static {p1, v5}, Lcn/nubia/commonui/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 289
    invoke-static {v4, v5, v6}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 292
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$attr;->colorControlActivated:I

    .line 293
    invoke-static {p1, v5}, Lcn/nubia/commonui/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 292
    invoke-static {v4, v5, v6}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 294
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$attr;->colorControlActivated:I

    .line 295
    invoke-static {p1, v5}, Lcn/nubia/commonui/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 294
    invoke-static {v4, v5, v6}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 297
    .end local v0    # "ld":Landroid/graphics/drawable/LayerDrawable;
    :cond_5
    invoke-static {p1, p2, p4}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v3

    .line 298
    .local v3, "tinted":Z
    if-nez v3, :cond_1

    if-eqz p3, :cond_1

    .line 301
    const/4 p4, 0x0

    goto :goto_0
.end method

.method static tintDrawable(Landroid/graphics/drawable/Drawable;Lcn/nubia/commonui/v7/widget/TintInfo;[I)V
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tint"    # Lcn/nubia/commonui/v7/widget/TintInfo;
    .param p2, "state"    # [I

    .prologue
    .line 697
    invoke-static {p0}, Lcn/nubia/commonui/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 699
    const-string v0, "AppCompatDrawableManager"

    const-string v1, "Mutated drawable is not the same instance as the input."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    iget-boolean v0, p1, Lcn/nubia/commonui/v7/widget/TintInfo;->mHasTintList:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcn/nubia/commonui/v7/widget/TintInfo;->mHasTintMode:Z

    if-eqz v0, :cond_5

    .line 704
    :cond_2
    iget-boolean v0, p1, Lcn/nubia/commonui/v7/widget/TintInfo;->mHasTintList:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcn/nubia/commonui/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :goto_1
    iget-boolean v1, p1, Lcn/nubia/commonui/v7/widget/TintInfo;->mHasTintMode:Z

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcn/nubia/commonui/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    invoke-static {v0, v1, p2}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 712
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 715
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    .line 704
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    sget-object v1, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    .line 709
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_3
.end method

.method static tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 446
    sget-object v4, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 447
    .local v4, "tintMode":Landroid/graphics/PorterDuff$Mode;
    const/4 v3, 0x0

    .line 448
    .local v3, "colorAttrSet":Z
    const/4 v2, 0x0

    .line 449
    .local v2, "colorAttr":I
    const/4 v0, -0x1

    .line 451
    .local v0, "alpha":I
    sget-object v5, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    invoke-static {v5, p1}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 452
    sget v2, Lcn/nubia/commonui/R$attr;->colorControlNormal:I

    .line 453
    const/4 v3, 0x1

    .line 470
    :cond_0
    :goto_0
    if-eqz v3, :cond_7

    .line 471
    invoke-static {p2}, Lcn/nubia/commonui/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 472
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 475
    :cond_1
    invoke-static {p0, v2}, Lcn/nubia/commonui/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v1

    .line 476
    .local v1, "color":I
    invoke-static {v1, v4}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 478
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 479
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 487
    :cond_2
    const/4 v5, 0x1

    .line 489
    .end local v1    # "color":I
    :goto_1
    return v5

    .line 454
    :cond_3
    sget-object v5, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    invoke-static {v5, p1}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 455
    sget v2, Lcn/nubia/commonui/R$attr;->colorControlActivated:I

    .line 456
    const/4 v3, 0x1

    goto :goto_0

    .line 457
    :cond_4
    sget-object v5, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    invoke-static {v5, p1}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 458
    const v2, 0x1010031

    .line 459
    const/4 v3, 0x1

    .line 460
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 461
    :cond_5
    sget v5, Lcn/nubia/commonui/R$drawable;->abc_list_divider_mtrl_alpha:I

    if-ne p1, v5, :cond_6

    .line 462
    const v2, 0x1010030

    .line 463
    const/4 v3, 0x1

    .line 464
    const v5, 0x42233333    # 40.8f

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 465
    :cond_6
    sget v5, Lcn/nubia/commonui/R$drawable;->abc_dialog_material_background:I

    if-ne p1, v5, :cond_0

    .line 466
    const v2, 0x1010031

    .line 467
    const/4 v3, 0x1

    goto :goto_0

    .line 489
    :cond_7
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "failIfNotKnown"    # Z

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->checkVectorDrawableSetup(Landroid/content/Context;)V

    .line 196
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 197
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 198
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 200
    :cond_0
    if-nez v0, :cond_1

    .line 201
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 204
    :cond_1
    if-eqz v0, :cond_2

    .line 206
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 208
    :cond_2
    if-eqz v0, :cond_3

    .line 210
    invoke-static {v0}, Lcn/nubia/commonui/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    :cond_3
    return-object v0
.end method

.method getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 526
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 528
    .local v0, "tint":Landroid/content/res/ColorStateList;
    if-nez v0, :cond_1

    .line 530
    sget v1, Lcn/nubia/commonui/R$drawable;->abc_edit_text_material:I

    if-ne p2, v1, :cond_2

    .line 531
    sget v1, Lcn/nubia/commonui/R$color;->abc_tint_edittext:I

    invoke-static {p1, v1}, Lcn/nubia/commonui/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 555
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 556
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V

    .line 559
    :cond_1
    return-object v0

    .line 532
    :cond_2
    sget v1, Lcn/nubia/commonui/R$drawable;->abc_switch_track_mtrl_alpha:I

    if-ne p2, v1, :cond_3

    .line 533
    sget v1, Lcn/nubia/commonui/R$color;->abc_tint_switch_track:I

    invoke-static {p1, v1}, Lcn/nubia/commonui/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 534
    :cond_3
    sget v1, Lcn/nubia/commonui/R$drawable;->abc_switch_thumb_material:I

    if-ne p2, v1, :cond_4

    .line 535
    invoke-direct {p0, p1}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->createSwitchThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 536
    :cond_4
    sget v1, Lcn/nubia/commonui/R$drawable;->abc_btn_default_mtrl_shape:I

    if-ne p2, v1, :cond_5

    .line 537
    invoke-direct {p0, p1}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 538
    :cond_5
    sget v1, Lcn/nubia/commonui/R$drawable;->abc_btn_borderless_material:I

    if-ne p2, v1, :cond_6

    .line 539
    invoke-direct {p0, p1}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->createBorderlessButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 540
    :cond_6
    sget v1, Lcn/nubia/commonui/R$drawable;->abc_btn_colored_material:I

    if-ne p2, v1, :cond_7

    .line 541
    invoke-direct {p0, p1}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 542
    :cond_7
    sget v1, Lcn/nubia/commonui/R$drawable;->abc_spinner_mtrl_am_alpha:I

    if-eq p2, v1, :cond_8

    sget v1, Lcn/nubia/commonui/R$drawable;->abc_spinner_textfield_background_material:I

    if-ne p2, v1, :cond_9

    .line 544
    :cond_8
    sget v1, Lcn/nubia/commonui/R$color;->abc_tint_spinner:I

    invoke-static {p1, v1}, Lcn/nubia/commonui/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 545
    :cond_9
    sget-object v1, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    invoke-static {v1, p2}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 546
    sget v1, Lcn/nubia/commonui/R$attr;->colorControlNormal:I

    invoke-static {p1, v1}, Lcn/nubia/commonui/v7/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 547
    :cond_a
    sget-object v1, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    invoke-static {v1, p2}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 548
    sget v1, Lcn/nubia/commonui/R$color;->abc_tint_default:I

    invoke-static {p1, v1}, Lcn/nubia/commonui/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 549
    :cond_b
    sget-object v1, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    invoke-static {v1, p2}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 550
    sget v1, Lcn/nubia/commonui/R$color;->abc_tint_btn_checkable:I

    invoke-static {p1, v1}, Lcn/nubia/commonui/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 551
    :cond_c
    sget v1, Lcn/nubia/commonui/R$drawable;->abc_seekbar_thumb_material:I

    if-ne p2, v1, :cond_0

    .line 552
    sget v1, Lcn/nubia/commonui/R$color;->abc_tint_seek_thumb:I

    invoke-static {p1, v1}, Lcn/nubia/commonui/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 216
    iget-object v2, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 217
    :try_start_0
    iget-object v1, p0, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/LongSparseArray;

    .line 218
    .local v0, "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 222
    :cond_0
    monitor-exit v2

    .line 223
    return-void

    .line 222
    .end local v0    # "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onDrawableLoadedFromResources(Landroid/content/Context;Lcn/nubia/commonui/v7/widget/VectorEnabledTintResources;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resources"    # Lcn/nubia/commonui/v7/widget/VectorEnabledTintResources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 434
    invoke-direct {p0, p1, p3}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 435
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 436
    invoke-virtual {p2, p3}, Lcn/nubia/commonui/v7/widget/VectorEnabledTintResources;->superGetDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 438
    :cond_0
    if-eqz v0, :cond_1

    .line 439
    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v1, v0}, Lcn/nubia/commonui/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 441
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
