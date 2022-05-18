.class public Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;
.super Ljava/lang/Object;
.source "Pointer.java"


# instance fields
.field private final id:J

.field private final localId:I

.field private point:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

.field private pressure:F

.field private up:Z


# direct methods
.method public constructor <init>(JI)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "localId"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;->id:J

    .line 21
    iput p3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;->localId:I

    .line 22
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;->id:J

    return-wide v0
.end method

.method public getLocalId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;->localId:I

    return v0
.end method

.method public getPoint()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;->point:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    return-object v0
.end method

.method public getPressure()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;->pressure:F

    return v0
.end method

.method public isUp()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;->up:Z

    return v0
.end method

.method public setPoint(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;)V
    .locals 0
    .param p1, "point"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    .prologue
    .line 37
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;->point:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    .line 38
    return-void
.end method

.method public setPressure(F)V
    .locals 0
    .param p1, "pressure"    # F

    .prologue
    .line 45
    iput p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;->pressure:F

    .line 46
    return-void
.end method

.method public setUp(Z)V
    .locals 0
    .param p1, "up"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Pointer;->up:Z

    .line 54
    return-void
.end method
