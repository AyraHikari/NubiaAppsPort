.class public Lcn/nubia/gallery3d/ui/ClusterHeader;
.super Ljava/lang/Object;
.source "ClusterHeader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClusterHeader"


# instance fields
.field private MASK_COLOR:I

.field private mDateTextColor:I

.field private mDateTextSize:I

.field private mHeight:I

.field private mOffsetX:I

.field private mOffsetY:I

.field private mPaint:Landroid/text/TextPaint;

.field private mSelectOffsetX:I

.field private mSelectText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

.field private mSelectTextColor:I

.field private mSelectTextPaint:Landroid/text/TextPaint;

.field private mSelectTextSize:I

.field private mSelectTextWidth:I

.field private mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

.field private mTextureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/nubia/gallery3d/glrenderer/StringTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mUnSelectText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

.field private mUnSelectTextWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/gallery3d/ui/SelectionManager;)V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x190e0e0f

    .line 21
    iput v0, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->MASK_COLOR:I

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    const p2, 0x7f07007e

    .line 45
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mHeight:I

    const p2, 0x7f07007f

    .line 46
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mOffsetX:I

    const p2, 0x7f070080

    .line 47
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mOffsetY:I

    const p2, 0x7f07007d

    .line 48
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mDateTextSize:I

    .line 49
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNight(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0600f2

    .line 50
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mDateTextColor:I

    goto :goto_0

    :cond_0
    const p1, 0x7f060056

    .line 52
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mDateTextColor:I

    :goto_0
    const p1, 0x7f06003c

    .line 54
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->MASK_COLOR:I

    .line 55
    iget p1, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mDateTextSize:I

    int-to-float p1, p1

    iget p2, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mDateTextColor:I

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getNoShadowPaint(FI)Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mPaint:Landroid/text/TextPaint;

    const p1, 0x7f070081

    .line 57
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectOffsetX:I

    const p1, 0x7f070082

    .line 58
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectTextSize:I

    const p1, 0x7f06008b

    .line 59
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectTextColor:I

    .line 60
    iget p2, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectTextSize:I

    int-to-float p2, p2

    invoke-static {p2, p1}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getBoldPaint(FI)Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectTextPaint:Landroid/text/TextPaint;

    const p1, 0x7f1001df

    .line 61
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectTextPaint:Landroid/text/TextPaint;

    invoke-static {p2, v1}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    const p2, 0x7f100259

    .line 62
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mUnSelectText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    .line 63
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectTextWidth:I

    .line 64
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mUnSelectTextWidth:I

    .line 66
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mTextureMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clearTexture()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mTextureMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 129
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/glrenderer/StringTexture;

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v1}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->recycle()V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mTextureMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public drawHeader(Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V
    .locals 11

    .line 78
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->getPosition()I

    move-result v0

    .line 79
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->getContentLength()I

    move-result v1

    .line 81
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->getCaption()Ljava/lang/String;

    move-result-object v2

    .line 82
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mTextureMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/glrenderer/StringTexture;

    if-nez v3, :cond_0

    .line 84
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mPaint:Landroid/text/TextPaint;

    invoke-static {v2, v3}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object v3

    .line 85
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mTextureMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_0
    iget v2, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mOffsetX:I

    .line 89
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLayoutRTLNubia()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    iget v2, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mOffsetX:I

    sub-int v2, p4, v2

    invoke-virtual {v3}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    .line 92
    :cond_1
    iget v4, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mHeight:I

    iget v5, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mOffsetY:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 96
    iget v5, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mOffsetY:I

    add-int v6, v0, v5

    if-gt p3, v6, :cond_3

    sub-int/2addr v0, p3

    const/4 v6, 0x0

    int-to-float v7, v0

    int-to-float v8, p4

    .line 98
    iget p3, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mHeight:I

    int-to-float v9, p3

    const v10, 0xffffff

    move-object v5, p2

    invoke-interface/range {v5 .. v10}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    add-int/2addr v0, v4

    .line 99
    invoke-virtual {v3, p2, v2, v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 100
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p3}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p3}, Lcn/nubia/gallery3d/ui/SelectionManager;->isInMultiSelectionMode()Z

    move-result p3

    if-nez p3, :cond_5

    .line 101
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->getIndexSet()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->isClusterSelected(Ljava/util/HashSet;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 102
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mUnSelectText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    iget p3, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mUnSelectTextWidth:I

    sub-int/2addr p4, p3

    iget p3, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectOffsetX:I

    sub-int/2addr p4, p3

    invoke-virtual {p1, p2, p4, v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    iget p3, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectTextWidth:I

    sub-int/2addr p4, p3

    iget p3, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectOffsetX:I

    sub-int/2addr p4, p3

    invoke-virtual {p1, p2, p4, v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    :cond_3
    add-int/2addr v0, v1

    if-ge p3, v0, :cond_5

    .line 108
    iget v1, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mHeight:I

    sub-int/2addr v0, v1

    sub-int/2addr p3, v0

    invoke-static {v5, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    neg-int p3, p3

    const/4 v6, 0x0

    int-to-float v7, p3

    int-to-float v8, p4

    .line 109
    iget v0, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mHeight:I

    int-to-float v9, v0

    iget v10, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->MASK_COLOR:I

    move-object v5, p2

    invoke-interface/range {v5 .. v10}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    add-int/2addr p3, v4

    .line 110
    invoke-virtual {v3, p2, v2, p3}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 111
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->isInMultiSelectionMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 112
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->getIndexSet()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->isClusterSelected(Ljava/util/HashSet;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 113
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mUnSelectText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    iget v0, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mUnSelectTextWidth:I

    sub-int/2addr p4, v0

    iget v0, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectOffsetX:I

    sub-int/2addr p4, v0

    invoke-virtual {p1, p2, p4, p3}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 115
    :cond_4
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    iget v0, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectTextWidth:I

    sub-int/2addr p4, v0

    iget v0, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectOffsetX:I

    sub-int/2addr p4, v0

    invoke-virtual {p1, p2, p4, p3}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    :cond_5
    :goto_0
    return-void
.end method

.method public getOffsetY()I
    .locals 1

    .line 138
    iget v0, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mOffsetY:I

    return v0
.end method

.method public getSelectTextWidth()I
    .locals 2

    .line 70
    iget v0, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectTextWidth:I

    .line 71
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getInverseSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget v0, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mUnSelectTextWidth:I

    .line 74
    :cond_0
    iget v1, p0, Lcn/nubia/gallery3d/ui/ClusterHeader;->mSelectOffsetX:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method
