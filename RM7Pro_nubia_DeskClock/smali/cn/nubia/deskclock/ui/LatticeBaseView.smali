.class public abstract Lcn/nubia/deskclock/ui/LatticeBaseView;
.super Landroid/view/View;
.source "LatticeBaseView.java"


# static fields
.field private static final DEFAULT_UNIT_WIDTH:F = 37.0f

.field private static final DEFAULT_WIDTH_RADIUS:F = 18.5f

.field private static final FEATURE_NAME:Ljava/lang/String; = "cn.nubia.smartface.feature.lattice.single_hall"

.field public static final LATTICE_UNIT_WIDTH:F

.field private static final LATTICE_WIDTH_RADIUS:F

.field private static final SPLIT_MARK:Ljava/lang/String; = "&"

.field private static final SYS_SMART_LATTICE_KEY:Ljava/lang/String; = "37"

.field private static final SYS_SMART_LATTICE_TYPE:Ljava/lang/String; = "persist.sys.lattice"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24
    const-string v2, "persist.sys.lattice"

    const-string v3, "37"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "size":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 27
    :cond_0
    const/high16 v2, 0x42140000    # 37.0f

    sput v2, Lcn/nubia/deskclock/ui/LatticeBaseView;->LATTICE_UNIT_WIDTH:F

    .line 28
    const/high16 v2, 0x41940000    # 18.5f

    sput v2, Lcn/nubia/deskclock/ui/LatticeBaseView;->LATTICE_WIDTH_RADIUS:F

    .line 34
    :goto_0
    return-void

    .line 30
    :cond_1
    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "arr":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    sput v2, Lcn/nubia/deskclock/ui/LatticeBaseView;->LATTICE_UNIT_WIDTH:F

    .line 32
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    sput v2, Lcn/nubia/deskclock/ui/LatticeBaseView;->LATTICE_WIDTH_RADIUS:F

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/LatticeBaseView;->mPaint:Landroid/graphics/Paint;

    .line 39
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/LatticeBaseView;->initView(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/LatticeBaseView;->mPaint:Landroid/graphics/Paint;

    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/LatticeBaseView;->initView(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/LatticeBaseView;->mPaint:Landroid/graphics/Paint;

    .line 49
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/LatticeBaseView;->initView(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 0
    .param p1, "mctx"    # Landroid/content/Context;

    .prologue
    .line 53
    iput-object p1, p0, Lcn/nubia/deskclock/ui/LatticeBaseView;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method


# virtual methods
.method protected abstract drawIcon(Landroid/graphics/Canvas;)V
.end method

.method protected drawIconByArrs(Landroid/graphics/Canvas;[[I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "arrs"    # [[I

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/deskclock/ui/LatticeBaseView;->drawIconByArrs(Landroid/graphics/Canvas;[[II)V

    .line 67
    return-void
.end method

.method protected drawIconByArrs(Landroid/graphics/Canvas;[[II)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "arrs"    # [[I
    .param p3, "num"    # I

    .prologue
    .line 70
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_3

    .line 71
    aget-object v3, p2, v11

    .line 72
    .local v3, "arr2":[I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v12, v0, :cond_2

    .line 73
    aget-object v17, p2, v11

    aget v15, v17, v12

    .line 74
    .local v15, "status":I
    if-nez v15, :cond_0

    .line 72
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 76
    :cond_0
    add-int v17, p3, v12

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcn/nubia/deskclock/ui/LatticeBaseView;->LATTICE_UNIT_WIDTH:F

    mul-float v13, v17, v18

    .line 77
    .local v13, "left":F
    int-to-float v0, v11

    move/from16 v17, v0

    sget v18, Lcn/nubia/deskclock/ui/LatticeBaseView;->LATTICE_UNIT_WIDTH:F

    mul-float v16, v17, v18

    .line 78
    .local v16, "top":F
    add-int v17, p3, v12

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcn/nubia/deskclock/ui/LatticeBaseView;->LATTICE_UNIT_WIDTH:F

    mul-float v14, v17, v18

    .line 79
    .local v14, "right":F
    add-int/lit8 v17, v11, 0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcn/nubia/deskclock/ui/LatticeBaseView;->LATTICE_UNIT_WIDTH:F

    mul-float v4, v17, v18

    .line 81
    .local v4, "bottom":F
    add-float v17, v13, v14

    const/high16 v18, 0x40000000    # 2.0f

    div-float v5, v17, v18

    .line 82
    .local v5, "centerX":F
    add-float v17, v16, v4

    const/high16 v18, 0x40000000    # 2.0f

    div-float v6, v17, v18

    .line 84
    .local v6, "centerY":F
    sget v17, Lcn/nubia/deskclock/ui/LatticeBaseView;->LATTICE_WIDTH_RADIUS:F

    sub-float v8, v5, v17

    .line 85
    .local v8, "dealLeft":F
    sget v17, Lcn/nubia/deskclock/ui/LatticeBaseView;->LATTICE_WIDTH_RADIUS:F

    sub-float v10, v6, v17

    .line 86
    .local v10, "dealTop":F
    sget v17, Lcn/nubia/deskclock/ui/LatticeBaseView;->LATTICE_WIDTH_RADIUS:F

    add-float v9, v5, v17

    .line 87
    .local v9, "dealRight":F
    sget v17, Lcn/nubia/deskclock/ui/LatticeBaseView;->LATTICE_WIDTH_RADIUS:F

    add-float v7, v6, v17

    .line 88
    .local v7, "dealBottom":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/ui/LatticeBaseView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const-string v18, "cn.nubia.smartface.feature.lattice.single_hall"

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 89
    sget v17, Lcn/nubia/deskclock/ui/LatticeBaseView;->LATTICE_WIDTH_RADIUS:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/ui/LatticeBaseView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 92
    :cond_1
    new-instance v17, Landroid/graphics/RectF;

    move-object/from16 v0, v17

    invoke-direct {v0, v8, v10, v9, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/ui/LatticeBaseView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 70
    .end local v4    # "bottom":F
    .end local v5    # "centerX":F
    .end local v6    # "centerY":F
    .end local v7    # "dealBottom":F
    .end local v8    # "dealLeft":F
    .end local v9    # "dealRight":F
    .end local v10    # "dealTop":F
    .end local v13    # "left":F
    .end local v14    # "right":F
    .end local v15    # "status":I
    .end local v16    # "top":F
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 98
    .end local v3    # "arr2":[I
    .end local v12    # "j":I
    :cond_3
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 62
    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/ui/LatticeBaseView;->drawIcon(Landroid/graphics/Canvas;)V

    .line 63
    return-void
.end method
