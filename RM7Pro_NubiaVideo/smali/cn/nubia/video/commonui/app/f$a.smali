.class Lcn/nubia/video/commonui/app/f$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/commonui/app/f;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/commonui/app/f;


# direct methods
.method constructor <init>(Lcn/nubia/video/commonui/app/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/commonui/app/f$a;->a:Lcn/nubia/video/commonui/app/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object p1, p0, Lcn/nubia/video/commonui/app/f$a;->a:Lcn/nubia/video/commonui/app/f;

    invoke-static {p1}, Lcn/nubia/video/commonui/app/f;->l(Lcn/nubia/video/commonui/app/f;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcn/nubia/video/commonui/app/f$a;->a:Lcn/nubia/video/commonui/app/f;

    invoke-static {v0}, Lcn/nubia/video/commonui/app/f;->l(Lcn/nubia/video/commonui/app/f;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcn/nubia/video/commonui/app/f$a;->a:Lcn/nubia/video/commonui/app/f;

    invoke-static {v1}, Lcn/nubia/video/commonui/app/f;->m(Lcn/nubia/video/commonui/app/f;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcn/nubia/video/commonui/app/f$a;->a:Lcn/nubia/video/commonui/app/f;

    invoke-static {v1}, Lcn/nubia/video/commonui/app/f;->m(Lcn/nubia/video/commonui/app/f;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v5, p0, Lcn/nubia/video/commonui/app/f$a;->a:Lcn/nubia/video/commonui/app/f;

    invoke-static {v5}, Lcn/nubia/video/commonui/app/f;->n(Lcn/nubia/video/commonui/app/f;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcn/nubia/video/commonui/app/f$a;->a:Lcn/nubia/video/commonui/app/f;

    invoke-static {v1}, Lcn/nubia/video/commonui/app/f;->n(Lcn/nubia/video/commonui/app/f;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :goto_0
    iget-object v1, p0, Lcn/nubia/video/commonui/app/f$a;->a:Lcn/nubia/video/commonui/app/f;

    invoke-static {v1}, Lcn/nubia/video/commonui/app/f;->o(Lcn/nubia/video/commonui/app/f;)Ljava/text/NumberFormat;

    move-result-object v1

    if-eqz v1, :cond_1

    int-to-double v4, p1

    int-to-double v0, v0

    div-double/2addr v4, v0

    .line 9
    new-instance p1, Landroid/text/SpannableString;

    iget-object v0, p0, Lcn/nubia/video/commonui/app/f$a;->a:Lcn/nubia/video/commonui/app/f;

    invoke-static {v0}, Lcn/nubia/video/commonui/app/f;->o(Lcn/nubia/video/commonui/app/f;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 10
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 11
    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v2, 0x21

    .line 12
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 13
    iget-object v0, p0, Lcn/nubia/video/commonui/app/f$a;->a:Lcn/nubia/video/commonui/app/f;

    invoke-static {v0}, Lcn/nubia/video/commonui/app/f;->p(Lcn/nubia/video/commonui/app/f;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/commonui/app/f$a;->a:Lcn/nubia/video/commonui/app/f;

    invoke-static {p1}, Lcn/nubia/video/commonui/app/f;->p(Lcn/nubia/video/commonui/app/f;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
