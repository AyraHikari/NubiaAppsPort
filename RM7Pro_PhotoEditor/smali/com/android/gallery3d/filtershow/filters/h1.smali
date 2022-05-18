.class public Lcom/android/gallery3d/filtershow/filters/h1;
.super Landroid/support/v8/renderscript/ScriptC;
.source ""


# instance fields
.field private a:Landroid/support/v8/renderscript/Element;

.field private b:Landroid/support/v8/renderscript/Element;

.field private c:Landroid/support/v8/renderscript/Element;

.field private d:Landroid/support/v8/renderscript/FieldPacker;


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 3

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/m1;->a()[B

    move-result-object v0

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/m1;->c()[B

    move-result-object v1

    const-string v2, "vignette"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/support/v8/renderscript/ScriptC;-><init>(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;[B[B)V

    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->U32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h1;->b:Landroid/support/v8/renderscript/Element;

    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h1;->a:Landroid/support/v8/renderscript/Element;

    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/h1;->c:Landroid/support/v8/renderscript/Element;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/gallery3d/filtershow/filters/h1;->b(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public b(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 8

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/h1;->c:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    const-string v1, "Type mismatch with U8_4!"

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/h1;->c:Landroid/support/v8/renderscript/Element;

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

.method public c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Script;->invoke(I)V

    return-void
.end method

.method public declared-synchronized d(F)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/Script;->setVar(IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(F)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/Script;->setVar(IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f(F)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/Script;->setVar(IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x9

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/Script;->setVar(IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized h(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/Script;->setVar(IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized i(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/Script;->setVar(IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized j(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h1;->d:Landroid/support/v8/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPacker;->reset()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h1;->d:Landroid/support/v8/renderscript/FieldPacker;

    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h1;->d:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    const/4 p1, 0x1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/filters/h1;->d:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/Script;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized k(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h1;->d:Landroid/support/v8/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPacker;->reset()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h1;->d:Landroid/support/v8/renderscript/FieldPacker;

    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h1;->d:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/filters/h1;->d:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/Script;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized l(F)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/Script;->setVar(IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized m(F)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/Script;->setVar(IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized n(F)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/Script;->setVar(IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
