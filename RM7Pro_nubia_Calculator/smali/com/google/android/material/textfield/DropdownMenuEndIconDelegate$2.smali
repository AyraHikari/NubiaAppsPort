.class Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$2;
.super Ljava/lang/Object;
.source "DropdownMenuEndIconDelegate.java"

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$2;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditTextAttached(Landroid/widget/EditText;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$2;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$000(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$2;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$200(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V

    .line 86
    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$2;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$300(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V

    .line 87
    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$2;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$400(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V

    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 89
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$2;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$500(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$2;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$500(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    iget-object p0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$2;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    iget-object p0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    return-void
.end method
