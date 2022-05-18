.class public Lcn/nubia/video/mediaeditorview/textfilter/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field public b:Lcn/nubia/video/commonui/app/b;

.field public c:Landroid/widget/EditText;

.field private d:Lcn/nubia/video/mediaeditorview/textfilter/b;

.field private e:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/video/mediaeditorview/textfilter/b;Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/i;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/i;->d:Lcn/nubia/video/mediaeditorview/textfilter/b;

    .line 4
    iput-object p3, p0, Lcn/nubia/video/mediaeditorview/textfilter/i;->e:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    return-void
.end method

.method static synthetic a(Lcn/nubia/video/mediaeditorview/textfilter/i;)Lcn/nubia/video/mediaeditorview/textfilter/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/textfilter/i;->d:Lcn/nubia/video/mediaeditorview/textfilter/b;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/video/mediaeditorview/textfilter/i;)Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/textfilter/i;->e:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/i;->b:Lcn/nubia/video/commonui/app/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    .line 1
    new-instance v0, Lcn/nubia/video/commonui/app/b$a;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/i;->a:Landroid/content/Context;

    sget v2, Lcn/nubia/video/mediaeditorview/j;->a:I

    invoke-direct {v0, v1, v2}, Lcn/nubia/video/commonui/app/b$a;-><init>(Landroid/content/Context;I)V

    sget v1, Lcn/nubia/video/mediaeditorview/i;->p:I

    .line 2
    invoke-virtual {v0, v1, p2}, Lcn/nubia/video/commonui/app/b$a;->h(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;

    sget p2, Lcn/nubia/video/mediaeditorview/i;->b:I

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p2, v1}, Lcn/nubia/video/commonui/app/b$a;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;

    .line 4
    invoke-virtual {v0, p1}, Lcn/nubia/video/commonui/app/b$a;->m(Landroid/view/View;)Lcn/nubia/video/commonui/app/b$a;

    .line 5
    sget p2, Lcn/nubia/video/mediaeditorview/g;->l:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/i;->c:Landroid/widget/EditText;

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelected(Z)V

    .line 7
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/i;->c:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 8
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/i;->c:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 9
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/i;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 10
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/i;->d:Lcn/nubia/video/mediaeditorview/textfilter/b;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getLayout()Lcn/nubia/video/mediaeditorview/textfilter/d;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/d;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/i;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcn/nubia/video/mediaeditorview/i;->c:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/i;->c:Landroid/widget/EditText;

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/i;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    sget-object v1, Lcn/nubia/video/mediaeditorview/textfilter/f;->c:[Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/i;->d:Lcn/nubia/video/mediaeditorview/textfilter/b;

    .line 12
    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getLayout()Lcn/nubia/video/mediaeditorview/textfilter/d;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/d;->getFont()I

    move-result v2

    aget-object v1, v1, v2

    .line 13
    invoke-static {p2, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 14
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/i;->c:Landroid/widget/EditText;

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/i;->d:Lcn/nubia/video/mediaeditorview/textfilter/b;

    invoke-virtual {p2}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getLayout()Lcn/nubia/video/mediaeditorview/textfilter/d;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/video/mediaeditorview/textfilter/d;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/i;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 16
    :goto_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/i;->c:Landroid/widget/EditText;

    new-instance p2, Lcn/nubia/video/mediaeditorview/textfilter/i$a;

    invoke-direct {p2, p0}, Lcn/nubia/video/mediaeditorview/textfilter/i$a;-><init>(Lcn/nubia/video/mediaeditorview/textfilter/i;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 17
    invoke-virtual {v0}, Lcn/nubia/video/commonui/app/b$a;->n()Lcn/nubia/video/commonui/app/b;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/i;->b:Lcn/nubia/video/commonui/app/b;

    .line 18
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/i;->c:Landroid/widget/EditText;

    .line 19
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/i;->a:Landroid/content/Context;

    const-string v0, "input_method"

    .line 20
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/nubia/video/mediaeditorview/textfilter/i$b;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/video/mediaeditorview/textfilter/i$b;-><init>(Lcn/nubia/video/mediaeditorview/textfilter/i;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V

    const-wide/16 p1, 0x32

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/i;->b:Lcn/nubia/video/commonui/app/b;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method
