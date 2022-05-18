.class Lcn/nubia/i/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/i/f;->e()V
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

    .line 157
    iput-object p1, p0, Lcn/nubia/i/f$3;->a:Lcn/nubia/i/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 160
    iget-object p1, p0, Lcn/nubia/i/f$3;->a:Lcn/nubia/i/f;

    invoke-static {p1}, Lcn/nubia/i/f;->a(Lcn/nubia/i/f;)Lcn/nubia/i/d;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object p1, p0, Lcn/nubia/i/f$3;->a:Lcn/nubia/i/f;

    invoke-static {p1}, Lcn/nubia/i/f;->b(Lcn/nubia/i/f;)Lcn/nubia/i/f$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcn/nubia/i/f$a;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/i/i;

    .line 164
    invoke-virtual {p1}, Lcn/nubia/i/i;->h()I

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcn/nubia/i/i;->k()I

    move-result p2

    const/16 p3, 0xfa0

    if-eq p2, p3, :cond_4

    .line 165
    iget-object p2, p0, Lcn/nubia/i/f$3;->a:Lcn/nubia/i/f;

    invoke-static {p2}, Lcn/nubia/i/f;->c(Lcn/nubia/i/f;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/i/p;->e(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 166
    iget-object p1, p0, Lcn/nubia/i/f$3;->a:Lcn/nubia/i/f;

    invoke-static {p1}, Lcn/nubia/i/f;->d(Lcn/nubia/i/f;)V

    .line 167
    iget-object p1, p0, Lcn/nubia/i/f$3;->a:Lcn/nubia/i/f;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/nubia/i/f;->a(Lcn/nubia/i/f;Z)Z

    goto :goto_0

    .line 169
    :cond_1
    iget-object p2, p0, Lcn/nubia/i/f$3;->a:Lcn/nubia/i/f;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcn/nubia/i/f;->a(Lcn/nubia/i/f;Z)Z

    .line 170
    iget-object p2, p0, Lcn/nubia/i/f$3;->a:Lcn/nubia/i/f;

    invoke-static {p2}, Lcn/nubia/i/f;->c(Lcn/nubia/i/f;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/i/p;->f(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 171
    iget-object p2, p0, Lcn/nubia/i/f$3;->a:Lcn/nubia/i/f;

    invoke-static {p2}, Lcn/nubia/i/f;->c(Lcn/nubia/i/f;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/i/p;->c(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 172
    invoke-virtual {p1, p3}, Lcn/nubia/i/i;->b(I)V

    .line 173
    iget-object p2, p0, Lcn/nubia/i/f$3;->a:Lcn/nubia/i/f;

    invoke-static {p2}, Lcn/nubia/i/f;->a(Lcn/nubia/i/f;)Lcn/nubia/i/d;

    move-result-object p2

    new-instance p3, Lcn/nubia/i/c;

    iget-object p4, p0, Lcn/nubia/i/f$3;->a:Lcn/nubia/i/f;

    invoke-static {p4}, Lcn/nubia/i/f;->e(Lcn/nubia/i/f;)Lcn/nubia/i/c$a;

    move-result-object p4

    invoke-direct {p3, p1, p4}, Lcn/nubia/i/c;-><init>(Lcn/nubia/i/i;Lcn/nubia/i/c$a;)V

    invoke-virtual {p2, p3}, Lcn/nubia/i/d;->a(Lcn/nubia/i/c;)V

    .line 174
    iget-object p1, p0, Lcn/nubia/i/f$3;->a:Lcn/nubia/i/f;

    invoke-static {p1}, Lcn/nubia/i/f;->b(Lcn/nubia/i/f;)Lcn/nubia/i/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/i/f$a;->notifyDataSetChanged()V

    goto :goto_0

    .line 176
    :cond_2
    iget-object p2, p0, Lcn/nubia/i/f$3;->a:Lcn/nubia/i/f;

    invoke-static {p2, p1}, Lcn/nubia/i/f;->a(Lcn/nubia/i/f;Lcn/nubia/i/i;)V

    goto :goto_0

    .line 179
    :cond_3
    invoke-virtual {p1, p3}, Lcn/nubia/i/i;->b(I)V

    .line 180
    iget-object p2, p0, Lcn/nubia/i/f$3;->a:Lcn/nubia/i/f;

    invoke-static {p2}, Lcn/nubia/i/f;->a(Lcn/nubia/i/f;)Lcn/nubia/i/d;

    move-result-object p2

    new-instance p3, Lcn/nubia/i/c;

    iget-object p4, p0, Lcn/nubia/i/f$3;->a:Lcn/nubia/i/f;

    invoke-static {p4}, Lcn/nubia/i/f;->e(Lcn/nubia/i/f;)Lcn/nubia/i/c$a;

    move-result-object p4

    invoke-direct {p3, p1, p4}, Lcn/nubia/i/c;-><init>(Lcn/nubia/i/i;Lcn/nubia/i/c$a;)V

    invoke-virtual {p2, p3}, Lcn/nubia/i/d;->a(Lcn/nubia/i/c;)V

    .line 181
    iget-object p1, p0, Lcn/nubia/i/f$3;->a:Lcn/nubia/i/f;

    invoke-static {p1}, Lcn/nubia/i/f;->b(Lcn/nubia/i/f;)Lcn/nubia/i/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/i/f$a;->notifyDataSetChanged()V

    :cond_4
    :goto_0
    return-void
.end method
