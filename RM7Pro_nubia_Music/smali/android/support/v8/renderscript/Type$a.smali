.class public Landroid/support/v8/renderscript/Type$a;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/support/v8/renderscript/RenderScript;

.field b:I

.field c:I

.field d:I

.field e:Z

.field f:Z

.field g:I

.field h:Landroid/support/v8/renderscript/Element;


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v8/renderscript/Type$a;->b:I

    .line 216
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Element;->e()V

    .line 217
    iput-object p1, p0, Landroid/support/v8/renderscript/Type$a;->a:Landroid/support/v8/renderscript/RenderScript;

    .line 218
    iput-object p2, p0, Landroid/support/v8/renderscript/Type$a;->h:Landroid/support/v8/renderscript/Element;

    .line 219
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v8/renderscript/Type$a;
    .locals 2

    .prologue
    .line 228
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 229
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension X are not valid."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    iput p1, p0, Landroid/support/v8/renderscript/Type$a;->b:I

    .line 232
    return-object p0
.end method

.method public a(Z)Landroid/support/v8/renderscript/Type$a;
    .locals 0

    .prologue
    .line 252
    iput-boolean p1, p0, Landroid/support/v8/renderscript/Type$a;->e:Z

    .line 253
    return-object p0
.end method

.method public a()Landroid/support/v8/renderscript/Type;
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 289
    iget v0, p0, Landroid/support/v8/renderscript/Type$a;->d:I

    if-lez v0, :cond_2

    .line 290
    iget v0, p0, Landroid/support/v8/renderscript/Type$a;->b:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/support/v8/renderscript/Type$a;->c:I

    if-ge v0, v1, :cond_1

    .line 291
    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v1, "Both X and Y dimension required when Z is present."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_1
    iget-boolean v0, p0, Landroid/support/v8/renderscript/Type$a;->f:Z

    if-eqz v0, :cond_2

    .line 294
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v1, "Cube maps not supported with 3D types."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_2
    iget v0, p0, Landroid/support/v8/renderscript/Type$a;->c:I

    if-lez v0, :cond_3

    .line 298
    iget v0, p0, Landroid/support/v8/renderscript/Type$a;->b:I

    if-ge v0, v1, :cond_3

    .line 299
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v1, "X dimension required when Y is present."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_3
    iget-boolean v0, p0, Landroid/support/v8/renderscript/Type$a;->f:Z

    if-eqz v0, :cond_4

    .line 303
    iget v0, p0, Landroid/support/v8/renderscript/Type$a;->c:I

    if-ge v0, v1, :cond_4

    .line 304
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v1, "Cube maps require 2D Types."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_4
    iget v0, p0, Landroid/support/v8/renderscript/Type$a;->g:I

    if-eqz v0, :cond_6

    .line 309
    iget v0, p0, Landroid/support/v8/renderscript/Type$a;->d:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroid/support/v8/renderscript/Type$a;->f:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroid/support/v8/renderscript/Type$a;->e:Z

    if-eqz v0, :cond_6

    .line 310
    :cond_5
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v1, "YUV only supports basic 2D."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_6
    iget-object v0, p0, Landroid/support/v8/renderscript/Type$a;->a:Landroid/support/v8/renderscript/RenderScript;

    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->g:Z

    if-eqz v0, :cond_7

    .line 316
    iget-object v0, p0, Landroid/support/v8/renderscript/Type$a;->a:Landroid/support/v8/renderscript/RenderScript;

    check-cast v0, Landroid/support/v8/renderscript/e;

    .line 317
    iget-object v1, p0, Landroid/support/v8/renderscript/Type$a;->h:Landroid/support/v8/renderscript/Element;

    iget v2, p0, Landroid/support/v8/renderscript/Type$a;->b:I

    iget v3, p0, Landroid/support/v8/renderscript/Type$a;->c:I

    iget v4, p0, Landroid/support/v8/renderscript/Type$a;->d:I

    iget-boolean v5, p0, Landroid/support/v8/renderscript/Type$a;->e:Z

    iget-boolean v6, p0, Landroid/support/v8/renderscript/Type$a;->f:Z

    iget v7, p0, Landroid/support/v8/renderscript/Type$a;->g:I

    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/k;->a(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;IIIZZI)Landroid/support/v8/renderscript/Type;

    move-result-object v0

    .line 324
    :goto_0
    iget-object v1, p0, Landroid/support/v8/renderscript/Type$a;->h:Landroid/support/v8/renderscript/Element;

    iput-object v1, v0, Landroid/support/v8/renderscript/Type;->h:Landroid/support/v8/renderscript/Element;

    .line 325
    iget v1, p0, Landroid/support/v8/renderscript/Type$a;->b:I

    iput v1, v0, Landroid/support/v8/renderscript/Type;->a:I

    .line 326
    iget v1, p0, Landroid/support/v8/renderscript/Type$a;->c:I

    iput v1, v0, Landroid/support/v8/renderscript/Type;->b:I

    .line 327
    iget v1, p0, Landroid/support/v8/renderscript/Type$a;->d:I

    iput v1, v0, Landroid/support/v8/renderscript/Type;->c:I

    .line 328
    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$a;->e:Z

    iput-boolean v1, v0, Landroid/support/v8/renderscript/Type;->d:Z

    .line 329
    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$a;->f:Z

    iput-boolean v1, v0, Landroid/support/v8/renderscript/Type;->e:Z

    .line 330
    iget v1, p0, Landroid/support/v8/renderscript/Type$a;->g:I

    iput v1, v0, Landroid/support/v8/renderscript/Type;->f:I

    .line 332
    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->j()V

    .line 333
    return-object v0

    .line 320
    :cond_7
    iget-object v0, p0, Landroid/support/v8/renderscript/Type$a;->a:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Type$a;->h:Landroid/support/v8/renderscript/Element;

    iget-object v2, p0, Landroid/support/v8/renderscript/Type$a;->a:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/Element;->a(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    iget v2, p0, Landroid/support/v8/renderscript/Type$a;->b:I

    iget v3, p0, Landroid/support/v8/renderscript/Type$a;->c:I

    iget v4, p0, Landroid/support/v8/renderscript/Type$a;->d:I

    iget-boolean v5, p0, Landroid/support/v8/renderscript/Type$a;->e:Z

    iget-boolean v6, p0, Landroid/support/v8/renderscript/Type$a;->f:Z

    iget v7, p0, Landroid/support/v8/renderscript/Type$a;->g:I

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->a(IIIIZZI)I

    move-result v1

    .line 322
    new-instance v0, Landroid/support/v8/renderscript/Type;

    iget-object v2, p0, Landroid/support/v8/renderscript/Type$a;->a:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v0, v1, v2}, Landroid/support/v8/renderscript/Type;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    goto :goto_0
.end method

.method public b(I)Landroid/support/v8/renderscript/Type$a;
    .locals 2

    .prologue
    .line 236
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 237
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension Y are not valid."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    iput p1, p0, Landroid/support/v8/renderscript/Type$a;->c:I

    .line 240
    return-object p0
.end method
