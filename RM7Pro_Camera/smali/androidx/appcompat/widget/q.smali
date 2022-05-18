.class public Landroidx/appcompat/widget/q;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "SourceFile"

# interfaces
.implements Landroidx/core/f/t;


# static fields
.field private static final a:[I


# instance fields
.field private final b:Landroidx/appcompat/widget/f;

.field private final c:Landroidx/appcompat/widget/z;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010176

    aput v2, v0, v1

    .line 56
    sput-object v0, Landroidx/appcompat/widget/q;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 69
    sget v0, Landroidx/appcompat/a$a;->p:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 74
    invoke-static {p1}, Landroidx/appcompat/widget/au;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    invoke-virtual {p0}, Landroidx/appcompat/widget/q;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/as;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 78
    invoke-virtual {p0}, Landroidx/appcompat/widget/q;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroidx/appcompat/widget/q;->a:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroidx/appcompat/widget/ax;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ax;

    move-result-object p1

    .line 80
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ax;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ax;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/q;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/ax;->b()V

    .line 85
    new-instance p1, Landroidx/appcompat/widget/f;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/f;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/f;

    .line 86
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/f;->a(Landroid/util/AttributeSet;I)V

    .line 88
    new-instance p1, Landroidx/appcompat/widget/z;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/z;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/q;->c:Landroidx/appcompat/widget/z;

    .line 89
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/z;->a(Landroid/util/AttributeSet;I)V

    .line 90
    invoke-virtual {p1}, Landroidx/appcompat/widget/z;->b()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 172
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->drawableStateChanged()V

    .line 173
    iget-object v0, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Landroidx/appcompat/widget/f;->c()V

    .line 176
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/q;->c:Landroidx/appcompat/widget/z;

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->b()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 138
    iget-object v0, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroidx/appcompat/widget/f;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 166
    iget-object v0, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Landroidx/appcompat/widget/f;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 191
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Landroidx/appcompat/widget/m;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 108
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v0, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/f;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setBackgroundResource(I)V

    .line 101
    iget-object v0, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/f;->a(I)V

    :cond_0
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 1

    .line 95
    invoke-virtual {p0}, Landroidx/appcompat/widget/q;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/q;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 123
    iget-object v0, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/f;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 151
    iget-object v0, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/f;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 183
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 184
    iget-object v0, p0, Landroidx/appcompat/widget/q;->c:Landroidx/appcompat/widget/z;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/z;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
