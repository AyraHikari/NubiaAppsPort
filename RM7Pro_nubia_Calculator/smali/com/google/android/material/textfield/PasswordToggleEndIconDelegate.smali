.class Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;
.super Lcom/google/android/material/textfield/EndIconDelegate;
.source "PasswordToggleEndIconDelegate.java"


# instance fields
.field private final onEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

.field private final onEndIconChangedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

.field private final textWatcher:Landroid/text/TextWatcher;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/EndIconDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 34
    new-instance p1, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$1;-><init>(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->textWatcher:Landroid/text/TextWatcher;

    .line 50
    new-instance p1, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$2;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$2;-><init>(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->onEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    .line 61
    new-instance p1, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$3;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$3;-><init>(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->onEndIconChangedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)Z
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->hasPasswordTransformation()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)Landroid/text/TextWatcher;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->textWatcher:Landroid/text/TextWatcher;

    return-object p0
.end method

.method private hasPasswordTransformation()Z
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p0

    instance-of p0, p0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method initialize()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->context:Landroid/content/Context;

    sget v2, Lcom/google/android/material/R$drawable;->design_password_eye:I

    .line 81
    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 83
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$string;->password_toggle_content_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$4;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$4;-><init>(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->onEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->addOnEditTextAttachedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->onEndIconChangedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->addOnEndIconChangedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;)V

    return-void
.end method
