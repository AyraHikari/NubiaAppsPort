.class public final Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;
.super Ljava/lang/Object;
.source "ScreenInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenInfo"


# instance fields
.field private final contentRect:Landroid/graphics/Rect;

.field private final deviceRotation:I

.field private final lockedVideoOrientation:I

.field private final unlockedVideoSize:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;II)V
    .locals 0
    .param p1, "contentRect"    # Landroid/graphics/Rect;
    .param p2, "unlockedVideoSize"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;
    .param p3, "deviceRotation"    # I
    .param p4, "lockedVideoOrientation"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->contentRect:Landroid/graphics/Rect;

    .line 34
    iput-object p2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->unlockedVideoSize:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    .line 35
    iput p3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->deviceRotation:I

    .line 36
    iput p4, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->lockedVideoOrientation:I

    .line 37
    return-void
.end method

.method public static computeScreenInfo(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DisplayInfo;Landroid/graphics/Rect;II)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;
    .locals 7
    .param p0, "displayInfo"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DisplayInfo;
    .param p1, "crop"    # Landroid/graphics/Rect;
    .param p2, "maxSize"    # I
    .param p3, "lockedVideoOrientation"    # I

    .prologue
    const/4 v6, 0x0

    .line 89
    invoke-virtual {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DisplayInfo;->getRotation()I

    move-result v2

    .line 90
    .local v2, "rotation":I
    invoke-virtual {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DisplayInfo;->getSize()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    move-result-object v1

    .line 91
    .local v1, "deviceSize":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->getHeight()I

    move-result v5

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 92
    .local v0, "contentRect":Landroid/graphics/Rect;
    if-eqz p1, :cond_1

    .line 93
    rem-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_0

    .line 95
    invoke-static {p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->flipRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 97
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Crop rectangle ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->formatCrop(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") does not intersect device screen ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->toRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->formatCrop(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln;->w(Ljava/lang/String;)V

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "contentRect":Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 104
    .restart local v0    # "contentRect":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5, p2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->computeVideoSize(III)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    move-result-object v3

    .line 105
    .local v3, "videoSize":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;
    const-string v4, "ScreenInfo123"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "videoSize.toString() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v4, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;

    invoke-direct {v4, v0, v3, v2, p3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;-><init>(Landroid/graphics/Rect;Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;II)V

    return-object v4
.end method

.method private static computeVideoSize(III)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;
    .locals 7
    .param p0, "w"    # I
    .param p1, "h"    # I
    .param p2, "maxSize"    # I

    .prologue
    .line 119
    and-int/lit8 p0, p0, -0x8

    .line 120
    and-int/lit8 p1, p1, -0x8

    .line 121
    if-lez p2, :cond_2

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "flag":Z
    if-eqz v0, :cond_0

    rem-int/lit8 v5, p2, 0x8

    if-eqz v5, :cond_0

    .line 124
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "Max size must be a multiple of 8"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 126
    :cond_0
    if-le p1, p0, :cond_3

    const/4 v4, 0x1

    .line 127
    .local v4, "portrait":Z
    :goto_0
    if-eqz v4, :cond_4

    move v1, p1

    .line 128
    .local v1, "major":I
    :goto_1
    if-eqz v4, :cond_5

    move v2, p0

    .line 129
    .local v2, "minor":I
    :goto_2
    if-le v1, p2, :cond_1

    .line 130
    mul-int v5, v2, p2

    div-int v3, v5, v1

    .line 132
    .local v3, "minorExact":I
    add-int/lit8 v5, v3, 0x4

    and-int/lit8 v2, v5, -0x8

    .line 133
    move v1, p2

    .line 135
    .end local v3    # "minorExact":I
    :cond_1
    if-eqz v4, :cond_6

    move p0, v2

    .line 136
    :goto_3
    if-eqz v4, :cond_7

    move p1, v1

    .line 138
    .end local v0    # "flag":Z
    .end local v1    # "major":I
    .end local v2    # "minor":I
    .end local v4    # "portrait":Z
    :cond_2
    :goto_4
    new-instance v5, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    invoke-direct {v5, p0, p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;-><init>(II)V

    return-object v5

    .line 126
    .restart local v0    # "flag":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .restart local v4    # "portrait":Z
    :cond_4
    move v1, p0

    .line 127
    goto :goto_1

    .restart local v1    # "major":I
    :cond_5
    move v2, p1

    .line 128
    goto :goto_2

    .restart local v2    # "minor":I
    :cond_6
    move p0, v1

    .line 135
    goto :goto_3

    :cond_7
    move p1, v2

    .line 136
    goto :goto_4
.end method

.method private static flipRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .param p0, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 142
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private static formatCrop(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 2
    .param p0, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContentRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->contentRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDeviceRotation()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->deviceRotation:I

    return v0
.end method

.method public getReverseVideoRotation()I
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->lockedVideoOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 168
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->lockedVideoOrientation:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->deviceRotation:I

    sub-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public getUnlockedVideoSize()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->unlockedVideoSize:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    return-object v0
.end method

.method public getVideoRotation()I
    .locals 2

    .prologue
    .line 151
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->lockedVideoOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->deviceRotation:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->lockedVideoOrientation:I

    sub-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public getVideoSize()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->getVideoRotation()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->unlockedVideoSize:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    .line 62
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->unlockedVideoSize:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    invoke-virtual {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->rotate()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    move-result-object v0

    goto :goto_0
.end method

.method public withDeviceRotation(I)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;
    .locals 6
    .param p1, "newDeviceRotation"    # I

    .prologue
    .line 70
    iget v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->deviceRotation:I

    if-ne p1, v3, :cond_0

    .line 85
    .end local p0    # "this":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;
    :goto_0
    return-object p0

    .line 74
    .restart local p0    # "this":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;
    :cond_0
    iget v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->deviceRotation:I

    add-int/2addr v3, p1

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 77
    .local v2, "orientationChanged":Z
    :goto_1
    if-eqz v2, :cond_2

    .line 78
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->contentRect:Landroid/graphics/Rect;

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->flipRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 79
    .local v0, "newContentRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->unlockedVideoSize:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    invoke-virtual {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->rotate()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    move-result-object v1

    .line 84
    .local v1, "newUnlockedVideoSize":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;
    :goto_2
    const-string v3, "ScreenInfo123"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newUnlockedVideoSize.toString() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v3, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;

    iget v4, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->lockedVideoOrientation:I

    invoke-direct {v3, v0, v1, p1, v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;-><init>(Landroid/graphics/Rect;Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;II)V

    move-object p0, v3

    goto :goto_0

    .line 74
    .end local v0    # "newContentRect":Landroid/graphics/Rect;
    .end local v1    # "newUnlockedVideoSize":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;
    .end local v2    # "orientationChanged":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 81
    .restart local v2    # "orientationChanged":Z
    :cond_2
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->contentRect:Landroid/graphics/Rect;

    .line 82
    .restart local v0    # "newContentRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ScreenInfo;->unlockedVideoSize:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    .restart local v1    # "newUnlockedVideoSize":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;
    goto :goto_2
.end method
