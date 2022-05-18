.class Lcn/nubia/notepad/NotePadEditorActivity$31;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->initNotePadEditorLayoutCursor(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadEditorActivity;

.field final synthetic val$editTextCursor:Landroid/widget/EditText;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadEditorActivity;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 3763
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$31;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iput-object p2, p0, Lcn/nubia/notepad/NotePadEditorActivity$31;->val$editTextCursor:Landroid/widget/EditText;

    iput-object p3, p0, Lcn/nubia/notepad/NotePadEditorActivity$31;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 3793
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 3789
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    const/4 v3, 0x0

    .line 3767
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3768
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$31;->val$editTextCursor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3769
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$31;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$3400(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$31;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 3770
    .local v7, "indexAtView":I
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$31;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$000(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v1, v7, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$31;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    .line 3771
    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$000(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/util/LinkedList;

    move-result-object v0

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "editTextView"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3773
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$31;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$000(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/util/LinkedList;

    move-result-object v0

    add-int/lit8 v1, v7, 0x1

    .line 3774
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "editTextView"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 3775
    .local v9, "textLayout":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    .line 3776
    invoke-virtual {v1}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3777
    .local v8, "result":Ljava/lang/String;
    iget-object v0, v9, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v0, v8}, Lcn/nubia/notepad/view/NotePadEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3778
    iget-object v0, v9, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/NotePadEditTextView;->setSelection(I)V

    .line 3779
    iget-object v0, v9, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/NotePadEditTextView;->requestFocus()Z

    .line 3785
    .end local v7    # "indexAtView":I
    .end local v8    # "result":Ljava/lang/String;
    .end local v9    # "textLayout":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_0
    :goto_0
    return-void

    .line 3781
    .restart local v7    # "indexAtView":I
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$31;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    add-int/lit8 v1, v7, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    const/4 v5, 0x1

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/notepad/NotePadEditorActivity;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    goto :goto_0
.end method
