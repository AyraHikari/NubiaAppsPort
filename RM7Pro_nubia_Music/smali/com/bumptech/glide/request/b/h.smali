.class public Lcom/bumptech/glide/request/b/h;
.super Lcom/bumptech/glide/load/resource/a/b;
.source "SquaringDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/b/h$a;
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/load/resource/a/b;

.field private b:Lcom/bumptech/glide/request/b/h$a;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/a/b;I)V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/bumptech/glide/request/b/h$a;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/a/b;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/request/b/h$a;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/bumptech/glide/request/b/h;-><init>(Lcom/bumptech/glide/request/b/h$a;Lcom/bumptech/glide/load/resource/a/b;Landroid/content/res/Resources;)V

    .line 27
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/request/b/h$a;Lcom/bumptech/glide/load/resource/a/b;Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/a/b;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/bumptech/glide/request/b/h;->b:Lcom/bumptech/glide/request/b/h$a;

    .line 31
    if-nez p2, :cond_1

    .line 32
    if-eqz p3, :cond_0

    .line 33
    invoke-static {p1}, Lcom/bumptech/glide/request/b/h$a;->a(Lcom/bumptech/glide/request/b/h$a;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/a/b;

    iput-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    .line 40
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/request/b/h$a;->a(Lcom/bumptech/glide/request/b/h$a;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/a/b;

    iput-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    goto :goto_0

    .line 38
    :cond_1
    iput-object p2, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/a/b;->a(I)V

    .line 177
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/a/b;->a()Z

    move-result v0

    return v0
.end method

.method public clearColorFilter()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/a/b;->clearColorFilter()V

    .line 94
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/a/b;->draw(Landroid/graphics/Canvas;)V

    .line 152
    return-void
.end method

.method public getAlpha()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/a/b;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/a/b;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->b:Lcom/bumptech/glide/request/b/h$a;

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/a/b;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->b:Lcom/bumptech/glide/request/b/h$a;

    invoke-static {v0}, Lcom/bumptech/glide/request/b/h$a;->b(Lcom/bumptech/glide/request/b/h$a;)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->b:Lcom/bumptech/glide/request/b/h$a;

    invoke-static {v0}, Lcom/bumptech/glide/request/b/h$a;->b(Lcom/bumptech/glide/request/b/h$a;)I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/a/b;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/a/b;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/a/b;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/a/b;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lcom/bumptech/glide/load/resource/a/b;->invalidateSelf()V

    .line 134
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/a/b;->invalidateSelf()V

    .line 135
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/a/b;->isRunning()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/bumptech/glide/request/b/h;->c:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/bumptech/glide/load/resource/a/b;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/a/b;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/a/b;

    iput-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    .line 198
    new-instance v0, Lcom/bumptech/glide/request/b/h$a;

    iget-object v1, p0, Lcom/bumptech/glide/request/b/h;->b:Lcom/bumptech/glide/request/b/h$a;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/b/h$a;-><init>(Lcom/bumptech/glide/request/b/h$a;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/b/h;->b:Lcom/bumptech/glide/request/b/h$a;

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/b/h;->c:Z

    .line 201
    :cond_0
    return-object p0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/a/b;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 146
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/a/b;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 147
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/a/b;->setAlpha(I)V

    .line 157
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/a/b;->setBounds(IIII)V

    .line 45
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/a/b;->setBounds(IIII)V

    .line 46
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/bumptech/glide/load/resource/a/b;->setBounds(Landroid/graphics/Rect;)V

    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/a/b;->setBounds(Landroid/graphics/Rect;)V

    .line 52
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/a/b;->setChangingConfigurations(I)V

    .line 57
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/resource/a/b;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 89
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/a/b;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 162
    return-void
.end method

.method public setDither(Z)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/a/b;->setDither(Z)V

    .line 67
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/a/b;->setFilterBitmap(Z)V

    .line 72
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/resource/a/b;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/a/b;->start()V

    .line 182
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/a/b;->stop()V

    .line 187
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/bumptech/glide/load/resource/a/b;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 140
    iget-object v0, p0, Lcom/bumptech/glide/request/b/h;->a:Lcom/bumptech/glide/load/resource/a/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/a/b;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method
