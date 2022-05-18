.class Lcom/google/android/material/textfield/CustomEndIconDelegate;
.super Lcom/google/android/material/textfield/EndIconDelegate;
.source "CustomEndIconDelegate.java"


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/EndIconDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    return-void
.end method


# virtual methods
.method initialize()V
    .locals 1

    .line 30
    iget-object p0, p0, Lcom/google/android/material/textfield/CustomEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
