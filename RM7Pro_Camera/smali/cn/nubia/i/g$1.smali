.class Lcn/nubia/i/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/i/g;->e()V
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

    .line 119
    iput-object p1, p0, Lcn/nubia/i/g$1;->a:Lcn/nubia/i/g;

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

    .line 122
    iget-object p1, p0, Lcn/nubia/i/g$1;->a:Lcn/nubia/i/g;

    invoke-static {p1}, Lcn/nubia/i/g;->b(Lcn/nubia/i/g;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p4, p0, Lcn/nubia/i/g$1;->a:Lcn/nubia/i/g;

    invoke-static {p4}, Lcn/nubia/i/g;->a(Lcn/nubia/i/g;)Landroid/content/Context;

    move-result-object p4

    sget p5, Lcn/nubia/i/q$f;->a:I

    invoke-virtual {p4, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 123
    iget-object p1, p0, Lcn/nubia/i/g$1;->a:Lcn/nubia/i/g;

    invoke-static {p1}, Lcn/nubia/i/g;->c(Lcn/nubia/i/g;)Lcn/nubia/i/g$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcn/nubia/i/g$a;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/i/i;

    .line 124
    iget-object p3, p0, Lcn/nubia/i/g$1;->a:Lcn/nubia/i/g;

    invoke-static {p3}, Lcn/nubia/i/g;->d(Lcn/nubia/i/g;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 125
    iget-object p3, p0, Lcn/nubia/i/g$1;->a:Lcn/nubia/i/g;

    invoke-static {p3}, Lcn/nubia/i/g;->d(Lcn/nubia/i/g;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 126
    sget p1, Lcn/nubia/i/q$d;->s:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget p3, Lcn/nubia/i/q$c;->b:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    sget p1, Lcn/nubia/i/q$d;->h:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object p3, p0, Lcn/nubia/i/g$1;->a:Lcn/nubia/i/g;

    invoke-static {p3}, Lcn/nubia/i/g;->d(Lcn/nubia/i/g;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget p1, Lcn/nubia/i/q$d;->s:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget p3, Lcn/nubia/i/q$c;->a:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    sget p1, Lcn/nubia/i/q$d;->h:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method
