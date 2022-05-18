.class Lcn/nubia/i/g$3;
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

    .line 157
    iput-object p1, p0, Lcn/nubia/i/g$3;->a:Lcn/nubia/i/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 160
    iget-object p1, p0, Lcn/nubia/i/g$3;->a:Lcn/nubia/i/g;

    invoke-static {p1}, Lcn/nubia/i/g;->c(Lcn/nubia/i/g;)Lcn/nubia/i/g$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/i/g$a;->a(Z)V

    .line 161
    iget-object p1, p0, Lcn/nubia/i/g$3;->a:Lcn/nubia/i/g;

    invoke-static {p1}, Lcn/nubia/i/g;->b(Lcn/nubia/i/g;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcn/nubia/i/q$f;->b:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 162
    iget-object p1, p0, Lcn/nubia/i/g$3;->a:Lcn/nubia/i/g;

    invoke-static {p1}, Lcn/nubia/i/g;->d(Lcn/nubia/i/g;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 163
    iget-object p1, p0, Lcn/nubia/i/g$3;->a:Lcn/nubia/i/g;

    invoke-static {p1}, Lcn/nubia/i/g;->e(Lcn/nubia/i/g;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object p1, p0, Lcn/nubia/i/g$3;->a:Lcn/nubia/i/g;

    invoke-static {p1}, Lcn/nubia/i/g;->c(Lcn/nubia/i/g;)Lcn/nubia/i/g$a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/i/g$a;->notifyDataSetChanged()V

    return-void
.end method
