.class Lcn/nubia/i/f$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/i/f;->b(Lcn/nubia/i/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/i/f;


# direct methods
.method constructor <init>(Lcn/nubia/i/f;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcn/nubia/i/f$5;->a:Lcn/nubia/i/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 199
    iget-object p2, p0, Lcn/nubia/i/f$5;->a:Lcn/nubia/i/f;

    invoke-static {p2}, Lcn/nubia/i/f;->a(Lcn/nubia/i/f;)Lcn/nubia/i/d;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object p2, p0, Lcn/nubia/i/f$5;->a:Lcn/nubia/i/f;

    invoke-static {p2}, Lcn/nubia/i/f;->f(Lcn/nubia/i/f;)Lcn/nubia/i/m;

    move-result-object p2

    sget v0, Lcn/nubia/i/q$d;->t:I

    invoke-virtual {p2, v0}, Lcn/nubia/i/m;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 203
    iget-object p2, p0, Lcn/nubia/i/f$5;->a:Lcn/nubia/i/f;

    invoke-static {p2}, Lcn/nubia/i/f;->c(Lcn/nubia/i/f;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/i/p;->d(Landroid/content/Context;)V

    .line 206
    :cond_1
    iget-object p2, p0, Lcn/nubia/i/f$5;->a:Lcn/nubia/i/f;

    invoke-static {p2}, Lcn/nubia/i/f;->g(Lcn/nubia/i/f;)Lcn/nubia/i/i;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcn/nubia/i/i;->b(I)V

    .line 207
    iget-object p2, p0, Lcn/nubia/i/f$5;->a:Lcn/nubia/i/f;

    invoke-static {p2}, Lcn/nubia/i/f;->a(Lcn/nubia/i/f;)Lcn/nubia/i/d;

    move-result-object p2

    new-instance v0, Lcn/nubia/i/c;

    iget-object v1, p0, Lcn/nubia/i/f$5;->a:Lcn/nubia/i/f;

    invoke-static {v1}, Lcn/nubia/i/f;->g(Lcn/nubia/i/f;)Lcn/nubia/i/i;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/i/f$5;->a:Lcn/nubia/i/f;

    invoke-static {v2}, Lcn/nubia/i/f;->e(Lcn/nubia/i/f;)Lcn/nubia/i/c$a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/i/c;-><init>(Lcn/nubia/i/i;Lcn/nubia/i/c$a;)V

    invoke-virtual {p2, v0}, Lcn/nubia/i/d;->a(Lcn/nubia/i/c;)V

    .line 208
    iget-object p2, p0, Lcn/nubia/i/f$5;->a:Lcn/nubia/i/f;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcn/nubia/i/f;->b(Lcn/nubia/i/f;Lcn/nubia/i/i;)Lcn/nubia/i/i;

    .line 209
    iget-object p2, p0, Lcn/nubia/i/f$5;->a:Lcn/nubia/i/f;

    invoke-static {p2}, Lcn/nubia/i/f;->b(Lcn/nubia/i/f;)Lcn/nubia/i/f$a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/i/f$a;->notifyDataSetChanged()V

    .line 210
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
