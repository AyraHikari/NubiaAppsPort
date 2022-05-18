.class public Lcn/nubia/music/ui/ThemeColor;
.super Ljava/lang/Object;
.source "ThemeColor.java"


# static fields
.field public static final BROADCAST_THEME_SWITCH:Ljava/lang/String; = "BROADCAST_THEME_SWITCH"

.field public static final MSG_APPLY_THEME_COLOR:I

.field public static final MSG_PDATE_ALBUMCOLORHUE:I

.field public static final actionBarColor:[I

.field private static bmpTabIndicator:Landroid/graphics/Bitmap;

.field public static final greyBkgroundColor:[I

.field public static final iColorGrid:[I

.field public static final iColorLevel1:[[I

.field public static final iColorLevel2:[I

.field public static iColorTheme:I

.field public static mColorBackgroundMap:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public static mGraidentBackgroundMap:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public static mMapBitmap:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public static mMapFocusColorIndex:Landroid/util/SparseIntArray;

.field private static maxMemory:I

.field public static final playViewBkgroundColor:[I

.field public static syColorBackground:Ljava/lang/Object;

.field public static syGraidentBackground:Ljava/lang/Object;

.field public static syncobj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/16 v5, 0xa

    const/4 v4, 0x5

    const/4 v3, 0x2

    .line 32
    sput v2, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    .line 36
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcn/nubia/music/ui/ThemeColor;->mMapFocusColorIndex:Landroid/util/SparseIntArray;

    .line 37
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-int v0, v0

    div-int/lit8 v0, v0, 0x8

    sput v0, Lcn/nubia/music/ui/ThemeColor;->maxMemory:I

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/music/ui/ThemeColor;->bmpTabIndicator:Landroid/graphics/Bitmap;

    .line 40
    new-instance v0, Lcn/nubia/music/ui/ThemeColor$1;

    sget v1, Lcn/nubia/music/ui/ThemeColor;->maxMemory:I

    div-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Lcn/nubia/music/ui/ThemeColor$1;-><init>(I)V

    sput-object v0, Lcn/nubia/music/ui/ThemeColor;->mMapBitmap:Landroid/support/v4/util/LruCache;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/music/ui/ThemeColor;->syncobj:Ljava/lang/Object;

    .line 52
    new-instance v0, Lcn/nubia/music/ui/ThemeColor$2;

    sget v1, Lcn/nubia/music/ui/ThemeColor;->maxMemory:I

    div-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Lcn/nubia/music/ui/ThemeColor$2;-><init>(I)V

    sput-object v0, Lcn/nubia/music/ui/ThemeColor;->mColorBackgroundMap:Landroid/support/v4/util/LruCache;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/music/ui/ThemeColor;->syColorBackground:Ljava/lang/Object;

    .line 64
    new-instance v0, Lcn/nubia/music/ui/ThemeColor$3;

    sget v1, Lcn/nubia/music/ui/ThemeColor;->maxMemory:I

    div-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Lcn/nubia/music/ui/ThemeColor$3;-><init>(I)V

    sput-object v0, Lcn/nubia/music/ui/ThemeColor;->mGraidentBackgroundMap:Landroid/support/v4/util/LruCache;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/music/ui/ThemeColor;->syGraidentBackground:Ljava/lang/Object;

    .line 76
    new-array v0, v4, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/music/ui/ThemeColor;->iColorLevel1:[[I

    .line 94
    new-array v0, v5, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcn/nubia/music/ui/ThemeColor;->actionBarColor:[I

    .line 100
    new-array v0, v5, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcn/nubia/music/ui/ThemeColor;->greyBkgroundColor:[I

    .line 105
    new-array v0, v5, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcn/nubia/music/ui/ThemeColor;->playViewBkgroundColor:[I

    .line 110
    new-array v0, v4, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcn/nubia/music/ui/ThemeColor;->iColorLevel2:[I

    .line 118
    new-array v0, v4, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcn/nubia/music/ui/ThemeColor;->iColorGrid:[I

    return-void

    .line 76
    :array_0
    .array-data 4
        -0x43fd3
        -0x24bbc9
    .end array-data

    :array_1
    .array-data 4
        -0x3223c7
        -0xf062a8
    .end array-data

    :array_2
    .array-data 4
        -0xff533f
        -0xbdad4a
    .end array-data

    :array_3
    .array-data 4
        -0x63d850
        -0xa1ca4f
    .end array-data

    :array_4
    .array-data 4
        -0x16e19d
        -0x63d850
    .end array-data

    .line 94
    :array_5
    .array-data 4
        -0x1
        -0x1262a0
        -0x19479e
        -0xa8567f
        -0xa95b61
        -0x7a5b3c
        -0x877b3e
        -0x768f67
        -0x377d5b
        -0x236567
    .end array-data

    .line 100
    :array_6
    .array-data 4
        -0x131211
        -0xe1113
        -0xe0f13
        -0x120e11
        -0x120e10
        -0x12110f
        -0x12120f
        -0x10120f
        -0xe1210
        -0xe1213
    .end array-data

    .line 105
    :array_7
    .array-data 4
        -0xbdbdb7
        -0x78200
        -0x183fb7
        -0xb05fcb
        -0xff706b
        -0xca743b
        -0xa9a938
        -0x7cb123
        -0x3cda98
        -0x1fbfac
    .end array-data

    .line 110
    :array_8
    .array-data 4
        -0xe6eaf9
        -0xf8ebfa
        -0xffece7
        -0xf3fae7
        -0xe6f7f8
    .end array-data

    .line 118
    :array_9
    .array-data 4
        -0x55002db4
        -0x55b633c3
        -0x55ff4001
        -0x5588cc01
        -0x5500b2b3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcImageColorHue(Landroid/content/Context;ILandroid/graphics/Bitmap;)V
    .locals 10

    .prologue
    const/16 v2, 0xa

    const/4 v4, 0x1

    const/16 v5, 0x9

    const/4 v1, 0x0

    .line 469
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    new-array v6, v2, [I

    move v0, v1

    .line 475
    :goto_1
    if-ge v0, v2, :cond_2

    .line 476
    aput v1, v6, v0

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 479
    :goto_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_8

    move v2, v1

    .line 480
    :goto_3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 481
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    .line 482
    const/high16 v7, 0xff0000

    and-int/2addr v7, v3

    shr-int/lit8 v7, v7, 0x10

    .line 483
    const v8, 0xff00

    and-int/2addr v8, v3

    shr-int/lit8 v8, v8, 0x8

    .line 484
    and-int/lit16 v9, v3, 0xff

    .line 485
    if-ne v7, v8, :cond_3

    if-ne v8, v9, :cond_3

    .line 486
    aget v3, v6, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v6, v1

    .line 480
    :goto_4
    add-int/lit8 v2, v2, 0x8

    goto :goto_3

    .line 489
    :cond_3
    const/4 v7, 0x3

    new-array v7, v7, [F

    .line 490
    invoke-static {v3, v7}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 492
    aget v3, v7, v1

    const/high16 v8, 0x41a00000    # 20.0f

    sub-float/2addr v3, v8

    const/4 v8, 0x0

    cmpg-float v3, v3, v8

    if-gez v3, :cond_6

    move v3, v5

    .line 497
    :goto_5
    if-le v3, v5, :cond_4

    move v3, v5

    .line 500
    :cond_4
    if-gez v3, :cond_5

    move v3, v4

    .line 503
    :cond_5
    aget v7, v6, v3

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v3

    goto :goto_4

    .line 495
    :cond_6
    aget v3, v7, v1

    float-to-int v3, v3

    add-int/lit8 v3, v3, -0x14

    div-int/lit8 v3, v3, 0x28

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 479
    :cond_7
    add-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_8
    move v3, v1

    move v0, v1

    move v2, v1

    .line 507
    :goto_6
    if-ge v3, v5, :cond_b

    .line 508
    if-nez v3, :cond_a

    .line 509
    aget v0, v6, v1

    move v2, v1

    .line 507
    :cond_9
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 513
    :cond_a
    aget v7, v6, v3

    if-le v7, v0, :cond_9

    .line 514
    aget v0, v6, v3

    move v2, v3

    .line 515
    goto :goto_7

    .line 520
    :cond_b
    if-nez p1, :cond_c

    .line 521
    sget-object v0, Lcn/nubia/music/ui/ThemeColor;->mMapFocusColorIndex:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_c

    move v1, v4

    .line 527
    :cond_c
    sget-object v0, Lcn/nubia/music/ui/ThemeColor;->mMapFocusColorIndex:Landroid/util/SparseIntArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 528
    if-eqz v1, :cond_0

    .line 529
    new-instance v0, Landroid/content/Intent;

    const-string v1, "BROADCAST_THEME_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 530
    const-string v1, "focusupdate"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 531
    sput v2, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    .line 532
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public static calcPlaypageAlbumColorHue(Landroid/content/Context;Landroid/graphics/Bitmap;)I
    .locals 9

    .prologue
    const/16 v2, 0xa

    const/16 v4, 0x9

    const/4 v1, 0x0

    .line 414
    .line 415
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 416
    :cond_0
    sget-object v0, Lcn/nubia/music/ui/ThemeColor;->playViewBkgroundColor:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    .line 464
    :goto_0
    return v0

    .line 418
    :cond_1
    new-array v5, v2, [I

    move v0, v1

    .line 421
    :goto_1
    if-ge v0, v2, :cond_2

    .line 422
    aput v1, v5, v0

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 425
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_8

    move v2, v1

    .line 426
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 427
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    .line 428
    const/high16 v6, 0xff0000

    and-int/2addr v6, v3

    shr-int/lit8 v6, v6, 0x10

    .line 429
    const v7, 0xff00

    and-int/2addr v7, v3

    shr-int/lit8 v7, v7, 0x8

    .line 430
    and-int/lit16 v8, v3, 0xff

    .line 431
    if-ne v6, v7, :cond_3

    if-ne v7, v8, :cond_3

    .line 432
    aget v3, v5, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v5, v1

    .line 426
    :goto_4
    add-int/lit8 v2, v2, 0x8

    goto :goto_3

    .line 435
    :cond_3
    const/4 v6, 0x3

    new-array v6, v6, [F

    .line 436
    invoke-static {v3, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 438
    aget v3, v6, v1

    const/high16 v7, 0x41a00000    # 20.0f

    sub-float/2addr v3, v7

    const/4 v7, 0x0

    cmpg-float v3, v3, v7

    if-gez v3, :cond_6

    move v3, v4

    .line 443
    :goto_5
    if-le v3, v4, :cond_4

    move v3, v4

    .line 446
    :cond_4
    if-gez v3, :cond_5

    .line 447
    const/4 v3, 0x1

    .line 449
    :cond_5
    aget v6, v5, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v3

    goto :goto_4

    .line 441
    :cond_6
    aget v3, v6, v1

    float-to-int v3, v3

    add-int/lit8 v3, v3, -0x14

    div-int/lit8 v3, v3, 0x28

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 425
    :cond_7
    add-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_8
    move v3, v1

    move v0, v1

    move v2, v1

    .line 453
    :goto_6
    if-ge v3, v4, :cond_b

    .line 454
    if-nez v3, :cond_a

    .line 455
    aget v0, v5, v1

    move v2, v1

    .line 453
    :cond_9
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 459
    :cond_a
    aget v6, v5, v3

    if-le v6, v0, :cond_9

    .line 460
    aget v0, v5, v3

    move v2, v3

    .line 461
    goto :goto_7

    .line 464
    :cond_b
    sget-object v0, Lcn/nubia/music/ui/ThemeColor;->playViewBkgroundColor:[I

    aget v0, v0, v2

    goto :goto_0
.end method

.method public static clearAllBitmap()V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method public static clearBitmapByContext(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 268
    sget-object v1, Lcn/nubia/music/ui/ThemeColor;->syncobj:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_0
    monitor-exit v1

    .line 276
    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static clearGraidentBackgroundBitmap()V
    .locals 2

    .prologue
    .line 288
    sget-object v1, Lcn/nubia/music/ui/ThemeColor;->syGraidentBackground:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :try_start_0
    monitor-exit v1

    .line 297
    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static clearTextColorBitmap()V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method private static createColorBackgroundKey(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createGraidentKey(IIZI)Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static drawTabIndicator(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 394
    const v0, 0x7f0d0085

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    .line 395
    const v0, 0x7f0d0084

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimension(I)F

    move-result v0

    float-to-int v8, v0

    .line 396
    sget-object v0, Lcn/nubia/music/ui/ThemeColor;->bmpTabIndicator:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 397
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/ui/ThemeColor;->bmpTabIndicator:Landroid/graphics/Bitmap;

    .line 398
    new-instance v5, Landroid/graphics/Paint;

    const/4 v0, 0x4

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 399
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 400
    sget-object v2, Lcn/nubia/music/ui/ThemeColor;->bmpTabIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 401
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 402
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 403
    const v2, 0x7f0f0043

    invoke-static {v2}, Lcn/nubia/music/utils/ResHelper;->getColor(I)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 404
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 405
    int-to-float v2, v8

    div-int/lit8 v3, v6, 0x2

    int-to-float v3, v3

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 406
    div-int/lit8 v2, v6, 0x2

    int-to-float v7, v2

    int-to-float v9, v6

    int-to-float v10, v8

    move-object v6, v0

    move v8, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 408
    :cond_0
    sget-object v0, Lcn/nubia/music/ui/ThemeColor;->bmpTabIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 409
    return-void
.end method

.method public static getBitmapKey(Landroid/content/Context;IIDI)Ljava/lang/String;
    .locals 3

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getColorBackground(II)Landroid/graphics/drawable/BitmapDrawable;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 206
    if-lez p0, :cond_0

    if-gtz p1, :cond_1

    .line 207
    :cond_0
    const/4 v0, 0x0

    .line 227
    :goto_0
    return-object v0

    .line 210
    :cond_1
    sget-object v2, Lcn/nubia/music/ui/ThemeColor;->syColorBackground:Ljava/lang/Object;

    monitor-enter v2

    .line 211
    :try_start_0
    sget-object v0, Lcn/nubia/music/ui/ThemeColor;->mColorBackgroundMap:Landroid/support/v4/util/LruCache;

    invoke-static {p0, p1}, Lcn/nubia/music/ui/ThemeColor;->createColorBackgroundKey(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 212
    if-eqz v0, :cond_2

    .line 213
    monitor-exit v2

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 217
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 218
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 219
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 220
    sget-object v2, Lcn/nubia/music/ui/ThemeColor;->iColorLevel2:[I

    sget v3, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    aget v2, v2, v3

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    int-to-float v3, p0

    int-to-float v4, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 222
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 224
    sget-object v1, Lcn/nubia/music/ui/ThemeColor;->syColorBackground:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_2
    sget-object v2, Lcn/nubia/music/ui/ThemeColor;->mColorBackgroundMap:Landroid/support/v4/util/LruCache;

    invoke-static {p0, p1}, Lcn/nubia/music/ui/ThemeColor;->createColorBackgroundKey(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static getColorFromKey(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 251
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 252
    array-length v1, v0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 253
    const/4 v0, -0x1

    .line 256
    :goto_0
    return v0

    .line 255
    :cond_0
    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getContextFromKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 260
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 261
    array-length v1, v0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 264
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static getCurrentGreyColor()I
    .locals 2

    .prologue
    .line 172
    sget-object v0, Lcn/nubia/music/ui/ThemeColor;->greyBkgroundColor:[I

    sget v1, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    aget v0, v0, v1

    return v0
.end method

.method public static getCurrentThemeColor()I
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lcn/nubia/music/ui/ThemeColor;->actionBarColor:[I

    sget v1, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    aget v0, v0, v1

    return v0
.end method

.method public static getDefaultGridImage(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/nubia/music/ui/ThemeColor;->getGridDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getGraidentBackground(IIZI)Landroid/graphics/drawable/BitmapDrawable;
    .locals 11

    .prologue
    .line 128
    if-lez p0, :cond_0

    if-gtz p1, :cond_1

    .line 129
    :cond_0
    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    .line 132
    :cond_1
    sget-object v1, Lcn/nubia/music/ui/ThemeColor;->syGraidentBackground:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_0
    sget-object v2, Lcn/nubia/music/ui/ThemeColor;->mGraidentBackgroundMap:Landroid/support/v4/util/LruCache;

    if-gez p3, :cond_2

    sget v0, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    :goto_1
    invoke-static {p0, p1, p2, v0}, Lcn/nubia/music/ui/ThemeColor;->createGraidentKey(IIZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 135
    if-eqz v0, :cond_3

    .line 136
    monitor-exit v1

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, p3

    .line 133
    goto :goto_1

    .line 138
    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 141
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 142
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 143
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 145
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    div-int/lit8 v3, p0, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p1, 0x2

    int-to-float v4, v4

    sget-object v5, Lcn/nubia/music/ui/ThemeColor;->iColorLevel1:[[I

    sget v6, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    sget-object v6, Lcn/nubia/music/ui/ThemeColor;->iColorLevel1:[[I

    sget v7, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 148
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 149
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, p0

    int-to-float v4, p1

    move-object v0, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 150
    if-eqz p2, :cond_4

    .line 151
    new-instance v0, Landroid/graphics/LinearGradient;

    div-int/lit8 v1, p0, 0x2

    int-to-float v1, v1

    const/4 v2, 0x0

    div-int/lit8 v3, p0, 0x2

    int-to-float v3, v3

    mul-int/lit8 v4, p1, 0x9

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    const/4 v5, 0x0

    const/high16 v6, -0x1000000

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 153
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 154
    const/16 v0, 0xff

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 155
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, p0

    int-to-float v4, p1

    move-object v0, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 157
    :cond_4
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 158
    sget-object v1, Lcn/nubia/music/ui/ThemeColor;->syGraidentBackground:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_2
    sget-object v2, Lcn/nubia/music/ui/ThemeColor;->mGraidentBackgroundMap:Landroid/support/v4/util/LruCache;

    if-gez p3, :cond_5

    sget p3, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    .line 160
    :cond_5
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/music/ui/ThemeColor;->createGraidentKey(IIZI)Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {v2, v3, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static getGridDrawable(Landroid/content/Context;IIDI)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const v8, 0x7f0200d7

    .line 312
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 313
    :cond_0
    const/4 v0, 0x0

    .line 357
    :goto_0
    return-object v0

    .line 317
    :cond_1
    invoke-static/range {p0 .. p5}, Lcn/nubia/music/ui/ThemeColor;->getBitmapKey(Landroid/content/Context;IIDI)Ljava/lang/String;

    move-result-object v6

    .line 318
    sget-object v2, Lcn/nubia/music/ui/ThemeColor;->syncobj:Ljava/lang/Object;

    monitor-enter v2

    .line 320
    :try_start_0
    sget-object v0, Lcn/nubia/music/ui/ThemeColor;->mMapBitmap:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, v6}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 321
    if-eqz v0, :cond_3

    .line 322
    if-ne p5, v8, :cond_2

    .line 325
    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 327
    :cond_3
    if-ne p5, v8, :cond_4

    .line 330
    :cond_4
    :try_start_1
    sget-object v0, Lcn/nubia/music/ui/ThemeColor;->mMapBitmap:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, v6}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    if-ne p5, v8, :cond_5

    .line 336
    :cond_5
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 337
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 338
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 339
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 340
    invoke-static {}, Lcn/nubia/music/ui/ThemeColor;->getCurrentThemeColor()I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 341
    int-to-float v3, p1

    int-to-float v4, p2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 342
    invoke-static {p5}, Lcn/nubia/music/utils/ResHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 343
    if-eqz v1, :cond_6

    .line 344
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 345
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 346
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 347
    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    .line 348
    sub-int v3, p2, v3

    div-int/lit8 v3, v3, 0x2

    .line 349
    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 351
    :cond_6
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 352
    sget-object v1, Lcn/nubia/music/ui/ThemeColor;->syncobj:Ljava/lang/Object;

    monitor-enter v1

    .line 353
    if-ne p5, v8, :cond_7

    .line 355
    :cond_7
    :try_start_2
    sget-object v2, Lcn/nubia/music/ui/ThemeColor;->mMapBitmap:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, v6, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static getGridDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/BitmapDrawable;
    .locals 7

    .prologue
    const v6, 0x7f0200db

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 231
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 232
    :cond_0
    const/4 v0, 0x0

    .line 241
    :goto_0
    return-object v0

    .line 234
    :cond_1
    const/16 v0, 0xa

    if-ne p3, v0, :cond_2

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 235
    invoke-static/range {v1 .. v6}, Lcn/nubia/music/ui/ThemeColor;->getGridDrawable(Landroid/content/Context;IIDI)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    .line 236
    :cond_2
    const/16 v0, 0xb

    if-ne p3, v0, :cond_3

    .line 237
    const v6, 0x7f0200dd

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcn/nubia/music/ui/ThemeColor;->getGridDrawable(Landroid/content/Context;IIDI)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    .line 238
    :cond_3
    const/16 v0, 0xc

    if-ne p3, v0, :cond_4

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 239
    invoke-static/range {v1 .. v6}, Lcn/nubia/music/ui/ThemeColor;->getGridDrawable(Landroid/content/Context;IIDI)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    .line 241
    :cond_4
    const v6, 0x7f0200dc

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcn/nubia/music/ui/ThemeColor;->getGridDrawable(Landroid/content/Context;IIDI)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTextGridDrawable(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 361
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 362
    :cond_0
    const/4 v0, 0x0

    .line 386
    :goto_0
    return-object v0

    .line 365
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 366
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 367
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 368
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 369
    sget-object v2, Lcn/nubia/music/ui/ThemeColor;->iColorGrid:[I

    sget v3, Lcn/nubia/music/ui/ThemeColor;->iColorTheme:I

    aget v2, v2, v3

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 370
    int-to-float v3, p1

    int-to-float v4, p2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 371
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v8, v8, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 372
    invoke-static {}, Lcn/nubia/music/utils/ResHelper;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 373
    const/high16 v3, 0x41d00000    # 26.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    .line 374
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v3, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 375
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 376
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 377
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 378
    const v2, 0xffffff

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 379
    const/16 v2, 0xde

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 380
    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 381
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v7

    iget v7, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v4, v7

    iget v7, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v4, v7

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v2, v3, v2

    .line 384
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 385
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {v0, p3, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object v0, v6

    .line 386
    goto :goto_0
.end method

.method private static setDarkStatusIcon(Landroid/view/Window;Z)V
    .locals 2

    .prologue
    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    .line 188
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 191
    if-eqz p1, :cond_1

    .line 192
    or-int/lit16 v0, v0, 0x2000

    .line 196
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 199
    :cond_0
    return-void

    .line 194
    :cond_1
    and-int/lit16 v0, v0, -0x2001

    goto :goto_0
.end method

.method public static setStatusBarWhite(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/high16 v3, 0x4000000

    const/high16 v2, -0x80000000

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 177
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 178
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 180
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 182
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 184
    :cond_0
    return-void
.end method
