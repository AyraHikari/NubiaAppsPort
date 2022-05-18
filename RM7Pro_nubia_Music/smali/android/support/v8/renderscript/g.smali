.class Landroid/support/v8/renderscript/g;
.super Landroid/renderscript/ScriptC;
.source "ScriptCThunker.java"


# virtual methods
.method a(IF)V
    .locals 0

    .prologue
    .line 121
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/g;->setVar(IF)V

    .line 122
    return-void
.end method

.method a(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/d;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 80
    .line 83
    if-eqz p2, :cond_2

    .line 84
    check-cast p2, Landroid/support/v8/renderscript/a;

    iget-object v1, p2, Landroid/support/v8/renderscript/a;->m:Landroid/renderscript/Allocation;

    move-object v2, v1

    .line 86
    :goto_0
    if-eqz p3, :cond_1

    .line 87
    check-cast p3, Landroid/support/v8/renderscript/a;

    iget-object v1, p3, Landroid/support/v8/renderscript/a;->m:Landroid/renderscript/Allocation;

    .line 89
    :goto_1
    if-eqz p4, :cond_0

    .line 90
    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p4}, Landroid/support/v8/renderscript/d;->a()[B

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/renderscript/FieldPacker;-><init>([B)V

    .line 92
    :cond_0
    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/support/v8/renderscript/g;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    .line 93
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v2, v0

    goto :goto_0
.end method

.method a(ILandroid/support/v8/renderscript/b;)V
    .locals 1

    .prologue
    .line 137
    if-nez p2, :cond_0

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v8/renderscript/g;->setVar(II)V

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p2}, Landroid/support/v8/renderscript/b;->d()Landroid/renderscript/BaseObj;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v8/renderscript/g;->setVar(ILandroid/renderscript/BaseObj;)V

    goto :goto_0
.end method
