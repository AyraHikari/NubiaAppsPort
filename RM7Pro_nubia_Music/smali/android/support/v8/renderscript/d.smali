.class public Landroid/support/v8/renderscript/d;
.super Ljava/lang/Object;
.source "FieldPacker.java"


# instance fields
.field private a:Landroid/renderscript/FieldPacker;

.field private final b:[B


# virtual methods
.method public final a()[B
    .locals 1

    .prologue
    .line 545
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Landroid/support/v8/renderscript/d;->a:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v0

    .line 548
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/d;->b:[B

    goto :goto_0
.end method
