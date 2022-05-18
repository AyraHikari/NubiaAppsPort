.class final Lcn/nubia/notepad/view/NotePadEditTextView$NotePadInputConnectionWrapper;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "NotePadEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/view/NotePadEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NotePadInputConnectionWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/view/NotePadEditTextView;


# direct methods
.method public constructor <init>(Lcn/nubia/notepad/view/NotePadEditTextView;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/view/NotePadEditTextView;
    .param p2, "target"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "mutable"    # Z

    .prologue
    .line 170
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadEditTextView$NotePadInputConnectionWrapper;->this$0:Lcn/nubia/notepad/view/NotePadEditTextView;

    .line 171
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 172
    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\n"

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    const/16 v2, 0x42

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/view/NotePadEditTextView$NotePadInputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 190
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 4
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    const/16 v3, 0x43

    const/4 v0, 0x1

    .line 175
    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 176
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Lcn/nubia/notepad/view/NotePadEditTextView$NotePadInputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 178
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Lcn/nubia/notepad/view/NotePadEditTextView$NotePadInputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 182
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result v0

    goto :goto_0
.end method
