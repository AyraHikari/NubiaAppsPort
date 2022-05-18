.class public final Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/DisplayManager;
.super Ljava/lang/Object;
.source "DisplayManager.java"


# instance fields
.field private final manager:Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IInterface;)V
    .locals 0
    .param p1, "manager"    # Landroid/os/IInterface;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/DisplayManager;->manager:Landroid/os/IInterface;

    .line 14
    return-void
.end method


# virtual methods
.method public getDisplayIds()[I
    .locals 4

    .prologue
    .line 37
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/DisplayManager;->manager:Landroid/os/IInterface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDisplayIds"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/DisplayManager;->manager:Landroid/os/IInterface;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getDisplayInfo(I)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DisplayInfo;
    .locals 13
    .param p1, "displayId"    # I

    .prologue
    .line 18
    :try_start_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/DisplayManager;->manager:Landroid/os/IInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getDisplayInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/AllManagerUtils/DisplayManager;->manager:Landroid/os/IInterface;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 19
    .local v7, "displayInfo":Ljava/lang/Object;
    if-nez v7, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    .line 22
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 24
    .local v6, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "logicalWidth"

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    .line 25
    .local v10, "width":I
    const-string v0, "logicalHeight"

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    .line 26
    .local v9, "height":I
    const-string v0, "rotation"

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 27
    .local v3, "rotation":I
    const/4 v4, 0x0

    .line 28
    .local v4, "layerStack":I
    const/4 v5, 0x0

    .line 29
    .local v5, "flags":I
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DisplayInfo;

    new-instance v2, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    invoke-direct {v2, v10, v9}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;-><init>(II)V

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DisplayInfo;-><init>(ILcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 30
    .end local v3    # "rotation":I
    .end local v4    # "layerStack":I
    .end local v5    # "flags":I
    .end local v6    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "displayInfo":Ljava/lang/Object;
    .end local v9    # "height":I
    .end local v10    # "width":I
    :catch_0
    move-exception v8

    .line 31
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
