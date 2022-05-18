.class public Landroidx/constraintlayout/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/b/a/d$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/constraintlayout/b/a/e;

.field public final b:Landroidx/constraintlayout/b/a/d$a;

.field public c:Landroidx/constraintlayout/b/a/d;

.field public d:I

.field e:I

.field f:Landroidx/constraintlayout/b/h;

.field private g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/constraintlayout/b/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/d$a;)V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Landroidx/constraintlayout/b/a/d;->g:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Landroidx/constraintlayout/b/a/d;->d:I

    const/4 v0, -0x1

    .line 99
    iput v0, p0, Landroidx/constraintlayout/b/a/d;->e:I

    .line 132
    iput-object p1, p0, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    .line 133
    iput-object p2, p0, Landroidx/constraintlayout/b/a/d;->b:Landroidx/constraintlayout/b/a/d$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Landroidx/constraintlayout/b/a/d;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Landroidx/constraintlayout/b/a/d;->g:Ljava/util/HashSet;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 70
    iput p1, p0, Landroidx/constraintlayout/b/a/d;->h:I

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Landroidx/constraintlayout/b/a/d;->i:Z

    return-void
.end method

.method public a(ILjava/util/ArrayList;Landroidx/constraintlayout/b/a/a/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/b/a/a/o;",
            ">;",
            "Landroidx/constraintlayout/b/a/a/o;",
            ")V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Landroidx/constraintlayout/b/a/d;->g:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/b/a/d;

    .line 43
    iget-object v1, v1, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    invoke-static {v1, p1, p2, p3}, Landroidx/constraintlayout/b/a/a/i;->a(Landroidx/constraintlayout/b/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/b/a/a/o;)Landroidx/constraintlayout/b/a/a/o;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroidx/constraintlayout/b/c;)V
    .locals 2

    .line 146
    iget-object p1, p0, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    if-nez p1, :cond_0

    .line 147
    new-instance p1, Landroidx/constraintlayout/b/h;

    sget-object v0, Landroidx/constraintlayout/b/h$a;->a:Landroidx/constraintlayout/b/h$a;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/constraintlayout/b/h;-><init>(Landroidx/constraintlayout/b/h$a;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/b/h;->b()V

    :goto_0
    return-void
.end method

.method public a(Landroidx/constraintlayout/b/a/d;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 266
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/d;->i()Landroidx/constraintlayout/b/a/d$a;

    move-result-object v1

    .line 267
    iget-object v2, p0, Landroidx/constraintlayout/b/a/d;->b:Landroidx/constraintlayout/b/a/d$a;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    .line 268
    sget-object v1, Landroidx/constraintlayout/b/a/d$a;->f:Landroidx/constraintlayout/b/a/d$a;

    if-ne v2, v1, :cond_2

    .line 269
    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/d;->h()Landroidx/constraintlayout/b/a/e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/e;->K()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/d;->h()Landroidx/constraintlayout/b/a/e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/e;->K()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    return v0

    :cond_2
    return v3

    .line 274
    :cond_3
    sget-object v2, Landroidx/constraintlayout/b/a/d$1;->a:[I

    iget-object v4, p0, Landroidx/constraintlayout/b/a/d;->b:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d$a;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 302
    new-instance p1, Ljava/lang/AssertionError;

    iget-object v0, p0, Landroidx/constraintlayout/b/a/d;->b:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/d$a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    return v0

    .line 290
    :pswitch_1
    sget-object v2, Landroidx/constraintlayout/b/a/d$a;->c:Landroidx/constraintlayout/b/a/d$a;

    if-eq v1, v2, :cond_5

    sget-object v2, Landroidx/constraintlayout/b/a/d$a;->e:Landroidx/constraintlayout/b/a/d$a;

    if-ne v1, v2, :cond_4

    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_1

    :cond_5
    :goto_0
    move v2, v3

    .line 291
    :goto_1
    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/d;->h()Landroidx/constraintlayout/b/a/e;

    move-result-object p1

    instance-of p1, p1, Landroidx/constraintlayout/b/a/h;

    if-eqz p1, :cond_8

    if-nez v2, :cond_6

    .line 292
    sget-object p1, Landroidx/constraintlayout/b/a/d$a;->i:Landroidx/constraintlayout/b/a/d$a;

    if-ne v1, p1, :cond_7

    :cond_6
    move v0, v3

    :cond_7
    move v2, v0

    :cond_8
    return v2

    .line 282
    :pswitch_2
    sget-object v2, Landroidx/constraintlayout/b/a/d$a;->b:Landroidx/constraintlayout/b/a/d$a;

    if-eq v1, v2, :cond_a

    sget-object v2, Landroidx/constraintlayout/b/a/d$a;->d:Landroidx/constraintlayout/b/a/d$a;

    if-ne v1, v2, :cond_9

    goto :goto_2

    :cond_9
    move v2, v0

    goto :goto_3

    :cond_a
    :goto_2
    move v2, v3

    .line 283
    :goto_3
    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/d;->h()Landroidx/constraintlayout/b/a/e;

    move-result-object p1

    instance-of p1, p1, Landroidx/constraintlayout/b/a/h;

    if-eqz p1, :cond_d

    if-nez v2, :cond_b

    .line 284
    sget-object p1, Landroidx/constraintlayout/b/a/d$a;->h:Landroidx/constraintlayout/b/a/d$a;

    if-ne v1, p1, :cond_c

    :cond_b
    move v0, v3

    :cond_c
    move v2, v0

    :cond_d
    return v2

    .line 277
    :pswitch_3
    sget-object p1, Landroidx/constraintlayout/b/a/d$a;->f:Landroidx/constraintlayout/b/a/d$a;

    if-eq v1, p1, :cond_e

    sget-object p1, Landroidx/constraintlayout/b/a/d$a;->h:Landroidx/constraintlayout/b/a/d$a;

    if-eq v1, p1, :cond_e

    sget-object p1, Landroidx/constraintlayout/b/a/d$a;->i:Landroidx/constraintlayout/b/a/d$a;

    if-eq v1, p1, :cond_e

    move v0, v3

    :cond_e
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroidx/constraintlayout/b/a/d;I)Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 246
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;IIZ)Z

    move-result p1

    return p1
.end method

.method public a(Landroidx/constraintlayout/b/a/d;IIZ)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 216
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/d;->l()V

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p4, :cond_1

    .line 219
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;)Z

    move-result p4

    if-nez p4, :cond_1

    return v1

    .line 222
    :cond_1
    iput-object p1, p0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    .line 223
    iget-object p4, p1, Landroidx/constraintlayout/b/a/d;->g:Ljava/util/HashSet;

    if-nez p4, :cond_2

    .line 224
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    iput-object p4, p1, Landroidx/constraintlayout/b/a/d;->g:Ljava/util/HashSet;

    .line 226
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/d;->g:Ljava/util/HashSet;

    if-eqz p1, :cond_3

    .line 227
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    if-lez p2, :cond_4

    .line 230
    iput p2, p0, Landroidx/constraintlayout/b/a/d;->d:I

    goto :goto_0

    .line 232
    :cond_4
    iput v1, p0, Landroidx/constraintlayout/b/a/d;->d:I

    .line 234
    :goto_0
    iput p3, p0, Landroidx/constraintlayout/b/a/d;->e:I

    return v0
.end method

.method public b(I)V
    .locals 1

    .line 375
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/d;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iput p1, p0, Landroidx/constraintlayout/b/a/d;->e:I

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .line 50
    iget-object v0, p0, Landroidx/constraintlayout/b/a/d;->g:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 53
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public c()Z
    .locals 3

    .line 57
    iget-object v0, p0, Landroidx/constraintlayout/b/a/d;->g:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 60
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/b/a/d;

    .line 61
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->n()Landroidx/constraintlayout/b/a/d;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public d()I
    .locals 1

    .line 75
    iget-boolean v0, p0, Landroidx/constraintlayout/b/a/d;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 78
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/b/a/d;->h:I

    return v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Landroidx/constraintlayout/b/a/d;->i:Z

    .line 83
    iput v0, p0, Landroidx/constraintlayout/b/a/d;->h:I

    return-void
.end method

.method public f()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Landroidx/constraintlayout/b/a/d;->i:Z

    return v0
.end method

.method public g()Landroidx/constraintlayout/b/h;
    .locals 1

    .line 140
    iget-object v0, p0, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    return-object v0
.end method

.method public h()Landroidx/constraintlayout/b/a/e;
    .locals 1

    .line 157
    iget-object v0, p0, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    return-object v0
.end method

.method public i()Landroidx/constraintlayout/b/a/d$a;
    .locals 1

    .line 163
    iget-object v0, p0, Landroidx/constraintlayout/b/a/d;->b:Landroidx/constraintlayout/b/a/d$a;

    return-object v0
.end method

.method public j()I
    .locals 3

    .line 170
    iget-object v0, p0, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->w()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 173
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/b/a/d;->e:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    .line 174
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->w()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 175
    iget v0, p0, Landroidx/constraintlayout/b/a/d;->e:I

    return v0

    .line 177
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/b/a/d;->d:I

    return v0
.end method

.method public k()Landroidx/constraintlayout/b/a/d;
    .locals 1

    .line 184
    iget-object v0, p0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    return-object v0
.end method

.method public l()V
    .locals 2

    .line 190
    iget-object v0, p0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->g:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iput-object v1, v0, Landroidx/constraintlayout/b/a/d;->g:Ljava/util/HashSet;

    .line 196
    :cond_0
    iput-object v1, p0, Landroidx/constraintlayout/b/a/d;->g:Ljava/util/HashSet;

    .line 197
    iput-object v1, p0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    const/4 v0, 0x0

    .line 198
    iput v0, p0, Landroidx/constraintlayout/b/a/d;->d:I

    const/4 v1, -0x1

    .line 199
    iput v1, p0, Landroidx/constraintlayout/b/a/d;->e:I

    .line 200
    iput-boolean v0, p0, Landroidx/constraintlayout/b/a/d;->i:Z

    .line 201
    iput v0, p0, Landroidx/constraintlayout/b/a/d;->h:I

    return-void
.end method

.method public m()Z
    .locals 1

    .line 254
    iget-object v0, p0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final n()Landroidx/constraintlayout/b/a/d;
    .locals 2

    .line 489
    sget-object v0, Landroidx/constraintlayout/b/a/d$1;->a:[I

    iget-object v1, p0, Landroidx/constraintlayout/b/a/d;->b:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 509
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroidx/constraintlayout/b/a/d;->b:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 500
    :pswitch_0
    iget-object v0, p0, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    return-object v0

    .line 497
    :pswitch_1
    iget-object v0, p0, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    return-object v0

    .line 494
    :pswitch_2
    iget-object v0, p0, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    return-object v0

    .line 491
    :pswitch_3
    iget-object v0, p0, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    return-object v0

    :pswitch_4
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/b/a/d;->b:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
