.class public Landroidx/constraintlayout/widget/i;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/view/View;

.field private c:I


# virtual methods
.method public a(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 2

    .line 147
    iget v0, p0, Landroidx/constraintlayout/widget/i;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 148
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/i;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget v0, p0, Landroidx/constraintlayout/widget/i;->c:I

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/i;->setVisibility(I)V

    .line 153
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/widget/i;->a:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/widget/i;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ab:Z

    .line 158
    iget-object p1, p0, Landroidx/constraintlayout/widget/i;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 159
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/i;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public b(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 3

    .line 194
    iget-object p1, p0, Landroidx/constraintlayout/widget/i;->b:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/i;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 198
    iget-object v0, p0, Landroidx/constraintlayout/widget/i;->b:Landroid/view/View;

    .line 199
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 200
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->an:Landroidx/constraintlayout/b/a/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/b/a/e;->j(I)V

    .line 201
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->an:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->S()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-eq v1, v2, :cond_1

    .line 202
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->an:Landroidx/constraintlayout/b/a/e;

    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->an:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/b/a/e;->o(I)V

    .line 204
    :cond_1
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->an:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->T()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-eq v1, v2, :cond_2

    .line 205
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->an:Landroidx/constraintlayout/b/a/e;

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->an:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/b/a/e;->p(I)V

    .line 207
    :cond_2
    iget-object p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->an:Landroidx/constraintlayout/b/a/e;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/b/a/e;->j(I)V

    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .line 113
    iget-object v0, p0, Landroidx/constraintlayout/widget/i;->b:Landroid/view/View;

    return-object v0
.end method

.method public getEmptyVisibility()I
    .locals 1

    .line 105
    iget v0, p0, Landroidx/constraintlayout/widget/i;->c:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 121
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/i;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xdf

    .line 122
    invoke-virtual {p1, v0, v0, v0}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 123
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/16 v1, 0xff

    const/16 v2, 0xd2

    .line 124
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 125
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 126
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 128
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 129
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 130
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 131
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 132
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 133
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string v5, "?"

    const/4 v6, 0x1

    .line 135
    invoke-virtual {v0, v5, v2, v6, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 136
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-float/2addr v2, v6

    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v2, v6

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 137
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v3, v6

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v3, v1

    .line 138
    invoke-virtual {p1, v5, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setContentId(I)V
    .locals 2

    .line 169
    iget v0, p0, Landroidx/constraintlayout/widget/i;->a:I

    if-ne v0, p1, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/i;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Landroidx/constraintlayout/widget/i;->b:Landroid/view/View;

    .line 175
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 176
    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ab:Z

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Landroidx/constraintlayout/widget/i;->b:Landroid/view/View;

    .line 180
    :cond_1
    iput p1, p0, Landroidx/constraintlayout/widget/i;->a:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 182
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/i;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 184
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setEmptyVisibility(I)V
    .locals 0

    .line 96
    iput p1, p0, Landroidx/constraintlayout/widget/i;->c:I

    return-void
.end method
