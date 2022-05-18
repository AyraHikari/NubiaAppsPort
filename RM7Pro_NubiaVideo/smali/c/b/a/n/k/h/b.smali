.class public Lc/b/a/n/k/h/b;
.super Lc/b/a/n/k/f/b;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/k/h/f$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/n/k/h/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Rect;

.field private final c:Lc/b/a/n/k/h/b$a;

.field private final d:Lc/b/a/l/a;

.field private final e:Lc/b/a/n/k/h/f;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/b/a/l/a$a;Lc/b/a/n/i/m/c;Lc/b/a/n/g;IILc/b/a/l/c;[BLandroid/graphics/Bitmap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/b/a/l/a$a;",
            "Lc/b/a/n/i/m/c;",
            "Lc/b/a/n/g<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Lc/b/a/l/c;",
            "[B",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v10, Lc/b/a/n/k/h/b$a;

    move-object v0, v10

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object v3, p1

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lc/b/a/n/k/h/b$a;-><init>(Lc/b/a/l/c;[BLandroid/content/Context;Lc/b/a/n/g;IILc/b/a/l/a$a;Lc/b/a/n/i/m/c;Landroid/graphics/Bitmap;)V

    move-object v0, p0

    invoke-direct {p0, v10}, Lc/b/a/n/k/h/b;-><init>(Lc/b/a/n/k/h/b$a;)V

    return-void
.end method

.method constructor <init>(Lc/b/a/n/k/h/b$a;)V
    .locals 7

    .line 3
    invoke-direct {p0}, Lc/b/a/n/k/f/b;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc/b/a/n/k/h/b;->b:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lc/b/a/n/k/h/b;->i:Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lc/b/a/n/k/h/b;->k:I

    const-string v0, "GifState must not be null"

    .line 7
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lc/b/a/n/k/h/b;->c:Lc/b/a/n/k/h/b$a;

    .line 9
    new-instance v4, Lc/b/a/l/a;

    iget-object v0, p1, Lc/b/a/n/k/h/b$a;->g:Lc/b/a/l/a$a;

    invoke-direct {v4, v0}, Lc/b/a/l/a;-><init>(Lc/b/a/l/a$a;)V

    iput-object v4, p0, Lc/b/a/n/k/h/b;->d:Lc/b/a/l/a;

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lc/b/a/n/k/h/b;->a:Landroid/graphics/Paint;

    .line 11
    iget-object v0, p1, Lc/b/a/n/k/h/b$a;->a:Lc/b/a/l/c;

    iget-object v1, p1, Lc/b/a/n/k/h/b$a;->b:[B

    invoke-virtual {v4, v0, v1}, Lc/b/a/l/a;->n(Lc/b/a/l/c;[B)V

    .line 12
    new-instance v0, Lc/b/a/n/k/h/f;

    iget-object v2, p1, Lc/b/a/n/k/h/b$a;->c:Landroid/content/Context;

    iget v5, p1, Lc/b/a/n/k/h/b$a;->e:I

    iget v6, p1, Lc/b/a/n/k/h/b$a;->f:I

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lc/b/a/n/k/h/f;-><init>(Landroid/content/Context;Lc/b/a/n/k/h/f$c;Lc/b/a/l/a;II)V

    iput-object v0, p0, Lc/b/a/n/k/h/b;->e:Lc/b/a/n/k/h/f;

    .line 13
    iget-object p1, p1, Lc/b/a/n/k/h/b$a;->d:Lc/b/a/n/g;

    invoke-virtual {v0, p1}, Lc/b/a/n/k/h/f;->f(Lc/b/a/n/g;)V

    return-void
.end method

.method public constructor <init>(Lc/b/a/n/k/h/b;Landroid/graphics/Bitmap;Lc/b/a/n/g;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/k/h/b;",
            "Landroid/graphics/Bitmap;",
            "Lc/b/a/n/g<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v10, Lc/b/a/n/k/h/b$a;

    iget-object p1, p1, Lc/b/a/n/k/h/b;->c:Lc/b/a/n/k/h/b$a;

    iget-object v1, p1, Lc/b/a/n/k/h/b$a;->a:Lc/b/a/l/c;

    iget-object v2, p1, Lc/b/a/n/k/h/b$a;->b:[B

    iget-object v3, p1, Lc/b/a/n/k/h/b$a;->c:Landroid/content/Context;

    iget v5, p1, Lc/b/a/n/k/h/b$a;->e:I

    iget v6, p1, Lc/b/a/n/k/h/b$a;->f:I

    iget-object v7, p1, Lc/b/a/n/k/h/b$a;->g:Lc/b/a/l/a$a;

    iget-object v8, p1, Lc/b/a/n/k/h/b$a;->h:Lc/b/a/n/i/m/c;

    move-object v0, v10

    move-object v4, p3

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lc/b/a/n/k/h/b$a;-><init>(Lc/b/a/l/c;[BLandroid/content/Context;Lc/b/a/n/g;IILc/b/a/l/a$a;Lc/b/a/n/i/m/c;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v10}, Lc/b/a/n/k/h/b;-><init>(Lc/b/a/n/k/h/b$a;)V

    return-void
.end method

.method private j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/h/b;->e:Lc/b/a/n/k/h/f;

    invoke-virtual {v0}, Lc/b/a/n/k/h/f;->a()V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private k()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lc/b/a/n/k/h/b;->j:I

    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/h/b;->d:Lc/b/a/l/a;

    invoke-virtual {v0}, Lc/b/a/l/a;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lc/b/a/n/k/h/b;->f:Z

    if-nez v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lc/b/a/n/k/h/b;->f:Z

    .line 5
    iget-object v0, p0, Lc/b/a/n/k/h/b;->e:Lc/b/a/n/k/h/f;

    invoke-virtual {v0}, Lc/b/a/n/k/h/f;->g()V

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    :goto_0
    return-void
.end method

.method private m()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lc/b/a/n/k/h/b;->f:Z

    .line 2
    iget-object v0, p0, Lc/b/a/n/k/h/b;->e:Lc/b/a/n/k/h/f;

    invoke-virtual {v0}, Lc/b/a/n/k/h/f;->h()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/b/a/n/k/h/b;->stop()V

    .line 3
    invoke-direct {p0}, Lc/b/a/n/k/h/b;->j()V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 5
    iget-object v0, p0, Lc/b/a/n/k/h/b;->d:Lc/b/a/l/a;

    invoke-virtual {v0}, Lc/b/a/l/a;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 6
    iget p1, p0, Lc/b/a/n/k/h/b;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lc/b/a/n/k/h/b;->j:I

    .line 7
    :cond_1
    iget p1, p0, Lc/b/a/n/k/h/b;->k:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget v0, p0, Lc/b/a/n/k/h/b;->j:I

    if-lt v0, p1, :cond_2

    .line 8
    invoke-virtual {p0}, Lc/b/a/n/k/h/b;->stop()V

    :cond_2
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(I)V
    .locals 1

    if-gtz p1, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 2
    iget-object p1, p0, Lc/b/a/n/k/h/b;->d:Lc/b/a/l/a;

    invoke-virtual {p1}, Lc/b/a/l/a;->g()I

    move-result p1

    iput p1, p0, Lc/b/a/n/k/h/b;->k:I

    goto :goto_1

    .line 3
    :cond_2
    iput p1, p0, Lc/b/a/n/k/h/b;->k:I

    :goto_1
    return-void
.end method

.method public d()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/h/b;->c:Lc/b/a/n/k/h/b$a;

    iget-object v0, v0, Lc/b/a/n/k/h/b$a;->b:[B

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lc/b/a/n/k/h/b;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lc/b/a/n/k/h/b;->l:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x77

    .line 3
    invoke-virtual {p0}, Lc/b/a/n/k/h/b;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lc/b/a/n/k/h/b;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lc/b/a/n/k/h/b;->b:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lc/b/a/n/k/h/b;->l:Z

    .line 5
    :cond_1
    iget-object v0, p0, Lc/b/a/n/k/h/b;->e:Lc/b/a/n/k/h/f;

    invoke-virtual {v0}, Lc/b/a/n/k/h/f;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lc/b/a/n/k/h/b;->c:Lc/b/a/n/k/h/b$a;

    iget-object v0, v0, Lc/b/a/n/k/h/b$a;->i:Landroid/graphics/Bitmap;

    :goto_0
    const/4 v1, 0x0

    .line 7
    iget-object v2, p0, Lc/b/a/n/k/h/b;->b:Landroid/graphics/Rect;

    iget-object v3, p0, Lc/b/a/n/k/h/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public e()Lc/b/a/l/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/h/b;->d:Lc/b/a/l/a;

    return-object v0
.end method

.method public f()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/h/b;->c:Lc/b/a/n/k/h/b$a;

    iget-object v0, v0, Lc/b/a/n/k/h/b$a;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/h/b;->d:Lc/b/a/l/a;

    invoke-virtual {v0}, Lc/b/a/l/a;->f()I

    move-result v0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/h/b;->c:Lc/b/a/n/k/h/b$a;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/h/b;->c:Lc/b/a/n/k/h/b$a;

    iget-object v0, v0, Lc/b/a/n/k/h/b$a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/h/b;->c:Lc/b/a/n/k/h/b$a;

    iget-object v0, v0, Lc/b/a/n/k/h/b$a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public h()Lc/b/a/n/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/g<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/h/b;->c:Lc/b/a/n/k/h/b$a;

    iget-object v0, v0, Lc/b/a/n/k/h/b$a;->d:Lc/b/a/n/g;

    return-object v0
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/b/a/n/k/h/b;->h:Z

    .line 2
    iget-object v0, p0, Lc/b/a/n/k/h/b;->c:Lc/b/a/n/k/h/b$a;

    iget-object v1, v0, Lc/b/a/n/k/h/b$a;->h:Lc/b/a/n/i/m/c;

    iget-object v0, v0, Lc/b/a/n/k/h/b$a;->i:Landroid/graphics/Bitmap;

    invoke-interface {v1, v0}, Lc/b/a/n/i/m/c;->c(Landroid/graphics/Bitmap;)Z

    .line 3
    iget-object v0, p0, Lc/b/a/n/k/h/b;->e:Lc/b/a/n/k/h/f;

    invoke-virtual {v0}, Lc/b/a/n/k/h/f;->a()V

    .line 4
    iget-object v0, p0, Lc/b/a/n/k/h/b;->e:Lc/b/a/n/k/h/f;

    invoke-virtual {v0}, Lc/b/a/n/k/h/f;->h()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/b/a/n/k/h/b;->f:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lc/b/a/n/k/h/b;->l:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/h/b;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/h/b;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 1
    iput-boolean p1, p0, Lc/b/a/n/k/h/b;->i:Z

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lc/b/a/n/k/h/b;->m()V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lc/b/a/n/k/h/b;->g:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lc/b/a/n/k/h/b;->l()V

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/b/a/n/k/h/b;->g:Z

    .line 2
    invoke-direct {p0}, Lc/b/a/n/k/h/b;->k()V

    .line 3
    iget-boolean v0, p0, Lc/b/a/n/k/h/b;->i:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lc/b/a/n/k/h/b;->l()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lc/b/a/n/k/h/b;->g:Z

    .line 2
    invoke-direct {p0}, Lc/b/a/n/k/h/b;->m()V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 4
    invoke-direct {p0}, Lc/b/a/n/k/h/b;->j()V

    :cond_0
    return-void
.end method
