.class public Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;
.super Ljava/lang/Object;
.source "PointersState.java"


# static fields
.field public static final MAX_POINTERS:I = 0xa


# instance fields
.field private final pointers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;->pointers:Ljava/util/List;

    return-void
.end method

.method private cleanUp()V
    .locals 3

    .prologue
    .line 96
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;->pointers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 97
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;->pointers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;

    .line 98
    .local v1, "pointer":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;
    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;->isUp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;->pointers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 96
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 102
    .end local v1    # "pointer":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;
    :cond_1
    return-void
.end method

.method private indexOf(J)I
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 15
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;->pointers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 16
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;->pointers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;

    .line 17
    .local v1, "pointer":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;
    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 21
    .end local v0    # "i":I
    .end local v1    # "pointer":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;
    :goto_1
    return v0

    .line 15
    .restart local v0    # "i":I
    .restart local v1    # "pointer":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    .end local v1    # "pointer":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private isLocalIdAvailable(I)Z
    .locals 3
    .param p1, "localId"    # I

    .prologue
    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;->pointers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 26
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;->pointers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;

    .line 27
    .local v1, "pointer":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;
    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;->getLocalId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 28
    const/4 v2, 0x0

    .line 31
    .end local v1    # "pointer":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;
    :goto_1
    return v2

    .line 25
    .restart local v1    # "pointer":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    .end local v1    # "pointer":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private nextUnusedLocalId()I
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x0

    .local v0, "localId":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 36
    invoke-direct {p0, v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;->isLocalIdAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    .end local v0    # "localId":I
    :goto_1
    return v0

    .line 35
    .restart local v0    # "localId":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public get(I)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;->pointers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;

    return-object v0
.end method

.method public getPointerIndex(J)I
    .locals 7
    .param p1, "id"    # J

    .prologue
    const/4 v3, -0x1

    .line 48
    invoke-direct {p0, p1, p2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;->indexOf(J)I

    move-result v0

    .line 49
    .local v0, "index":I
    if-eq v0, v3, :cond_0

    .line 65
    .end local v0    # "index":I
    :goto_0
    return v0

    .line 53
    .restart local v0    # "index":I
    :cond_0
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;->pointers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_1

    move v0, v3

    .line 55
    goto :goto_0

    .line 58
    :cond_1
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;->nextUnusedLocalId()I

    move-result v1

    .line 59
    .local v1, "localId":I
    if-ne v1, v3, :cond_2

    .line 60
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "pointers.size() < maxFingers implies that a local id is available"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 62
    :cond_2
    new-instance v2, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;

    invoke-direct {v2, p1, p2, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;-><init>(JI)V

    .line 63
    .local v2, "pointer":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;->pointers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;->pointers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    goto :goto_0
.end method

.method public update([Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)I
    .locals 6
    .param p1, "props"    # [Landroid/view/MotionEvent$PointerProperties;
    .param p2, "coords"    # [Landroid/view/MotionEvent$PointerCoords;

    .prologue
    .line 76
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;->pointers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 77
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 78
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;->pointers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;

    .line 81
    .local v3, "pointer":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;
    aget-object v4, p1, v1

    invoke-virtual {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;->getLocalId()I

    move-result v5

    iput v5, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 83
    invoke-virtual {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;->getPoint()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    move-result-object v2

    .line 84
    .local v2, "point":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;
    aget-object v4, p2, v1

    invoke-virtual {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->getX()I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 85
    aget-object v4, p2, v1

    invoke-virtual {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->getY()I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 86
    aget-object v4, p2, v1

    invoke-virtual {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;->getPressure()F

    move-result v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v2    # "point":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;
    .end local v3    # "pointer":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;
    :cond_0
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PointersState;->cleanUp()V

    .line 89
    return v0
.end method
