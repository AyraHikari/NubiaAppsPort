.class Lcn/nubia/i/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/i/g;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/i/g;


# direct methods
.method constructor <init>(Lcn/nubia/i/g;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcn/nubia/i/g$2;->a:Lcn/nubia/i/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 142
    iget-object p1, p0, Lcn/nubia/i/g$2;->a:Lcn/nubia/i/g;

    invoke-static {p1}, Lcn/nubia/i/g;->b(Lcn/nubia/i/g;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/i/g$2;->a:Lcn/nubia/i/g;

    invoke-static {v0}, Lcn/nubia/i/g;->a(Lcn/nubia/i/g;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/i/q$f;->a:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcn/nubia/i/g$2;->a:Lcn/nubia/i/g;

    invoke-static {p1}, Lcn/nubia/i/g;->c(Lcn/nubia/i/g;)Lcn/nubia/i/g$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/i/g$a;->a(Z)V

    .line 144
    iget-object p1, p0, Lcn/nubia/i/g$2;->a:Lcn/nubia/i/g;

    invoke-static {p1}, Lcn/nubia/i/g;->b(Lcn/nubia/i/g;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcn/nubia/i/q$f;->b:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 145
    iget-object p1, p0, Lcn/nubia/i/g$2;->a:Lcn/nubia/i/g;

    invoke-static {p1}, Lcn/nubia/i/g;->d(Lcn/nubia/i/g;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 146
    iget-object p1, p0, Lcn/nubia/i/g$2;->a:Lcn/nubia/i/g;

    invoke-static {p1}, Lcn/nubia/i/g;->e(Lcn/nubia/i/g;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object p1, p0, Lcn/nubia/i/g$2;->a:Lcn/nubia/i/g;

    invoke-static {p1}, Lcn/nubia/i/g;->b(Lcn/nubia/i/g;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/i/g$2;->a:Lcn/nubia/i/g;

    invoke-static {v1}, Lcn/nubia/i/g;->a(Lcn/nubia/i/g;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/i/q$f;->b:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 148
    iget-object p1, p0, Lcn/nubia/i/g$2;->a:Lcn/nubia/i/g;

    invoke-static {p1}, Lcn/nubia/i/g;->c(Lcn/nubia/i/g;)Lcn/nubia/i/g$a;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcn/nubia/i/g$a;->a(Z)V

    .line 149
    iget-object p1, p0, Lcn/nubia/i/g$2;->a:Lcn/nubia/i/g;

    invoke-static {p1}, Lcn/nubia/i/g;->b(Lcn/nubia/i/g;)Landroid/widget/TextView;

    move-result-object p1

    sget v1, Lcn/nubia/i/q$f;->a:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 150
    iget-object p1, p0, Lcn/nubia/i/g$2;->a:Lcn/nubia/i/g;

    invoke-static {p1}, Lcn/nubia/i/g;->d(Lcn/nubia/i/g;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 151
    iget-object p1, p0, Lcn/nubia/i/g$2;->a:Lcn/nubia/i/g;

    invoke-static {p1}, Lcn/nubia/i/g;->e(Lcn/nubia/i/g;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/i/g$2;->a:Lcn/nubia/i/g;

    invoke-static {p1}, Lcn/nubia/i/g;->c(Lcn/nubia/i/g;)Lcn/nubia/i/g$a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/i/g$a;->notifyDataSetChanged()V

    return-void
.end method
