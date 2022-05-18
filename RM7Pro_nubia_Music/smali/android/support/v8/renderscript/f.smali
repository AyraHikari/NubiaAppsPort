.class public Landroid/support/v8/renderscript/f;
.super Landroid/support/v8/renderscript/b;
.source "Script.java"


# instance fields
.field a:Landroid/support/v8/renderscript/g;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .locals 1

    .prologue
    .line 292
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/b;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/f;->b:Landroid/util/SparseArray;

    .line 114
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/f;->c:Landroid/util/SparseArray;

    .line 293
    return-void
.end method


# virtual methods
.method a()Landroid/renderscript/Script;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Landroid/support/v8/renderscript/f;->a:Landroid/support/v8/renderscript/g;

    return-object v0
.end method

.method public a(IF)V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Landroid/support/v8/renderscript/f;->a:Landroid/support/v8/renderscript/g;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Landroid/support/v8/renderscript/f;->a:Landroid/support/v8/renderscript/g;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/g;->a(IF)V

    .line 308
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/f;->o:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/f;->o:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/f;->a(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->a(IIF)V

    goto :goto_0
.end method

.method protected a(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/d;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 228
    iget-object v0, p0, Landroid/support/v8/renderscript/f;->a:Landroid/support/v8/renderscript/g;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Landroid/support/v8/renderscript/f;->a:Landroid/support/v8/renderscript/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/g;->a(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/d;)V

    .line 250
    :goto_0
    return-void

    .line 233
    :cond_0
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 234
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "At least one of ain or aout is required to be non-null."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1
    if-eqz p2, :cond_4

    .line 239
    iget-object v0, p0, Landroid/support/v8/renderscript/f;->o:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p2, v0}, Landroid/support/v8/renderscript/Allocation;->a(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v3

    .line 242
    :goto_1
    if-eqz p3, :cond_2

    .line 243
    iget-object v0, p0, Landroid/support/v8/renderscript/f;->o:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p3, v0}, Landroid/support/v8/renderscript/Allocation;->a(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v4

    .line 245
    :cond_2
    const/4 v5, 0x0

    .line 246
    if-eqz p4, :cond_3

    .line 247
    invoke-virtual {p4}, Landroid/support/v8/renderscript/d;->a()[B

    move-result-object v5

    .line 249
    :cond_3
    iget-object v0, p0, Landroid/support/v8/renderscript/f;->o:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/f;->o:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/f;->a(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->a(IIII[B)V

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method public a(ILandroid/support/v8/renderscript/b;)V
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Landroid/support/v8/renderscript/f;->a:Landroid/support/v8/renderscript/g;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Landroid/support/v8/renderscript/f;->a:Landroid/support/v8/renderscript/g;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/g;->a(ILandroid/support/v8/renderscript/b;)V

    .line 383
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v1, p0, Landroid/support/v8/renderscript/f;->o:Landroid/support/v8/renderscript/RenderScript;

    iget-object v0, p0, Landroid/support/v8/renderscript/f;->o:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/f;->a(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v2

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v2, p1, v0}, Landroid/support/v8/renderscript/RenderScript;->a(III)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v8/renderscript/f;->o:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p2, v0}, Landroid/support/v8/renderscript/b;->a(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v0

    goto :goto_1
.end method

.method synthetic d()Landroid/renderscript/BaseObj;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/support/v8/renderscript/f;->a()Landroid/renderscript/Script;

    move-result-object v0

    return-object v0
.end method
