.class public final Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->width:I

    .line 13
    iput p2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->height:I

    .line 14
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 34
    if-ne p0, p1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v1

    .line 37
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 38
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 40
    check-cast v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    .line 41
    .local v0, "size":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;
    iget v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->width:I

    iget v4, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->width:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->height:I

    iget v4, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->height:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public rotate()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->height:I

    iget v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->width:I

    invoke-direct {v0, v1, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;-><init>(II)V

    return-object v0
.end method

.method public toRect()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->width:I

    iget v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->height:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
