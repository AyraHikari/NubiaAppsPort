.class Lcn/nubia/i/f$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/i/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/i/f;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/i/a<",
        "Lcn/nubia/i/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/i/f;


# direct methods
.method constructor <init>(Lcn/nubia/i/f;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/i/j;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/i/j;",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/i/i;",
            ">;)V"
        }
    .end annotation

    const-string p1, "FilterUnLoadOp"

    const-string v0, "onDatabaseLoaded finished"

    .line 228
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {v0}, Lcn/nubia/i/f;->a(Lcn/nubia/i/f;)Lcn/nubia/i/d;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/i/f;->b(Lcn/nubia/i/f;Z)Z

    .line 233
    iget-object v0, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {v0}, Lcn/nubia/i/f;->h(Lcn/nubia/i/f;)V

    .line 235
    iget-object v0, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {v0}, Lcn/nubia/i/f;->c(Lcn/nubia/i/f;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/i/p;->e(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/i/f;->a(Lcn/nubia/i/f;Z)Z

    .line 236
    iget-object v0, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {v0}, Lcn/nubia/i/f;->i(Lcn/nubia/i/f;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 237
    iget-object p1, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {p1}, Lcn/nubia/i/f;->j(Lcn/nubia/i/f;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcn/nubia/i/q$f;->c:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 238
    iget-object p1, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {p1}, Lcn/nubia/i/f;->k(Lcn/nubia/i/f;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_f

    .line 240
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_f

    .line 241
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/i/i;

    .line 242
    iget-object v0, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {v0}, Lcn/nubia/i/f;->l(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcn/nubia/i/i;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {v0}, Lcn/nubia/i/f;->l(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcn/nubia/i/i;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_1
    invoke-virtual {p2}, Lcn/nubia/i/i;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/i/p;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 246
    invoke-virtual {p2}, Lcn/nubia/i/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/i/p;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 247
    iget-object v0, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {v0}, Lcn/nubia/i/f;->m(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 248
    iget-object v0, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {v0}, Lcn/nubia/i/f;->m(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {v0}, Lcn/nubia/i/f;->o(Lcn/nubia/i/f;)Lcn/nubia/i/e;

    move-result-object v0

    new-instance v1, Lcn/nubia/i/c;

    iget-object v2, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {v2}, Lcn/nubia/i/f;->n(Lcn/nubia/i/f;)Lcn/nubia/i/c$a;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcn/nubia/i/c;-><init>(Lcn/nubia/i/i;Lcn/nubia/i/c$a;)V

    invoke-virtual {v0, v1}, Lcn/nubia/i/e;->a(Lcn/nubia/i/c;)V

    .line 252
    :cond_2
    iget-object v0, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {v0}, Lcn/nubia/i/f;->p(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 253
    iget-object v0, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {v0}, Lcn/nubia/i/f;->p(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_3
    iget-object p2, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {p2}, Lcn/nubia/i/f;->q(Lcn/nubia/i/f;)V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    if-eqz p2, :cond_a

    .line 262
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/i/i;

    .line 265
    iget-object v2, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {v2}, Lcn/nubia/i/f;->l(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lcn/nubia/i/i;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 266
    iget-object v2, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {v2}, Lcn/nubia/i/f;->l(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lcn/nubia/i/i;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_6
    iget-object v2, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {v2}, Lcn/nubia/i/f;->l(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lcn/nubia/i/i;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 269
    iget-object v2, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {v2}, Lcn/nubia/i/f;->l(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lcn/nubia/i/i;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_7
    invoke-virtual {v1}, Lcn/nubia/i/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/i/p;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 272
    invoke-virtual {v1}, Lcn/nubia/i/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/i/p;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 273
    iget-object v2, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {v2}, Lcn/nubia/i/f;->m(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 274
    iget-object v2, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {v2}, Lcn/nubia/i/f;->m(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v2, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {v2}, Lcn/nubia/i/f;->o(Lcn/nubia/i/f;)Lcn/nubia/i/e;

    move-result-object v2

    new-instance v3, Lcn/nubia/i/c;

    iget-object v4, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {v4}, Lcn/nubia/i/f;->n(Lcn/nubia/i/f;)Lcn/nubia/i/c$a;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcn/nubia/i/c;-><init>(Lcn/nubia/i/i;Lcn/nubia/i/c$a;)V

    invoke-virtual {v2, v3}, Lcn/nubia/i/e;->a(Lcn/nubia/i/c;)V

    .line 278
    :cond_8
    iget-object v2, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {v2}, Lcn/nubia/i/f;->p(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 279
    iget-object v2, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {v2}, Lcn/nubia/i/f;->p(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 282
    :cond_9
    invoke-virtual {v1}, Lcn/nubia/i/i;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 287
    :cond_a
    sget-boolean p2, Lcn/nubia/i/p;->a:Z

    if-eqz p2, :cond_e

    const-string p2, " "

    const-string v1, ""

    if-eqz v0, :cond_b

    .line 290
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v1

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 291
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_b
    move-object v3, v1

    .line 296
    :cond_c
    iget-object v2, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {v2}, Lcn/nubia/i/f;->p(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/i/i;

    .line 297
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcn/nubia/i/i;->i()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 299
    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noneed downloadids: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "; interId: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_e
    iget-object p1, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {p1, v0}, Lcn/nubia/i/f;->a(Lcn/nubia/i/f;Ljava/util/ArrayList;)V

    .line 303
    iget-object p1, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {p1}, Lcn/nubia/i/f;->k(Lcn/nubia/i/f;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 305
    :cond_f
    iget-object p1, p0, Lcn/nubia/i/f$6;->a:Lcn/nubia/i/f;

    invoke-static {p1}, Lcn/nubia/i/f;->r(Lcn/nubia/i/f;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    .line 225
    check-cast p1, Lcn/nubia/i/j;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/i/f$6;->a(Lcn/nubia/i/j;Ljava/util/ArrayList;)V

    return-void
.end method
