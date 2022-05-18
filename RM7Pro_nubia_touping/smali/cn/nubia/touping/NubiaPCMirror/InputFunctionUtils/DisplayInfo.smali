.class public final Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DisplayInfo;
.super Ljava/lang/Object;
.source "DisplayInfo.java"


# static fields
.field public static final FLAG_SUPPORTS_PROTECTED_BUFFERS:I = 0x1


# instance fields
.field private final displayId:I

.field private final flags:I

.field private final layerStack:I

.field private final rotation:I

.field private final size:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;


# direct methods
.method public constructor <init>(ILcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;III)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "size"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;
    .param p3, "rotation"    # I
    .param p4, "layerStack"    # I
    .param p5, "flags"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DisplayInfo;->displayId:I

    .line 14
    iput-object p2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DisplayInfo;->size:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    .line 15
    iput p3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DisplayInfo;->rotation:I

    .line 16
    iput p4, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DisplayInfo;->layerStack:I

    .line 17
    iput p5, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DisplayInfo;->flags:I

    .line 18
    return-void
.end method


# virtual methods
.method public getDisplayId()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DisplayInfo;->displayId:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DisplayInfo;->flags:I

    return v0
.end method

.method public getLayerStack()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DisplayInfo;->layerStack:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DisplayInfo;->rotation:I

    return v0
.end method

.method public getSize()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DisplayInfo;->size:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    return-object v0
.end method
