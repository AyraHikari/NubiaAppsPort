.class public final Lcn/nubia/commonui/actionbar/internal/widget/TintManager;
.super Ljava/lang/Object;
.source "TintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/internal/widget/TintManager$a;
    }
.end annotation


# static fields
.field private static final COLOR_FILTER_CACHE:Lcn/nubia/commonui/actionbar/internal/widget/TintManager$a;

.field private static final CONTAINERS_WITH_TINT_CHILDREN:[I

.field private static final DEBUG:Z = false

.field static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field static final SHOULD_BE_USED:Z

.field private static final TAG:Ljava/lang/String; = "NubiaWidget"

.field private static final TINT_COLOR_BACKGROUND_MULTIPLY:[I

.field private static final TINT_COLOR_CONTROL_ACTIVATED:[I

.field private static final TINT_COLOR_CONTROL_NORMAL:[I

.field private static final TINT_COLOR_CONTROL_STATE_LIST:[I


# instance fields
.field private final mColorStateLists:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDefaultColorStateList:Landroid/content/res/ColorStateList;

.field private final mResources:Landroid/content/res/Resources;

.field private final mTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->SHOULD_BE_USED:Z

    .line 49
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 51
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager$a;

    const/4 v3, 0x6

    invoke-direct {v0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager$a;-><init>(I)V

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->COLOR_FILTER_CACHE:Lcn/nubia/commonui/actionbar/internal/widget/TintManager$a;

    .line 57
    const/16 v0, 0xf

    new-array v0, v0, [I

    sget v3, Lcn/nubia/commonui/R$drawable;->abc_ic_ab_back_mtrl_am_alpha:I

    aput v3, v0, v2

    sget v3, Lcn/nubia/commonui/R$drawable;->abc_ic_go_search_api_mtrl_alpha:I

    aput v3, v0, v1

    sget v3, Lcn/nubia/commonui/R$drawable;->abc_ic_search_api_mtrl_alpha:I

    aput v3, v0, v5

    sget v3, Lcn/nubia/commonui/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v3, v0, v6

    sget v3, Lcn/nubia/commonui/R$drawable;->abc_ic_clear_mtrl_alpha:I

    aput v3, v0, v7

    const/4 v3, 0x5

    sget v4, Lcn/nubia/commonui/R$drawable;->abc_ic_menu_share_mtrl_alpha:I

    aput v4, v0, v3

    const/4 v3, 0x6

    sget v4, Lcn/nubia/commonui/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v4, v0, v3

    const/4 v3, 0x7

    sget v4, Lcn/nubia/commonui/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I

    aput v4, v0, v3

    const/16 v3, 0x8

    sget v4, Lcn/nubia/commonui/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I

    aput v4, v0, v3

    const/16 v3, 0x9

    sget v4, Lcn/nubia/commonui/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I

    aput v4, v0, v3

    const/16 v3, 0xa

    sget v4, Lcn/nubia/commonui/R$drawable;->abc_ic_menu_moreoverflow_mtrl_alpha:I

    aput v4, v0, v3

    const/16 v3, 0xb

    sget v4, Lcn/nubia/commonui/R$drawable;->abc_ic_voice_search_api_mtrl_alpha:I

    aput v4, v0, v3

    const/16 v3, 0xc

    sget v4, Lcn/nubia/commonui/R$drawable;->abc_textfield_search_default_mtrl_alpha:I

    aput v4, v0, v3

    const/16 v3, 0xd

    sget v4, Lcn/nubia/commonui/R$drawable;->abc_textfield_default_mtrl_alpha:I

    aput v4, v0, v3

    const/16 v3, 0xe

    sget v4, Lcn/nubia/commonui/R$drawable;->abc_ab_share_pack_mtrl_alpha:I

    aput v4, v0, v3

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->TINT_COLOR_CONTROL_NORMAL:[I

    .line 79
    new-array v0, v7, [I

    sget v3, Lcn/nubia/commonui/R$drawable;->abc_textfield_activated_mtrl_alpha:I

    aput v3, v0, v2

    sget v3, Lcn/nubia/commonui/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I

    aput v3, v0, v1

    sget v3, Lcn/nubia/commonui/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    aput v3, v0, v5

    sget v3, Lcn/nubia/commonui/R$drawable;->abc_text_cursor_mtrl_alpha:I

    aput v3, v0, v6

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->TINT_COLOR_CONTROL_ACTIVATED:[I

    .line 90
    new-array v0, v6, [I

    sget v3, Lcn/nubia/commonui/R$drawable;->abc_popup_background_mtrl_mult:I

    aput v3, v0, v2

    sget v3, Lcn/nubia/commonui/R$drawable;->abc_cab_background_internal_bg:I

    aput v3, v0, v1

    sget v3, Lcn/nubia/commonui/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v3, v0, v5

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->TINT_COLOR_BACKGROUND_MULTIPLY:[I

    .line 100
    const/16 v0, 0xc

    new-array v0, v0, [I

    sget v3, Lcn/nubia/commonui/R$drawable;->abc_edit_text_material:I

    aput v3, v0, v2

    sget v3, Lcn/nubia/commonui/R$drawable;->abc_tab_indicator_material:I

    aput v3, v0, v1

    sget v3, Lcn/nubia/commonui/R$drawable;->abc_textfield_search_material:I

    aput v3, v0, v5

    sget v3, Lcn/nubia/commonui/R$drawable;->abc_spinner_mtrl_am_alpha:I

    aput v3, v0, v6

    sget v3, Lcn/nubia/commonui/R$drawable;->abc_btn_check_material:I

    aput v3, v0, v7

    const/4 v3, 0x5

    sget v4, Lcn/nubia/commonui/R$drawable;->abc_btn_radio_material:I

    aput v4, v0, v3

    const/4 v3, 0x6

    sget v4, Lcn/nubia/commonui/R$drawable;->abc_spinner_textfield_background_material:I

    aput v4, v0, v3

    const/4 v3, 0x7

    sget v4, Lcn/nubia/commonui/R$drawable;->abc_ratingbar_full_material:I

    aput v4, v0, v3

    const/16 v3, 0x8

    sget v4, Lcn/nubia/commonui/R$drawable;->abc_switch_track_mtrl_alpha:I

    aput v4, v0, v3

    const/16 v3, 0x9

    sget v4, Lcn/nubia/commonui/R$drawable;->abc_switch_thumb_material:I

    aput v4, v0, v3

    const/16 v3, 0xa

    sget v4, Lcn/nubia/commonui/R$drawable;->abc_btn_default_mtrl_shape:I

    aput v4, v0, v3

    const/16 v3, 0xb

    sget v4, Lcn/nubia/commonui/R$drawable;->abc_btn_borderless_material:I

    aput v4, v0, v3

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    .line 119
    new-array v0, v1, [I

    sget v1, Lcn/nubia/commonui/R$drawable;->abc_cab_background_top_material:I

    aput v1, v0, v2

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->CONTAINERS_WITH_TINT_CHILDREN:[I

    return-void

    :cond_0
    move v0, v2

    .line 44
    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mColorStateLists:Landroid/util/SparseArray;

    .line 147
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mContext:Landroid/content/Context;

    .line 148
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mTypedValue:Landroid/util/TypedValue;

    .line 149
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/g;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcn/nubia/commonui/actionbar/internal/widget/g;-><init>(Landroid/content/res/Resources;Lcn/nubia/commonui/actionbar/internal/widget/TintManager;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mResources:Landroid/content/res/Resources;

    .line 150
    return-void
.end method

.method private static arrayContains([II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 225
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    .line 226
    if-ne v3, p1, :cond_1

    .line 227
    const/4 v0, 0x1

    .line 230
    :cond_0
    return v0

    .line 225
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private createButtonColorStateList()Landroid/content/res/ColorStateList;
    .locals 6

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 417
    new-array v0, v1, [[I

    .line 418
    new-array v1, v1, [I

    .line 422
    new-array v2, v4, [I

    const v3, -0x101009e

    aput v3, v2, v5

    aput-object v2, v0, v5

    .line 423
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mContext:Landroid/content/Context;

    sget v3, Lcn/nubia/commonui/R$attr;->colorButtonNormal:I

    invoke-static {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/d;->c(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v5

    .line 426
    new-array v2, v4, [I

    const v3, 0x10100a7

    aput v3, v2, v5

    aput-object v2, v0, v4

    .line 427
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mContext:Landroid/content/Context;

    sget v3, Lcn/nubia/commonui/R$attr;->colorControlHighlight:I

    invoke-static {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/d;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v4

    .line 428
    const/4 v2, 0x2

    .line 430
    new-array v3, v4, [I

    const v4, 0x101009c

    aput v4, v3, v5

    aput-object v3, v0, v2

    .line 431
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mContext:Landroid/content/Context;

    sget v4, Lcn/nubia/commonui/R$attr;->colorControlHighlight:I

    invoke-static {v3, v4}, Lcn/nubia/commonui/actionbar/internal/widget/d;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 432
    const/4 v2, 0x3

    .line 435
    new-array v3, v5, [I

    aput-object v3, v0, v2

    .line 436
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mContext:Landroid/content/Context;

    sget v4, Lcn/nubia/commonui/R$attr;->colorButtonNormal:I

    invoke-static {v3, v4}, Lcn/nubia/commonui/actionbar/internal/widget/d;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 439
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private createEditTextColorStateList()Landroid/content/res/ColorStateList;
    .locals 7

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 395
    new-array v0, v1, [[I

    .line 396
    new-array v1, v1, [I

    .line 400
    new-array v2, v5, [I

    const v3, -0x101009e

    aput v3, v2, v4

    aput-object v2, v0, v4

    .line 401
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mContext:Landroid/content/Context;

    sget v3, Lcn/nubia/commonui/R$attr;->colorControlNormal:I

    invoke-static {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/d;->c(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v4

    .line 404
    new-array v2, v6, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v5

    .line 405
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mContext:Landroid/content/Context;

    sget v3, Lcn/nubia/commonui/R$attr;->colorControlNormal:I

    invoke-static {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/d;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v5

    .line 409
    new-array v2, v4, [I

    aput-object v2, v0, v6

    .line 410
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mContext:Landroid/content/Context;

    sget v3, Lcn/nubia/commonui/R$attr;->colorControlActivated:I

    invoke-static {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/d;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v6

    .line 413
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    .line 404
    :array_0
    .array-data 4
        -0x10100a7
        -0x101009c
    .end array-data
.end method

.method private createSpinnerColorStateList()Landroid/content/res/ColorStateList;
    .locals 7

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 443
    new-array v0, v1, [[I

    .line 444
    new-array v1, v1, [I

    .line 448
    new-array v2, v5, [I

    const v3, -0x101009e

    aput v3, v2, v4

    aput-object v2, v0, v4

    .line 449
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mContext:Landroid/content/Context;

    sget v3, Lcn/nubia/commonui/R$attr;->colorControlNormal:I

    invoke-static {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/d;->c(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v4

    .line 452
    new-array v2, v6, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v5

    .line 453
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mContext:Landroid/content/Context;

    sget v3, Lcn/nubia/commonui/R$attr;->colorControlNormal:I

    invoke-static {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/d;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v5

    .line 456
    new-array v2, v4, [I

    aput-object v2, v0, v6

    .line 457
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mContext:Landroid/content/Context;

    sget v3, Lcn/nubia/commonui/R$attr;->colorControlActivated:I

    invoke-static {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/d;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v6

    .line 460
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    .line 452
    :array_0
    .array-data 4
        -0x10100a7
        -0x101009c
    .end array-data
.end method

.method private createSwitchThumbColorStateList()Landroid/content/res/ColorStateList;
    .locals 8

    .prologue
    const/4 v1, 0x3

    const/4 v7, 0x2

    const v4, -0x101009e

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 349
    new-array v0, v1, [[I

    .line 350
    new-array v1, v1, [I

    .line 353
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mContext:Landroid/content/Context;

    sget v3, Lcn/nubia/commonui/R$attr;->colorSwitchThumbNormal:I

    invoke-static {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/d;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 356
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 361
    new-array v3, v6, [I

    aput v4, v3, v5

    aput-object v3, v0, v5

    .line 362
    aget-object v3, v0, v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    aput v3, v1, v5

    .line 365
    new-array v3, v6, [I

    const v4, 0x10100a0

    aput v4, v3, v5

    aput-object v3, v0, v6

    .line 366
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mContext:Landroid/content/Context;

    sget v4, Lcn/nubia/commonui/R$attr;->colorControlActivated:I

    invoke-static {v3, v4}, Lcn/nubia/commonui/actionbar/internal/widget/d;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v6

    .line 370
    new-array v3, v5, [I

    aput-object v3, v0, v7

    .line 371
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    aput v2, v1, v7

    .line 391
    :goto_0
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    .line 377
    :cond_0
    new-array v2, v6, [I

    aput v4, v2, v5

    aput-object v2, v0, v5

    .line 378
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mContext:Landroid/content/Context;

    sget v3, Lcn/nubia/commonui/R$attr;->colorSwitchThumbNormal:I

    invoke-static {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/d;->c(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v5

    .line 381
    new-array v2, v6, [I

    const v3, 0x10100a0

    aput v3, v2, v5

    aput-object v2, v0, v6

    .line 382
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mContext:Landroid/content/Context;

    sget v3, Lcn/nubia/commonui/R$attr;->colorControlActivated:I

    invoke-static {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/d;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v6

    .line 386
    new-array v2, v5, [I

    aput-object v2, v0, v7

    .line 387
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mContext:Landroid/content/Context;

    sget v3, Lcn/nubia/commonui/R$attr;->colorSwitchThumbNormal:I

    invoke-static {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/d;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v7

    goto :goto_0
.end method

.method private createSwitchTrackColorStateList()Landroid/content/res/ColorStateList;
    .locals 8

    .prologue
    const v7, 0x1010030

    const/4 v1, 0x3

    const v6, 0x3e99999a    # 0.3f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 327
    new-array v0, v1, [[I

    .line 328
    new-array v1, v1, [I

    .line 332
    new-array v2, v5, [I

    const v3, -0x101009e

    aput v3, v2, v4

    aput-object v2, v0, v4

    .line 333
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mContext:Landroid/content/Context;

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v2, v7, v3}, Lcn/nubia/commonui/actionbar/internal/widget/d;->a(Landroid/content/Context;IF)I

    move-result v2

    aput v2, v1, v4

    .line 336
    new-array v2, v5, [I

    const v3, 0x10100a0

    aput v3, v2, v4

    aput-object v2, v0, v5

    .line 337
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mContext:Landroid/content/Context;

    sget v3, Lcn/nubia/commonui/R$attr;->colorControlActivated:I

    invoke-static {v2, v3, v6}, Lcn/nubia/commonui/actionbar/internal/widget/d;->a(Landroid/content/Context;IF)I

    move-result v2

    aput v2, v1, v5

    .line 338
    const/4 v2, 0x2

    .line 341
    new-array v3, v4, [I

    aput-object v3, v0, v2

    .line 342
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v6}, Lcn/nubia/commonui/actionbar/internal/widget/d;->a(Landroid/content/Context;IF)I

    move-result v3

    aput v3, v1, v2

    .line 345
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private getColorStateListForKnownDrawableId(I)Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mColorStateLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 251
    if-nez v0, :cond_0

    .line 253
    sget v0, Lcn/nubia/commonui/R$drawable;->abc_edit_text_material:I

    if-ne p1, v0, :cond_1

    .line 254
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->createEditTextColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 271
    :goto_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mColorStateLists:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 273
    :cond_0
    return-object v0

    .line 255
    :cond_1
    sget v0, Lcn/nubia/commonui/R$drawable;->abc_switch_track_mtrl_alpha:I

    if-ne p1, v0, :cond_2

    .line 256
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->createSwitchTrackColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 257
    :cond_2
    sget v0, Lcn/nubia/commonui/R$drawable;->abc_switch_thumb_material:I

    if-ne p1, v0, :cond_3

    .line 258
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->createSwitchThumbColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 259
    :cond_3
    sget v0, Lcn/nubia/commonui/R$drawable;->abc_btn_default_mtrl_shape:I

    if-eq p1, v0, :cond_4

    sget v0, Lcn/nubia/commonui/R$drawable;->abc_btn_borderless_material:I

    if-ne p1, v0, :cond_5

    .line 261
    :cond_4
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->createButtonColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_5
    sget v0, Lcn/nubia/commonui/R$drawable;->abc_spinner_mtrl_am_alpha:I

    if-eq p1, v0, :cond_6

    sget v0, Lcn/nubia/commonui/R$drawable;->abc_spinner_textfield_background_material:I

    if-ne p1, v0, :cond_7

    .line 264
    :cond_6
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->createSpinnerColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 267
    :cond_7
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->getDefaultColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method

.method private getDefaultColorStateList()Landroid/content/res/ColorStateList;
    .locals 9

    .prologue
    const/4 v3, 0x7

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 277
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mDefaultColorStateList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/commonui/R$attr;->colorControlNormal:I

    invoke-static {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 284
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mContext:Landroid/content/Context;

    sget v2, Lcn/nubia/commonui/R$attr;->colorControlActivated:I

    invoke-static {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/d;->a(Landroid/content/Context;I)I

    move-result v1

    .line 287
    new-array v2, v3, [[I

    .line 288
    new-array v3, v3, [I

    .line 292
    new-array v4, v8, [I

    const v5, -0x101009e

    aput v5, v4, v7

    aput-object v4, v2, v7

    .line 293
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mContext:Landroid/content/Context;

    sget v5, Lcn/nubia/commonui/R$attr;->colorControlNormal:I

    invoke-static {v4, v5}, Lcn/nubia/commonui/actionbar/internal/widget/d;->c(Landroid/content/Context;I)I

    move-result v4

    aput v4, v3, v7

    .line 296
    new-array v4, v8, [I

    const v5, 0x101009c

    aput v5, v4, v7

    aput-object v4, v2, v8

    .line 297
    aput v1, v3, v8

    .line 298
    const/4 v4, 0x2

    .line 300
    new-array v5, v8, [I

    const v6, 0x10102fe

    aput v6, v5, v7

    aput-object v5, v2, v4

    .line 301
    aput v1, v3, v4

    .line 302
    const/4 v4, 0x3

    .line 304
    new-array v5, v8, [I

    const v6, 0x10100a7

    aput v6, v5, v7

    aput-object v5, v2, v4

    .line 305
    aput v1, v3, v4

    .line 306
    const/4 v4, 0x4

    .line 308
    new-array v5, v8, [I

    const v6, 0x10100a0

    aput v6, v5, v7

    aput-object v5, v2, v4

    .line 309
    aput v1, v3, v4

    .line 310
    const/4 v4, 0x5

    .line 312
    new-array v5, v8, [I

    const v6, 0x10100a1

    aput v6, v5, v7

    aput-object v5, v2, v4

    .line 313
    aput v1, v3, v4

    .line 314
    const/4 v1, 0x6

    .line 317
    new-array v4, v7, [I

    aput-object v4, v2, v1

    .line 318
    aput v0, v3, v1

    .line 321
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mDefaultColorStateList:Landroid/content/res/ColorStateList;

    .line 323
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mDefaultColorStateList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 135
    invoke-static {p1}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->isInTintList(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    instance-of v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/e;

    if-eqz v0, :cond_0

    check-cast p0, Lcn/nubia/commonui/actionbar/internal/widget/e;

    .line 137
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/e;->a()Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    move-result-object v0

    .line 139
    :goto_0
    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 141
    :goto_1
    return-object v0

    .line 137
    :cond_0
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 141
    :cond_1
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method private static isInTintList(I)Z
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->TINT_COLOR_BACKGROUND_MULTIPLY:[I

    invoke-static {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->arrayContains([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->TINT_COLOR_CONTROL_NORMAL:[I

    .line 235
    invoke-static {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->arrayContains([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->TINT_COLOR_CONTROL_ACTIVATED:[I

    .line 236
    invoke-static {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->arrayContains([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    .line 237
    invoke-static {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->arrayContains([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->CONTAINERS_WITH_TINT_CHILDREN:[I

    .line 238
    invoke-static {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->arrayContains([II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 234
    :goto_0
    return v0

    .line 238
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static tintDrawableUsingColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 501
    sget-object v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->COLOR_FILTER_CACHE:Lcn/nubia/commonui/actionbar/internal/widget/TintManager$a;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager$a;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    .line 503
    if-nez v0, :cond_0

    .line 505
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 506
    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->COLOR_FILTER_CACHE:Lcn/nubia/commonui/actionbar/internal/widget/TintManager$a;

    invoke-virtual {v1, p1, p2, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager$a;->a(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    .line 509
    :cond_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 510
    return-void
.end method

.method public static tintViewBackground(Landroid/view/View;Lcn/nubia/commonui/actionbar/internal/widget/f;)V
    .locals 4

    .prologue
    .line 486
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 487
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/internal/widget/f;->a:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/internal/widget/f;->a:Landroid/content/res/ColorStateList;

    .line 490
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    iget-object v3, p1, Lcn/nubia/commonui/actionbar/internal/widget/f;->a:Landroid/content/res/ColorStateList;

    .line 491
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    .line 490
    invoke-virtual {v0, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget-object v0, p1, Lcn/nubia/commonui/actionbar/internal/widget/f;->b:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcn/nubia/commonui/actionbar/internal/widget/f;->b:Landroid/graphics/PorterDuff$Mode;

    .line 488
    :goto_0
    invoke-static {v1, v2, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->tintDrawableUsingColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 496
    :goto_1
    return-void

    .line 490
    :cond_0
    sget-object v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 494
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1
.end method


# virtual methods
.method getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    invoke-static {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->arrayContains([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->getColorStateListForKnownDrawableId(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    .line 243
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 157
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 162
    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    invoke-static {v1, p1}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->getColorStateListForKnownDrawableId(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 164
    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 165
    sget v3, Lcn/nubia/commonui/R$drawable;->abc_switch_thumb_material:I

    if-ne p1, v3, :cond_0

    .line 166
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 169
    :cond_0
    if-eqz v2, :cond_1

    .line 171
    invoke-static {v0, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 172
    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 180
    :cond_1
    :goto_0
    return-object v0

    .line 174
    :cond_2
    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->CONTAINERS_WITH_TINT_CHILDREN:[I

    invoke-static {v1, p1}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 175
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->tintDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method tintDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 184
    const/4 v4, 0x0

    .line 189
    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->TINT_COLOR_CONTROL_NORMAL:[I

    invoke-static {v1, p1}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    sget v0, Lcn/nubia/commonui/R$attr;->colorControlNormal:I

    move v1, v2

    move v5, v0

    move-object v0, v4

    move v4, v3

    move v3, v5

    .line 205
    :goto_0
    if-eqz v4, :cond_1

    .line 206
    if-nez v0, :cond_0

    .line 207
    sget-object v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 209
    :cond_0
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcn/nubia/commonui/actionbar/internal/widget/d;->a(Landroid/content/Context;I)I

    move-result v3

    .line 211
    invoke-static {p2, v3, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->tintDrawableUsingColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 213
    if-eq v1, v2, :cond_1

    .line 214
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 222
    :cond_1
    return-void

    .line 192
    :cond_2
    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->TINT_COLOR_CONTROL_ACTIVATED:[I

    invoke-static {v1, p1}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    sget v0, Lcn/nubia/commonui/R$attr;->colorControlActivated:I

    move v1, v2

    move v5, v0

    move-object v0, v4

    move v4, v3

    move v3, v5

    .line 194
    goto :goto_0

    .line 195
    :cond_3
    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->TINT_COLOR_BACKGROUND_MULTIPLY:[I

    invoke-static {v1, p1}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 196
    const v0, 0x1010031

    .line 198
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move v4, v3

    move v3, v0

    move-object v0, v1

    move v1, v2

    goto :goto_0

    .line 199
    :cond_4
    sget v1, Lcn/nubia/commonui/R$drawable;->abc_list_divider_mtrl_alpha:I

    if-ne p1, v1, :cond_5

    .line 200
    const v1, 0x1010030

    .line 202
    const v0, 0x42233333    # 40.8f

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v5, v0

    move-object v0, v4

    move v4, v3

    move v3, v1

    move v1, v5

    goto :goto_0

    :cond_5
    move v1, v2

    move v3, v0

    move v5, v0

    move-object v0, v4

    move v4, v5

    goto :goto_0
.end method
