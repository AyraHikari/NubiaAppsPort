.class public Landroid/support/v7/widget/h;
.super Landroid/widget/EditText;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# instance fields
.field private final a:Landroid/support/v7/widget/f;

.field private final b:Landroid/support/v7/widget/o;


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/h;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/support/v7/widget/f;->b()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/h;->b:Landroid/support/v7/widget/o;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/support/v7/widget/o;->b()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/h;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/f;->c()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/h;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/f;->d()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 3
    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/h;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Landroid/support/v7/widget/i;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/h;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/h;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->g(I)V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/support/v4/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    .line 2
    invoke-super {p0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/h;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->i(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/h;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->j(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/h;->b:Landroid/support/v7/widget/o;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/o;->n(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
