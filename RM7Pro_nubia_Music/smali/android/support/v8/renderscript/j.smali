.class Landroid/support/v8/renderscript/j;
.super Landroid/support/v8/renderscript/i;
.source "ScriptIntrinsicBlurThunker.java"


# instance fields
.field b:Landroid/renderscript/ScriptIntrinsicBlur;


# direct methods
.method protected constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/i;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 33
    return-void
.end method

.method public static b(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/j;
    .locals 3

    .prologue
    .line 36
    move-object v0, p0

    check-cast v0, Landroid/support/v8/renderscript/e;

    .line 37
    check-cast p1, Landroid/support/v8/renderscript/c;

    .line 39
    new-instance v1, Landroid/support/v8/renderscript/j;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Landroid/support/v8/renderscript/j;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 40
    iget-object v0, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    invoke-virtual {p1}, Landroid/support/v8/renderscript/c;->b()Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v8/renderscript/j;->b:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 41
    return-object v1
.end method


# virtual methods
.method synthetic a()Landroid/renderscript/Script;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/support/v8/renderscript/j;->b()Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    return-object v0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Landroid/support/v8/renderscript/j;->b:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 51
    return-void
.end method

.method public a(Landroid/support/v8/renderscript/Allocation;)V
    .locals 2

    .prologue
    .line 45
    check-cast p1, Landroid/support/v8/renderscript/a;

    .line 46
    iget-object v0, p0, Landroid/support/v8/renderscript/j;->b:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {p1}, Landroid/support/v8/renderscript/a;->c()Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 47
    return-void
.end method

.method b()Landroid/renderscript/ScriptIntrinsicBlur;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Landroid/support/v8/renderscript/j;->b:Landroid/renderscript/ScriptIntrinsicBlur;

    return-object v0
.end method

.method public b(Landroid/support/v8/renderscript/Allocation;)V
    .locals 2

    .prologue
    .line 54
    check-cast p1, Landroid/support/v8/renderscript/a;

    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Landroid/support/v8/renderscript/j;->b:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {p1}, Landroid/support/v8/renderscript/a;->c()Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 58
    :cond_0
    return-void
.end method

.method synthetic d()Landroid/renderscript/BaseObj;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/support/v8/renderscript/j;->b()Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    return-object v0
.end method
