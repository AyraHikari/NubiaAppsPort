.class Lcn/nubia/gallery3d/glrenderer/GLES11Canvas$ConfigState;
.super Ljava/lang/Object;
.source "GLES11Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/glrenderer/GLES11Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigState"
.end annotation


# instance fields
.field mAlpha:F

.field mMatrix:[F

.field mNextFree:Lcn/nubia/gallery3d/glrenderer/GLES11Canvas$ConfigState;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 813
    iput-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mMatrix:[F

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/glrenderer/GLES11Canvas$1;)V
    .locals 0

    .line 811
    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/GLES11Canvas$ConfigState;-><init>()V

    return-void
.end method


# virtual methods
.method public restore(Lcn/nubia/gallery3d/glrenderer/GLES11Canvas;)V
    .locals 4

    .line 817
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLES11Canvas;->setAlpha(F)V

    .line 818
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mMatrix:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 819
    invoke-static {p1}, Lcn/nubia/gallery3d/glrenderer/GLES11Canvas;->access$100(Lcn/nubia/gallery3d/glrenderer/GLES11Canvas;)[F

    move-result-object p1

    const/16 v2, 0x10

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void
.end method
