.class public Landroid/support/v8/renderscript/i;
.super Landroid/support/v8/renderscript/h;
.source "ScriptIntrinsicBlur.java"


# instance fields
.field private final b:[F

.field private c:Landroid/support/v8/renderscript/Allocation;


# direct methods
.method protected constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/h;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 30
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v8/renderscript/i;->b:[F

    .line 35
    return-void
.end method

.method public static a(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/i;
    .locals 2

    .prologue
    .line 49
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->g:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 50
    check-cast v0, Landroid/support/v8/renderscript/e;

    .line 51
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/j;->b(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/j;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 53
    :cond_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->g(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v8/renderscript/Element;->a(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->b(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v8/renderscript/Element;->a(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Unsuported element type."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    const/4 v0, 0x5

    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Element;->a(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/RenderScript;->a(II)I

    move-result v1

    .line 57
    new-instance v0, Landroid/support/v8/renderscript/i;

    invoke-direct {v0, v1, p0}, Landroid/support/v8/renderscript/i;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 58
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/i;->a(F)V

    goto :goto_0
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .prologue
    .line 81
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x41c80000    # 25.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 82
    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Radius out of range (0 < r <= 25)."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/i;->a(IF)V

    .line 85
    return-void
.end method

.method public a(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1

    .prologue
    .line 69
    iput-object p1, p0, Landroid/support/v8/renderscript/i;->c:Landroid/support/v8/renderscript/Allocation;

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/i;->a(ILandroid/support/v8/renderscript/b;)V

    .line 71
    return-void
.end method

.method public b(Landroid/support/v8/renderscript/Allocation;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, v1}, Landroid/support/v8/renderscript/i;->a(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/d;)V

    .line 96
    return-void
.end method
