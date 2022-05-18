.class public Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->x:I

    .line 11
    iput p2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->y:I

    .line 12
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 24
    if-ne p0, p1, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v1

    .line 27
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 28
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 30
    check-cast v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    .line 31
    .local v0, "point":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;
    iget v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->x:I

    iget v4, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->x:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->y:I

    iget v4, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->y:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->y:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Point{x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
