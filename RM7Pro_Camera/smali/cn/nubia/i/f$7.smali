.class Lcn/nubia/i/f$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/i/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/i/f;->b(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/i/a<",
        "Lcn/nubia/i/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/i/f;


# direct methods
.method constructor <init>(Lcn/nubia/i/f;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/i/h;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/i/h;",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/i/i;",
            ">;)V"
        }
    .end annotation

    const-string v0, "FilterUnLoadOp"

    const-string v1, "download success!"

    .line 329
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v1}, Lcn/nubia/i/f;->s(Lcn/nubia/i/f;)Lcn/nubia/i/h;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/i/h;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/i/f;->b(Lcn/nubia/i/f;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 331
    iget-object v1, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/i/f;->b(Lcn/nubia/i/f;Z)Z

    .line 332
    iget-object v1, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v1}, Lcn/nubia/i/f;->a(Lcn/nubia/i/f;)Lcn/nubia/i/d;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "downloadDls is null"

    .line 333
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_7

    .line 336
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 337
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/i/i;

    .line 338
    iget-object v1, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v1}, Lcn/nubia/i/f;->p(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    .line 339
    iget-object v1, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v1}, Lcn/nubia/i/f;->p(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 340
    iget-object v3, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v3}, Lcn/nubia/i/f;->m(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 342
    iget-object v4, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v4}, Lcn/nubia/i/f;->m(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/i/i;

    .line 343
    invoke-virtual {v3}, Lcn/nubia/i/i;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcn/nubia/i/i;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "iconUril eqauls"

    .line 344
    invoke-static {v0, v4}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Lcn/nubia/i/i;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/i/i;->d(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2}, Lcn/nubia/i/i;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/i/i;->e(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Lcn/nubia/i/i;->j()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcn/nubia/i/i;->f(Ljava/lang/String;)V

    move-object p2, v3

    goto :goto_1

    .line 350
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iconUril not eqauls filter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcn/nubia/i/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; local: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcn/nubia/i/i;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_2
    :goto_1
    iget-object v3, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v3}, Lcn/nubia/i/f;->p(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 356
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iconUril not contains "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcn/nubia/i/i;->i()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :goto_2
    iget-object v1, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v1}, Lcn/nubia/i/f;->m(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 359
    iget-object v1, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v1}, Lcn/nubia/i/f;->m(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v1, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v1}, Lcn/nubia/i/f;->o(Lcn/nubia/i/f;)Lcn/nubia/i/e;

    move-result-object v1

    new-instance v3, Lcn/nubia/i/c;

    iget-object v4, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v4}, Lcn/nubia/i/f;->n(Lcn/nubia/i/f;)Lcn/nubia/i/c$a;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Lcn/nubia/i/c;-><init>(Lcn/nubia/i/i;Lcn/nubia/i/c$a;)V

    invoke-virtual {v1, v3}, Lcn/nubia/i/e;->a(Lcn/nubia/i/c;)V

    .line 363
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remaing intermediatList: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v1}, Lcn/nubia/i/f;->p(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OffShelves Remove: "

    .line 365
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-object v1, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v1}, Lcn/nubia/i/f;->p(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/i/i;

    .line 367
    iget-object v4, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v4}, Lcn/nubia/i/f;->m(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_5

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v5}, Lcn/nubia/i/f;->m(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/i/i;

    invoke-virtual {v5}, Lcn/nubia/i/i;->i()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v5}, Lcn/nubia/i/f;->m(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/i/i;

    invoke-virtual {v5}, Lcn/nubia/i/i;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-object v4, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v4}, Lcn/nubia/i/f;->m(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 373
    :cond_6
    iget-object v1, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v1}, Lcn/nubia/i/f;->p(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 374
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string p2, "download fail or no file found!"

    .line 377
    invoke-static {v0, p2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p1}, Lcn/nubia/i/h;->b()Z

    move-result p1

    if-nez p1, :cond_c

    .line 379
    iget-object p1, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {p1}, Lcn/nubia/i/f;->p(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    if-lez p1, :cond_b

    .line 380
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v0, p2

    .line 381
    :goto_4
    iget-object v1, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v1}, Lcn/nubia/i/f;->p(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 382
    iget-object v1, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v1}, Lcn/nubia/i/f;->p(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/i/i;

    invoke-virtual {v1}, Lcn/nubia/i/i;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v1}, Lcn/nubia/i/f;->p(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/i/i;

    invoke-virtual {v1}, Lcn/nubia/i/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/i/p;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 383
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 386
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 387
    iget-object v1, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v1}, Lcn/nubia/i/f;->p(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/i/i;

    .line 388
    iget-object v2, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v2}, Lcn/nubia/i/f;->p(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 389
    iget-object v0, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v0}, Lcn/nubia/i/f;->m(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 390
    iget-object v0, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v0}, Lcn/nubia/i/f;->m(Lcn/nubia/i/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v0, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v0}, Lcn/nubia/i/f;->o(Lcn/nubia/i/f;)Lcn/nubia/i/e;

    move-result-object v0

    new-instance v2, Lcn/nubia/i/c;

    iget-object v3, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {v3}, Lcn/nubia/i/f;->n(Lcn/nubia/i/f;)Lcn/nubia/i/c$a;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcn/nubia/i/c;-><init>(Lcn/nubia/i/i;Lcn/nubia/i/c$a;)V

    invoke-virtual {v0, v2}, Lcn/nubia/i/e;->a(Lcn/nubia/i/c;)V

    goto :goto_5

    .line 395
    :cond_b
    iget-object p1, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {p1, p2}, Lcn/nubia/i/f;->a(Lcn/nubia/i/f;Z)Z

    .line 396
    iget-object p1, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {p1}, Lcn/nubia/i/f;->j(Lcn/nubia/i/f;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcn/nubia/i/q$f;->g:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 397
    iget-object p1, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {p1}, Lcn/nubia/i/f;->k(Lcn/nubia/i/f;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 400
    :cond_c
    iget-object p1, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {p1}, Lcn/nubia/i/f;->b(Lcn/nubia/i/f;)Lcn/nubia/i/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/i/f$a;->notifyDataSetChanged()V

    .line 401
    iget-object p1, p0, Lcn/nubia/i/f$7;->a:Lcn/nubia/i/f;

    invoke-static {p1}, Lcn/nubia/i/f;->r(Lcn/nubia/i/f;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    .line 326
    check-cast p1, Lcn/nubia/i/h;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/i/f$7;->a(Lcn/nubia/i/h;Ljava/util/ArrayList;)V

    return-void
.end method
