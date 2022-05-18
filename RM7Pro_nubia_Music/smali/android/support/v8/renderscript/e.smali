.class Landroid/support/v8/renderscript/e;
.super Landroid/support/v8/renderscript/RenderScript;
.source "RenderScriptThunker.java"


# instance fields
.field s:Landroid/renderscript/RenderScript;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/v8/renderscript/e;->g:Z

    .line 46
    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/support/v8/renderscript/RenderScript;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Landroid/support/v8/renderscript/e;

    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/e;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-static {p0, p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;I)Landroid/renderscript/RenderScript;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    .line 51
    return-object v0
.end method


# virtual methods
.method c()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v1, "Calling RS with no Context active."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    .line 65
    return-void
.end method
