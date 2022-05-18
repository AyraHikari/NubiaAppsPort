.class public Lcom/android/gallery3d/filtershow/filters/g1;
.super Landroid/support/v8/renderscript/ScriptC;
.source ""


# instance fields
.field private a:Landroid/support/v8/renderscript/Element;

.field private b:Landroid/support/v8/renderscript/Element;

.field private c:Landroid/support/v8/renderscript/Element;


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 3

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/l1;->a()[B

    move-result-object v0

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/l1;->c()[B

    move-result-object v1

    const-string v2, "saturation"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/support/v8/renderscript/ScriptC;-><init>(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;[B[B)V

    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->I32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/g1;->b:Landroid/support/v8/renderscript/Element;

    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/g1;->a:Landroid/support/v8/renderscript/Element;

    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/g1;->c:Landroid/support/v8/renderscript/Element;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 8

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/g1;->c:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    const-string v1, "Type mismatch with U8_4!"

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/g1;->c:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getZ()I

    move-result v2

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getZ()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->hasFaces()Z

    move-result v2

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->hasFaces()Z

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->hasMipmaps()Z

    move-result v0

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->hasMipmaps()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/support/v8/renderscript/Script;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    return-void

    :cond_0
    new-instance p1, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string p2, "Dimension mismatch between parameters ain and aout!"

    invoke-direct {p1, p2}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Landroid/support/v8/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Landroid/support/v8/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Script;->invoke(I)V

    return-void
.end method

.method public declared-synchronized c([I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [I

    aput v3, p1, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/g1;->b:Landroid/support/v8/renderscript/Element;

    invoke-virtual {p0, v1, v0, v2, p1}, Landroid/support/v8/renderscript/Script;->setVar(ILandroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
