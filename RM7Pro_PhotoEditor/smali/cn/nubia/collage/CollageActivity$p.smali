.class Lcn/nubia/collage/CollageActivity$p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/collage/CollageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "p"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/CollageActivity;


# direct methods
.method private constructor <init>(Lcn/nubia/collage/CollageActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/CollageActivity$p;->a:Lcn/nubia/collage/CollageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/collage/CollageActivity;Lcn/nubia/collage/CollageActivity$f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/nubia/collage/CollageActivity$p;-><init>(Lcn/nubia/collage/CollageActivity;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Lcn/nubia/collage/CollageActivity$p;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p2}, Lcn/nubia/collage/CollageActivity;->l(Lcn/nubia/collage/CollageActivity;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/nubia/collage/CollageActivity$p;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p2}, Lcn/nubia/collage/CollageActivity;->l(Lcn/nubia/collage/CollageActivity;)Landroid/widget/TextView;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$p;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->m(Lcn/nubia/collage/CollageActivity;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
