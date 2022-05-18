.class public Landroid/support/v7/widget/e;
.super Landroid/widget/AutoCompleteTextView;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# static fields
.field private static final c:[I


# instance fields
.field private final a:Landroid/support/v7/widget/f;

.field private final b:Landroid/support/v7/widget/o;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010176

    aput v2, v0, v1

    .line 1
    sput-object v0, Landroid/support/v7/widget/e;->c:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget v0, La/b/d/a/a;->j:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 2
    invoke-static {p1}, Landroid/support/v7/widget/o0;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroid/support/v7/widget/e;->c:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/v7/widget/r0;->s(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/r0;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/r0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/r0;->t()V

    .line 7
    new-instance p1, Landroid/support/v7/widget/f;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/f;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/v7/widget/e;->a:Landroid/support/v7/widget/f;

    .line 8
    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/f;->e(Landroid/util/AttributeSet;I)V

    .line 9
    new-instance p1, Landroid/support/v7/widget/o;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/o;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/o;

    .line 10
    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/o;->k(Landroid/util/AttributeSet;I)V

    .line 11
    invoke-virtual {p1}, Landroid/support/v7/widget/o;->b()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/support/v7/widget/f;->b()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/o;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/support/v7/widget/o;->b()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Landroid/support/v7/widget/f;

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
    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Landroid/support/v7/widget/f;

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

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Landroid/support/v7/widget/i;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Landroid/support/v7/widget/f;

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
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, La/b/d/b/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->i(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->j(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Landroid/support/v7/widget/o;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/o;->n(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
