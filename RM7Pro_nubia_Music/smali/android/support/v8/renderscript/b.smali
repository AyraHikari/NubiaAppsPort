.class public Landroid/support/v8/renderscript/b;
.super Ljava/lang/Object;
.source "BaseObj.java"


# instance fields
.field private a:I

.field private b:Z

.field o:Landroid/support/v8/renderscript/RenderScript;


# direct methods
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p2}, Landroid/support/v8/renderscript/RenderScript;->c()V

    .line 30
    iput-object p2, p0, Landroid/support/v8/renderscript/b;->o:Landroid/support/v8/renderscript/RenderScript;

    .line 31
    iput p1, p0, Landroid/support/v8/renderscript/b;->a:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v8/renderscript/b;->b:Z

    .line 33
    return-void
.end method


# virtual methods
.method a(Landroid/support/v8/renderscript/RenderScript;)I
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v8/renderscript/b;->o:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->c()V

    .line 53
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->g:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 54
    check-cast v0, Landroid/support/v8/renderscript/e;

    .line 55
    invoke-virtual {p0}, Landroid/support/v8/renderscript/b;->d()Landroid/renderscript/BaseObj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Landroid/support/v8/renderscript/b;->d()Landroid/renderscript/BaseObj;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/BaseObj;->hashCode()I

    move-result v0

    .line 68
    :goto_0
    return v0

    .line 59
    :cond_0
    iget-boolean v0, p0, Landroid/support/v8/renderscript/b;->b:Z

    if-eqz v0, :cond_1

    .line 60
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v1, "using a destroyed object."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    iget v0, p0, Landroid/support/v8/renderscript/b;->a:I

    if-nez v0, :cond_2

    .line 63
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Internal error: Object id 0."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/support/v8/renderscript/b;->o:Landroid/support/v8/renderscript/RenderScript;

    if-eq p1, v0, :cond_3

    .line 66
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v1, "using object with mismatched context."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_3
    iget v0, p0, Landroid/support/v8/renderscript/b;->a:I

    goto :goto_0
.end method

.method d()Landroid/renderscript/BaseObj;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method e()V
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Landroid/support/v8/renderscript/b;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v8/renderscript/b;->d()Landroid/renderscript/BaseObj;

    move-result-object v0

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid object."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    if-ne p0, p1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 136
    goto :goto_0

    .line 139
    :cond_2
    check-cast p1, Landroid/support/v8/renderscript/b;

    .line 140
    iget v2, p0, Landroid/support/v8/renderscript/b;->a:I

    iget v3, p1, Landroid/support/v8/renderscript/b;->a:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 86
    iget-boolean v0, p0, Landroid/support/v8/renderscript/b;->b:Z

    if-nez v0, :cond_1

    .line 87
    iget v0, p0, Landroid/support/v8/renderscript/b;->a:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v8/renderscript/b;->o:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Landroid/support/v8/renderscript/b;->o:Landroid/support/v8/renderscript/RenderScript;

    iget v1, p0, Landroid/support/v8/renderscript/b;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/RenderScript;->a(I)V

    .line 90
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v8/renderscript/b;->o:Landroid/support/v8/renderscript/RenderScript;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v8/renderscript/b;->a:I

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v8/renderscript/b;->b:Z

    .line 96
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 97
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Landroid/support/v8/renderscript/b;->a:I

    return v0
.end method
