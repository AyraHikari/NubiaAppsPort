.class Lcn/nubia/camera/w/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/w/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/w/c;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/w/c;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/w/c;Lcn/nubia/camera/w/c$1;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcn/nubia/camera/w/c$c;-><init>(Lcn/nubia/camera/w/c;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 192
    iget-object p1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {p1}, Lcn/nubia/camera/w/c;->d(Lcn/nubia/camera/w/c;)Landroid/widget/GridView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/GridView;->isClickable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-virtual {p1, p3}, Lcn/nubia/camera/w/c;->a(I)Z

    move-result p1

    const/16 p2, 0x8

    const/4 p4, -0x1

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    .line 199
    iget-object p1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {p1}, Lcn/nubia/camera/w/c;->b(Lcn/nubia/camera/w/c;)I

    move-result p1

    if-eq p1, p4, :cond_2

    .line 200
    iget-object p1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {p1}, Lcn/nubia/camera/w/c;->b(Lcn/nubia/camera/w/c;)I

    move-result p1

    .line 201
    iget-object v1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {v1, p4}, Lcn/nubia/camera/w/c;->b(Lcn/nubia/camera/w/c;I)I

    .line 202
    iget-object p4, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {p4}, Lcn/nubia/camera/w/c;->f(Lcn/nubia/camera/w/c;)Landroid/view/View;

    move-result-object p4

    iget-object v1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {v1}, Lcn/nubia/camera/w/c;->e(Lcn/nubia/camera/w/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/w/d$a;

    invoke-virtual {p1}, Lcn/nubia/camera/w/d$a;->c()I

    move-result p1

    invoke-virtual {p4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p4

    if-nez p4, :cond_2

    .line 204
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object p1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {p1}, Lcn/nubia/camera/w/c;->e(Lcn/nubia/camera/w/c;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/w/d$a;

    invoke-virtual {p2}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object p2

    sget-object p4, Lcn/nubia/camera/w/b;->b:Lcn/nubia/camera/w/b;

    if-ne p2, p4, :cond_1

    goto :goto_0

    :cond_1
    move p5, v0

    :goto_0
    invoke-static {p1, v0, p5}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/c;ZZ)V

    .line 210
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {p1}, Lcn/nubia/camera/w/c;->e(Lcn/nubia/camera/w/c;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/w/d$a;

    invoke-virtual {p1}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/w/b;->c:Lcn/nubia/camera/w/b;

    if-ne p1, p2, :cond_3

    .line 211
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    .line 212
    invoke-static {p2}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/c;)Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p2

    const p3, 0x7f0f0193

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 211
    invoke-virtual {p1, p2, v0}, Lcn/nubia/camera/ba/f;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 214
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {p1}, Lcn/nubia/camera/w/c;->e(Lcn/nubia/camera/w/c;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/w/d$a;

    invoke-virtual {p1}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/w/b;->i:Lcn/nubia/camera/w/b;

    if-ne p1, p2, :cond_4

    .line 215
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    .line 216
    invoke-static {p2}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/c;)Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p2

    const p3, 0x7f0f0192

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 215
    invoke-virtual {p1, p2, v0}, Lcn/nubia/camera/ba/f;->a(Ljava/lang/String;I)V

    .line 221
    :cond_4
    :goto_1
    iget-object p1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {p1}, Lcn/nubia/camera/w/c;->g(Lcn/nubia/camera/w/c;)Lcn/nubia/camera/w/c$b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/w/c$b;->notifyDataSetInvalidated()V

    return-void

    .line 225
    :cond_5
    iget-object p1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {p1}, Lcn/nubia/camera/w/c;->e(Lcn/nubia/camera/w/c;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p3, p1, :cond_6

    .line 226
    iget-object p1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {p1}, Lcn/nubia/camera/w/c;->h(Lcn/nubia/camera/w/c;)V

    .line 229
    :cond_6
    iget-object p1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {p1}, Lcn/nubia/camera/w/c;->e(Lcn/nubia/camera/w/c;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq p3, p1, :cond_a

    iget-object p1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {p1}, Lcn/nubia/camera/w/c;->e(Lcn/nubia/camera/w/c;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/w/d$a;

    invoke-virtual {p1}, Lcn/nubia/camera/w/d$a;->c()I

    move-result p1

    if-eqz p1, :cond_a

    .line 230
    iget-object p1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {p1}, Lcn/nubia/camera/w/c;->f(Lcn/nubia/camera/w/c;)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {v1}, Lcn/nubia/camera/w/c;->e(Lcn/nubia/camera/w/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v1}, Lcn/nubia/camera/w/d$a;->c()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    .line 232
    iget-object v1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {v1, p4}, Lcn/nubia/camera/w/c;->b(Lcn/nubia/camera/w/c;I)I

    .line 233
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object p1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {p1}, Lcn/nubia/camera/w/c;->e(Lcn/nubia/camera/w/c;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/nubia/camera/w/d$a;

    invoke-virtual {p4}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object p4

    sget-object v1, Lcn/nubia/camera/w/b;->b:Lcn/nubia/camera/w/b;

    if-ne p4, v1, :cond_7

    goto :goto_2

    :cond_7
    move p5, v0

    :goto_2
    invoke-static {p1, v0, p5}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/c;ZZ)V

    goto :goto_4

    .line 236
    :cond_8
    iget-object p4, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {p4, p3}, Lcn/nubia/camera/w/c;->b(Lcn/nubia/camera/w/c;I)I

    .line 237
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object p4, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {p4}, Lcn/nubia/camera/w/c;->e(Lcn/nubia/camera/w/c;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/nubia/camera/w/d$a;

    invoke-virtual {p4}, Lcn/nubia/camera/w/d$a;->d()I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/prosetting/ui/a;

    .line 239
    invoke-virtual {p1}, Lcn/nubia/camera/prosetting/ui/a;->getValue()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcn/nubia/camera/prosetting/ui/a;->b(Ljava/lang/String;)V

    .line 240
    iget-object p1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {p1}, Lcn/nubia/camera/w/c;->e(Lcn/nubia/camera/w/c;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/nubia/camera/w/d$a;

    invoke-virtual {p4}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object p4

    sget-object v1, Lcn/nubia/camera/w/b;->b:Lcn/nubia/camera/w/b;

    if-ne p4, v1, :cond_9

    move p4, p5

    goto :goto_3

    :cond_9
    move p4, v0

    :goto_3
    invoke-static {p1, p5, p4}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/c;ZZ)V

    .line 242
    :goto_4
    iget-object p1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {p1, p3}, Lcn/nubia/camera/w/c;->c(Lcn/nubia/camera/w/c;I)V

    .line 243
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ba/f;->c()V

    .line 246
    :cond_a
    :goto_5
    iget-object p1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {p1}, Lcn/nubia/camera/w/c;->e(Lcn/nubia/camera/w/c;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_c

    if-eq v0, p3, :cond_b

    .line 247
    iget-object p1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {p1}, Lcn/nubia/camera/w/c;->e(Lcn/nubia/camera/w/c;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/w/d$a;

    invoke-virtual {p1}, Lcn/nubia/camera/w/d$a;->c()I

    move-result p1

    if-eqz p1, :cond_b

    .line 248
    iget-object p1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {p1}, Lcn/nubia/camera/w/c;->f(Lcn/nubia/camera/w/c;)Landroid/view/View;

    move-result-object p1

    iget-object p4, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {p4}, Lcn/nubia/camera/w/c;->e(Lcn/nubia/camera/w/c;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/nubia/camera/w/d$a;

    invoke-virtual {p4}, Lcn/nubia/camera/w/d$a;->c()I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 249
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 250
    iget-object p1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {p1, v0}, Lcn/nubia/camera/w/c;->c(Lcn/nubia/camera/w/c;I)V

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 253
    :cond_c
    iget-object p1, p0, Lcn/nubia/camera/w/c$c;->a:Lcn/nubia/camera/w/c;

    invoke-static {p1}, Lcn/nubia/camera/w/c;->g(Lcn/nubia/camera/w/c;)Lcn/nubia/camera/w/c$b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/w/c$b;->notifyDataSetInvalidated()V

    return-void
.end method
