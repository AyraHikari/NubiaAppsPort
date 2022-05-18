.class public Landroid/support/design/widget/TextInputEditText;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "TextInputEditText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 51
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 55
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 56
    instance-of v2, v1, Landroid/support/v7/widget/WithHint;

    if-eqz v2, :cond_1

    .line 57
    check-cast v1, Landroid/support/v7/widget/WithHint;

    .end local v1    # "parent":Landroid/view/ViewParent;
    invoke-interface {v1}, Landroid/support/v7/widget/WithHint;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 63
    :cond_0
    return-object v0

    .line 60
    .restart local v1    # "parent":Landroid/view/ViewParent;
    :cond_1
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0
.end method
