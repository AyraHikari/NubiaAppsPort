.class public Lcom/zte/mifavor/widget/ScrollViewMFV;
.super Landroid/widget/ScrollView;
.source "ScrollViewMFV.java"


# static fields
.field private static final SCROLL_RATIO:F = 0.45f

.field private static final TAG:Ljava/lang/String; = "ScrollViewMFV"


# instance fields
.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mHasMfvFrameworkMod:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ScrollViewMFV;->mHasMfvFrameworkMod:Z

    .line 71
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ScrollViewMFV;->initScrollViewMFV()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ScrollViewMFV;->mHasMfvFrameworkMod:Z

    .line 76
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ScrollViewMFV;->initScrollViewMFV()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ScrollViewMFV;->mHasMfvFrameworkMod:Z

    .line 81
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ScrollViewMFV;->initScrollViewMFV()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ScrollViewMFV;->mHasMfvFrameworkMod:Z

    .line 86
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ScrollViewMFV;->initScrollViewMFV()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ScrollViewMFV;->mHasMfvFrameworkMod:Z

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/zte/mifavor/widget/ScrollViewMFV;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/zte/mifavor/widget/ScrollViewMFV;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ScrollViewMFV;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/zte/mifavor/widget/ScrollViewMFV;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 124
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public initScrollViewMFV()V
    .locals 5

    .line 91
    :try_start_0
    const-class v0, Landroid/widget/ScrollView;

    const-string v1, "mMfvEdgeAnim"

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 94
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ScrollViewMFV;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/zte/extres/R$dimen;->mfvc_over_distance:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const-string v3, "mOverflingDistance"

    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 98
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "mOverscrollDistance"

    .line 101
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "ScrollViewMFV"

    const-string v1, "initScrollViewMFV success"

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/ScrollViewMFV;->mHasMfvFrameworkMod:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 108
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ScrollViewMFV;->mHasMfvFrameworkMod:Z

    const-string p0, "ScrollViewMFV"

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initScrollViewMFV e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 10

    move-object v0, p0

    .line 151
    iget-boolean v1, v0, Lcom/zte/mifavor/widget/ScrollViewMFV;->mHasMfvFrameworkMod:Z

    if-eqz v1, :cond_0

    move v1, p2

    int-to-float v2, v1

    const v3, 0x3ee66666    # 0.45f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_0
    move v1, p2

    :cond_1
    move v2, v1

    :goto_0
    move-object v0, p0

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 157
    invoke-super/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method public setOverScrollMode(I)V
    .locals 2

    .line 129
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 130
    iget-boolean p1, p0, Lcom/zte/mifavor/widget/ScrollViewMFV;->mHasMfvFrameworkMod:Z

    if-eqz p1, :cond_0

    .line 132
    :try_start_0
    const-class p1, Landroid/widget/ScrollView;

    const-string v0, "mEdgeGlowTop"

    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 136
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/zte/mifavor/widget/ScrollViewMFV;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const-string v0, "mEdgeGlowBottom"

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 139
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 140
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EdgeEffect;

    iput-object p1, p0, Lcom/zte/mifavor/widget/ScrollViewMFV;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ScrollViewMFV"

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOverScrollMode e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
