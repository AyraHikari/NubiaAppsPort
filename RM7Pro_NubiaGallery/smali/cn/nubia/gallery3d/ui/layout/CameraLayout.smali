.class public Lcn/nubia/gallery3d/ui/layout/CameraLayout;
.super Lcn/nubia/gallery3d/ui/layout/Layout;
.source "CameraLayout.java"


# static fields
.field private static final INVALID_INDEX:I = -0x1

.field private static final MAX_ACTIVE_CLUSTERS:I = 0x6


# instance fields
.field private mActiveClusters:[I

.field private mClustering:Lcn/nubia/gallery3d/data/CameraClustering;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout$Spec;Lcn/nubia/gallery3d/data/CameraClustering;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/ui/layout/Layout;-><init>(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout$Spec;)V

    .line 24
    iput-object p3, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mClustering:Lcn/nubia/gallery3d/data/CameraClustering;

    .line 25
    new-instance p1, Lcn/nubia/gallery3d/ui/layout/CameraLayout$1;

    invoke-direct {p1, p0}, Lcn/nubia/gallery3d/ui/layout/CameraLayout$1;-><init>(Lcn/nubia/gallery3d/ui/layout/CameraLayout;)V

    invoke-virtual {p3, p1}, Lcn/nubia/gallery3d/data/CameraClustering;->setJobDoneListener(Lcn/nubia/gallery3d/data/NubiaClustering$JobDoneListener;)V

    return-void
.end method

.method private getClusterIndex(FFLcn/nubia/gallery3d/ui/ClusterHeader;)I
    .locals 7

    .line 235
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->WIDE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mScrollPosition:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-int/2addr p1, v0

    .line 236
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-boolean v2, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->WIDE:Z

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mScrollPosition:I

    :goto_1
    add-int/2addr v0, v2

    .line 238
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->get()I

    move-result v2

    sub-int/2addr p1, v2

    .line 239
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->get()I

    move-result v2

    sub-int/2addr v0, v2

    .line 241
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mWidth:I

    invoke-virtual {p3}, Lcn/nubia/gallery3d/ui/ClusterHeader;->getSelectTextWidth()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt p1, v2, :cond_7

    if-gez v0, :cond_2

    goto :goto_4

    .line 245
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mClustering:Lcn/nubia/gallery3d/data/CameraClustering;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/CameraClustering;->getClusters()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    .line 246
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->INDEX_NONE:I

    .line 249
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 250
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->getPosition()I

    move-result v3

    .line 251
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->getContentLength()I

    move-result v4

    add-int/2addr v4, v3

    if-lt v0, v3, :cond_4

    if-gt v0, v4, :cond_4

    sub-int v3, v0, v3

    .line 255
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mClustering:Lcn/nubia/gallery3d/data/CameraClustering;

    iget v5, v5, Lcn/nubia/gallery3d/data/CameraClustering;->mHeaderHeight:I

    sub-int/2addr v3, v5

    if-gtz v3, :cond_3

    goto :goto_3

    .line 261
    :cond_3
    invoke-virtual {p3}, Lcn/nubia/gallery3d/ui/ClusterHeader;->getOffsetY()I

    move-result v3

    iget v5, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mScrollPosition:I

    iget-object v6, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mClustering:Lcn/nubia/gallery3d/data/CameraClustering;

    iget v6, v6, Lcn/nubia/gallery3d/data/CameraClustering;->mHeaderHeight:I

    sub-int v6, v4, v6

    sub-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    neg-int v3, v3

    .line 262
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mClustering:Lcn/nubia/gallery3d/data/CameraClustering;

    iget v5, v5, Lcn/nubia/gallery3d/data/CameraClustering;->mHeaderHeight:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_5

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mScrollPosition:I

    if-ge v3, v4, :cond_5

    goto :goto_3

    .line 268
    :cond_4
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->INDEX_NONE:I

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_3
    return v1

    .line 242
    :cond_7
    :goto_4
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->INDEX_NONE:I

    return p1
.end method

.method private getSlotIndex(FFZ)I
    .locals 8

    .line 163
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->WIDE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mScrollPosition:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-int/2addr p1, v0

    .line 164
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->WIDE:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mScrollPosition:I

    :goto_1
    add-int/2addr p2, v0

    .line 166
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->get()I

    move-result v0

    sub-int/2addr p1, v0

    .line 167
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->get()I

    move-result v0

    sub-int/2addr p2, v0

    if-ltz p1, :cond_10

    if-gez p2, :cond_2

    goto/16 :goto_6

    .line 173
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mClustering:Lcn/nubia/gallery3d/data/CameraClustering;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/CameraClustering;->getClusters()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 174
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->INDEX_NONE:I

    move v3, v2

    move v2, v1

    .line 178
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_f

    .line 179
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->getPosition()I

    move-result v4

    .line 180
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;

    invoke-virtual {v5}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->getContentLength()I

    move-result v5

    add-int/2addr v5, v4

    if-lt p2, v4, :cond_e

    if-gt p2, v5, :cond_e

    sub-int v3, p2, v4

    .line 185
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mClustering:Lcn/nubia/gallery3d/data/CameraClustering;

    iget v4, v4, Lcn/nubia/gallery3d/data/CameraClustering;->mHeaderHeight:I

    sub-int/2addr v3, v4

    if-gtz v3, :cond_4

    if-eqz p3, :cond_3

    return v2

    .line 192
    :cond_3
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->INDEX_NONE:I

    return p1

    .line 195
    :cond_4
    iget v4, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotWidth:I

    iget v5, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotGap:I

    add-int/2addr v4, v5

    div-int v4, p1, v4

    .line 196
    iget v5, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotHeight:I

    iget v6, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotGap:I

    add-int/2addr v5, v6

    div-int/2addr v3, v5

    .line 198
    iget-boolean v5, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->WIDE:Z

    if-nez v5, :cond_5

    iget v5, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mUnitCount:I

    if-lt v4, v5, :cond_5

    .line 199
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->INDEX_NONE:I

    return p1

    .line 202
    :cond_5
    iget-boolean v5, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->WIDE:Z

    if-eqz v5, :cond_6

    iget v5, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mUnitCount:I

    if-lt v3, v5, :cond_6

    .line 203
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->INDEX_NONE:I

    return p1

    .line 206
    :cond_6
    iget v5, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotWidth:I

    iget v6, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotGap:I

    add-int/2addr v5, v6

    rem-int v5, p1, v5

    iget v6, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotWidth:I

    iget v7, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotGap:I

    add-int/2addr v6, v7

    if-lt v5, v6, :cond_7

    .line 207
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->INDEX_NONE:I

    return p1

    .line 210
    :cond_7
    iget v5, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotHeight:I

    iget v6, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotGap:I

    add-int/2addr v5, v6

    rem-int v5, p2, v5

    iget v6, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotHeight:I

    if-lt v5, v6, :cond_8

    .line 211
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->INDEX_NONE:I

    return p1

    .line 214
    :cond_8
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLayoutRTLNubia()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 215
    iget-boolean v5, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->WIDE:Z

    if-eqz v5, :cond_9

    iget v5, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mUnitCount:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mUnitCount:I

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    goto :goto_3

    :cond_9
    iget v5, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mUnitCount:I

    mul-int/2addr v3, v5

    iget v5, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mUnitCount:I

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v3, v5

    sub-int v4, v3, v4

    goto :goto_3

    .line 217
    :cond_a
    iget-boolean v5, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->WIDE:Z

    if-eqz v5, :cond_b

    iget v5, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mUnitCount:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v3

    goto :goto_3

    :cond_b
    iget v5, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mUnitCount:I

    mul-int/2addr v3, v5

    add-int/2addr v3, v4

    move v4, v3

    :goto_3
    if-eqz p3, :cond_d

    .line 221
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->size()I

    move-result v3

    if-lt v4, v3, :cond_c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->size()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    :cond_c
    add-int/2addr v4, v2

    goto :goto_4

    .line 224
    :cond_d
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->size()I

    move-result v3

    if-lt v4, v3, :cond_c

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->INDEX_NONE:I

    move v4, v3

    :goto_4
    move v3, v4

    goto :goto_5

    .line 228
    :cond_e
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->size()I

    move-result v4

    add-int/2addr v2, v4

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_f
    return v3

    .line 170
    :cond_10
    :goto_6
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->INDEX_NONE:I

    return p1
.end method


# virtual methods
.method public getActiveClusters()[I
    .locals 1

    .line 322
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mActiveClusters:[I

    return-object v0
.end method

.method public getClusterIndexByPosition(FFLcn/nubia/gallery3d/ui/ClusterHeader;)I
    .locals 0

    .line 158
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->getClusterIndex(FFLcn/nubia/gallery3d/ui/ClusterHeader;)I

    move-result p1

    .line 159
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mClustering:Lcn/nubia/gallery3d/data/CameraClustering;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/CameraClustering;->getClusters()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    if-lt p1, p2, :cond_0

    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->INDEX_NONE:I

    :cond_0
    return p1
.end method

.method public getClusters()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;",
            ">;"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mClustering:Lcn/nubia/gallery3d/data/CameraClustering;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/CameraClustering;->getClusters()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSlotIndexByPosition(FF)I
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->getSlotIndex(FFZ)I

    move-result p1

    .line 153
    iget p2, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotCount:I

    if-lt p1, p2, :cond_0

    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->INDEX_NONE:I

    :cond_0
    return p1
.end method

.method public getSlotMaxIndexByPosition(FF)I
    .locals 1

    const/4 v0, 0x1

    .line 146
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->getSlotIndex(FFZ)I

    move-result p1

    .line 147
    iget p2, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotCount:I

    if-lt p1, p2, :cond_0

    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotCount:I

    :cond_0
    return p1
.end method

.method public getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6

    .line 105
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mClustering:Lcn/nubia/gallery3d/data/CameraClustering;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/CameraClustering;->getClusters()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;

    .line 110
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->size()I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ge v4, p1, :cond_0

    .line 111
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    sub-int v1, p1, v2

    .line 114
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->getPosition()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    .line 121
    :goto_1
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->WIDE:Z

    if-eqz v0, :cond_2

    .line 122
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mUnitCount:I

    div-int v0, v1, v0

    .line 123
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mUnitCount:I

    mul-int/2addr v2, v0

    sub-int/2addr v1, v2

    goto :goto_2

    .line 125
    :cond_2
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mUnitCount:I

    div-int v0, v1, v0

    .line 126
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mUnitCount:I

    mul-int/2addr v2, v0

    sub-int/2addr v1, v2

    move v5, v1

    move v1, v0

    move v0, v5

    .line 129
    :goto_2
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLayoutRTLNubia()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mUnitCount:I

    add-int/lit8 v2, v2, -0x1

    sub-int v0, v2, v0

    .line 132
    :cond_3
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mHorizontalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->get()I

    move-result v2

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotWidth:I

    iget v4, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotGap:I

    add-int/2addr v3, v4

    mul-int/2addr v0, v3

    add-int/2addr v2, v0

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    add-int/2addr v2, v0

    .line 134
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mVerticalPadding:Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout$IntegerAnimation;->get()I

    move-result v0

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotHeight:I

    iget v4, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotGap:I

    add-int/2addr v3, v4

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v1, v1, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    add-int/2addr v0, v1

    .line 136
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mClustering:Lcn/nubia/gallery3d/data/CameraClustering;

    iget v1, v1, Lcn/nubia/gallery3d/data/CameraClustering;->mHeaderHeight:I

    add-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 137
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotWidth:I

    add-int/2addr p1, v2

    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotHeight:I

    add-int/2addr v1, v0

    invoke-virtual {p2, v2, v0, p1, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-object p2
.end method

.method protected initLayoutParameters()V
    .locals 13

    .line 289
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 290
    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotGap:I

    .line 291
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotWidth:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotWidth:I

    .line 292
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotHeight:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotHeight:I

    goto :goto_2

    .line 294
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mWidth:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mHeight:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->rowsLand:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->rowsPort:I

    .line 295
    :goto_0
    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mWidth:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mHeight:I

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v1, v1, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotGapLand:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v1, v1, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotGap:I

    :goto_1
    iput v1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotGap:I

    .line 296
    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mWidth:I

    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotGap:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    iget v2, v2, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/2addr v1, v0

    const/4 v0, 0x1

    .line 297
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotWidth:I

    .line 300
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotWidth:I

    iput v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotHeight:I

    .line 303
    :goto_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mRenderer:Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;

    if-eqz v0, :cond_3

    .line 304
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mRenderer:Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;

    iget v1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotWidth:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotHeight:I

    invoke-interface {v0, v1, v2}, Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;->onSlotSizeChanged(II)V

    .line 307
    :cond_3
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->WIDE:Z

    if-eqz v0, :cond_4

    .line 308
    iget v2, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mWidth:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mHeight:I

    iget v4, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotWidth:I

    iget v5, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotHeight:I

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->initLayoutParameters(IIII[I)V

    goto :goto_3

    .line 310
    :cond_4
    iget v8, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mHeight:I

    iget v9, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mWidth:I

    iget v10, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotHeight:I

    iget v11, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotWidth:I

    const/4 v12, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->initLayoutParameters(IIII[I)V

    .line 312
    :goto_3
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->updateVisibleSlotRange()V

    .line 314
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mRenderer:Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;

    check-cast v0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->forceInvalidate()V

    return-void
.end method

.method protected initLayoutParameters(IIII[I)V
    .locals 0

    .line 278
    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotGap:I

    add-int/2addr p2, p1

    iget p1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotGap:I

    add-int/2addr p4, p1

    div-int/2addr p2, p4

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 281
    :cond_0
    iput p2, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mUnitCount:I

    .line 283
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mClustering:Lcn/nubia/gallery3d/data/CameraClustering;

    iget p2, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mUnitCount:I

    iget p3, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotWidth:I

    iget p4, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotGap:I

    invoke-virtual {p1, p2, p3, p4}, Lcn/nubia/gallery3d/data/CameraClustering;->computeContentLength(III)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mContentLength:I

    return-void
.end method

.method protected updateVisibleSlotRange()V
    .locals 14

    .line 35
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mScrollPosition:I

    const/4 v1, 0x6

    new-array v2, v1, [I

    .line 37
    iput-object v2, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mActiveClusters:[I

    const/4 v2, 0x0

    move v3, v2

    .line 38
    :goto_0
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mActiveClusters:[I

    array-length v5, v4

    if-ge v3, v5, :cond_0

    const/4 v5, -0x1

    .line 39
    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    :cond_0
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mClustering:Lcn/nubia/gallery3d/data/CameraClustering;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/CameraClustering;->getClusters()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    .line 44
    iget-boolean v4, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->WIDE:Z

    if-eqz v4, :cond_1

    goto/16 :goto_5

    .line 50
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;

    .line 51
    iget v9, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mHeight:I

    if-lt v4, v9, :cond_2

    goto/16 :goto_4

    .line 55
    :cond_2
    invoke-virtual {v8}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->getPosition()I

    move-result v9

    .line 58
    invoke-virtual {v8}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->getContentLength()I

    move-result v10

    add-int/2addr v10, v9

    if-gt v10, v0, :cond_3

    .line 59
    invoke-virtual {v8}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->size()I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_1

    .line 62
    :cond_3
    iget v10, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mHeight:I

    add-int/2addr v10, v0

    if-lt v9, v10, :cond_4

    goto/16 :goto_4

    :cond_4
    if-ge v6, v1, :cond_5

    .line 66
    iget-object v10, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mActiveClusters:[I

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v8}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->getIndex()I

    move-result v12

    aput v12, v10, v6

    move v6, v11

    :cond_5
    sub-int v10, v0, v9

    .line 68
    iget-object v11, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mClustering:Lcn/nubia/gallery3d/data/CameraClustering;

    iget v11, v11, Lcn/nubia/gallery3d/data/CameraClustering;->mHeaderHeight:I

    sub-int/2addr v10, v11

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 70
    iget v11, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotHeight:I

    iget v12, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotGap:I

    add-int/2addr v11, v12

    div-int v11, v10, v11

    .line 71
    iget v12, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mUnitCount:I

    mul-int/2addr v12, v11

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-gt v9, v0, :cond_6

    add-int/2addr v5, v11

    move v7, v5

    :cond_6
    if-lez v10, :cond_7

    .line 80
    invoke-virtual {v8}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->getContentLength()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v9, v0

    goto :goto_2

    .line 83
    :cond_7
    invoke-virtual {v8}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->getContentLength()I

    move-result v10

    iget v12, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mHeight:I

    add-int/2addr v12, v0

    sub-int/2addr v12, v9

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 86
    :goto_2
    iget v10, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mHeight:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-lez v9, :cond_8

    goto :goto_3

    :cond_8
    move v9, v2

    .line 89
    :goto_3
    iget v10, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotHeight:I

    add-int/2addr v10, v9

    iget v12, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotGap:I

    add-int/2addr v10, v12

    add-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    iget v12, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotHeight:I

    iget v13, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotGap:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    div-float/2addr v10, v12

    float-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v10, v12

    .line 92
    invoke-virtual {v8}, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;->size()I

    move-result v8

    sub-int/2addr v8, v11

    iget v11, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mUnitCount:I

    mul-int/2addr v11, v10

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v4, v9

    goto/16 :goto_1

    .line 97
    :cond_9
    :goto_4
    iget v0, p0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->mSlotCount:I

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 98
    invoke-virtual {p0, v5, v0}, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->setVisibleRange(II)V

    :goto_5
    return-void
.end method
