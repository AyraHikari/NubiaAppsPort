.class public Lcom/zte/mifavor/widget/ListViewMFV;
.super Landroid/widget/ListView;
.source "ListViewMFV.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final SCROLL_RATIO:F = 0.45f

.field private static final TAG:Ljava/lang/String; = "ListViewMFV"


# instance fields
.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mHasMfvFrameworkMod:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ListViewMFV;->mHasMfvFrameworkMod:Z

    .line 68
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListViewMFV;->initListViewMFV()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ListViewMFV;->mHasMfvFrameworkMod:Z

    .line 73
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListViewMFV;->initListViewMFV()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ListViewMFV;->mHasMfvFrameworkMod:Z

    .line 78
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListViewMFV;->initListViewMFV()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ListViewMFV;->mHasMfvFrameworkMod:Z

    .line 83
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListViewMFV;->initListViewMFV()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ListViewMFV;->mHasMfvFrameworkMod:Z

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListViewMFV;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListViewMFV;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListViewMFV;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListViewMFV;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 120
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public initListViewMFV()V
    .locals 5

    const-string v0, "ListViewMFV"

    const-string v1, "initListViewMFV begin"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mMfvEdgeAnim"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 93
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListViewMFV;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/zte/extres/R$dimen;->mfvc_over_distance:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const-string v3, "mOverflingDistance"

    .line 96
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 97
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "mOverscrollDistance"

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/ListViewMFV;->mHasMfvFrameworkMod:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 106
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ListViewMFV;->mHasMfvFrameworkMod:Z

    const-string p0, "ListViewMFV"

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initListViewMFV e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 10

    move-object v0, p0

    .line 148
    iget-boolean v1, v0, Lcom/zte/mifavor/widget/ListViewMFV;->mHasMfvFrameworkMod:Z

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

    .line 154
    invoke-super/range {v0 .. v9}, Landroid/widget/ListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method public setOverScrollMode(I)V
    .locals 2

    .line 125
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 126
    iget-boolean p1, p0, Lcom/zte/mifavor/widget/ListViewMFV;->mHasMfvFrameworkMod:Z

    if-eqz p1, :cond_0

    .line 128
    :try_start_0
    const-class p1, Landroid/widget/AbsListView;

    const-string v0, "mEdgeGlowTop"

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 132
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/zte/mifavor/widget/ListViewMFV;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const-string v0, "mEdgeGlowBottom"

    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 135
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 136
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EdgeEffect;

    iput-object p1, p0, Lcom/zte/mifavor/widget/ListViewMFV;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ListViewMFV"

    .line 139
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
