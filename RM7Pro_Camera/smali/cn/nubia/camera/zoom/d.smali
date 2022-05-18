.class public Lcn/nubia/camera/zoom/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/zoom/d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/zoom/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/d;->l(Lcn/nubia/camera/ad/a;)V

    .line 27
    iget v0, p0, Lcn/nubia/camera/zoom/d;->d:F

    iget v1, p0, Lcn/nubia/camera/zoom/d;->e:F

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/camera/zoom/d;->a(Lcn/nubia/camera/ad/a;FF)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/zoom/d;->c:Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/d;->k(Lcn/nubia/camera/ad/a;)V

    return-void
.end method

.method private a(FFFFF)F
    .locals 1

    cmpl-float v0, p4, p5

    if-nez v0, :cond_0

    return p4

    :cond_0
    sub-float v0, p4, p5

    mul-float/2addr v0, p1

    mul-float/2addr p5, p2

    mul-float/2addr p4, p3

    sub-float/2addr p5, p4

    add-float/2addr v0, p5

    sub-float/2addr p2, p3

    div-float/2addr v0, p2

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p2, v0, p1

    if-gez p2, :cond_1

    move v0, p1

    :cond_1
    return v0
.end method

.method private a(Lcn/nubia/camera/ad/a;FF)Ljava/lang/String;
    .locals 0

    .line 251
    invoke-virtual {p0, p1}, Lcn/nubia/camera/zoom/d;->d(Lcn/nubia/camera/ad/a;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcn/nubia/camera/zoom/e;->a([Ljava/lang/String;FF)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static e(Lcn/nubia/camera/ad/a;)Z
    .locals 2

    .line 296
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aR()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 297
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p0

    sget-object v0, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static f(Lcn/nubia/camera/ad/a;)Z
    .locals 3

    .line 302
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 303
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aR()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 304
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-ne v0, v2, :cond_0

    .line 305
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static g(Lcn/nubia/camera/ad/a;)Z
    .locals 2

    .line 310
    invoke-static {}, Lcn/nubia/camera/ba/a;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aR()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 312
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 313
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static h(Lcn/nubia/camera/ad/a;)Z
    .locals 2

    .line 317
    invoke-static {}, Lcn/nubia/camera/ba/a;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aR()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 319
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 320
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private k(Lcn/nubia/camera/ad/a;)V
    .locals 10

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/zoom/d;->b:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    .line 98
    invoke-static {p1}, Lcn/nubia/camera/zoom/d;->g(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 102
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 99
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->b:Ljava/util/ArrayList;

    new-instance v0, Lcn/nubia/camera/zoom/d$a;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v0, p0, v3, v1, v4}, Lcn/nubia/camera/zoom/d$a;-><init>(Lcn/nubia/camera/zoom/d;Ljava/lang/String;FF)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->b:Ljava/util/ArrayList;

    new-instance v0, Lcn/nubia/camera/zoom/d$a;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/b/e;->h()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-direct {v0, p0, v3, v1, v4}, Lcn/nubia/camera/zoom/d$a;-><init>(Lcn/nubia/camera/zoom/d;Ljava/lang/String;FF)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    const v0, 0x3f19999a    # 0.6f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 104
    :cond_0
    invoke-static {p1}, Lcn/nubia/camera/zoom/d;->h(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x41200000    # 10.0f

    if-eqz v0, :cond_1

    .line 105
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->b:Ljava/util/ArrayList;

    new-instance v0, Lcn/nubia/camera/zoom/d$a;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v5

    const v6, 0x40066666    # 2.1f

    invoke-direct {v0, p0, v5, v1, v6}, Lcn/nubia/camera/zoom/d$a;-><init>(Lcn/nubia/camera/zoom/d;Ljava/lang/String;FF)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->b:Ljava/util/ArrayList;

    new-instance v0, Lcn/nubia/camera/zoom/d$a;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p0, v5, v1, v4}, Lcn/nubia/camera/zoom/d$a;-><init>(Lcn/nubia/camera/zoom/d;Ljava/lang/String;FF)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 110
    :cond_1
    invoke-static {p1}, Lcn/nubia/camera/zoom/d;->f(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    const/high16 v5, 0x40000000    # 2.0f

    const v6, 0x3fd52537

    if-eqz v0, :cond_6

    .line 111
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/d;->n(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/d;->o(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 116
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/zoom/d;->b:Ljava/util/ArrayList;

    new-instance v7, Lcn/nubia/camera/zoom/d$a;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v8

    const v9, 0x3ff1eb85    # 1.89f

    invoke-direct {v7, p0, v8, v1, v9}, Lcn/nubia/camera/zoom/d$a;-><init>(Lcn/nubia/camera/zoom/d;Ljava/lang/String;FF)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcn/nubia/camera/zoom/d;->b:Ljava/util/ArrayList;

    new-instance v7, Lcn/nubia/camera/zoom/d$a;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8, v1, v5}, Lcn/nubia/camera/zoom/d$a;-><init>(Lcn/nubia/camera/zoom/d;Ljava/lang/String;FF)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-static {p1}, Lcn/nubia/camera/bb/ad;->d(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcn/nubia/camera/bb/ad;->b(Lcn/nubia/camera/ad/a;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 127
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->b:Ljava/util/ArrayList;

    new-instance v0, Lcn/nubia/camera/zoom/d$a;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->p()Ljava/lang/String;

    move-result-object v2

    const v3, 0x406cd404

    invoke-direct {v0, p0, v2, v6, v3}, Lcn/nubia/camera/zoom/d$a;-><init>(Lcn/nubia/camera/zoom/d;Ljava/lang/String;FF)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->b:Ljava/util/ArrayList;

    new-instance v0, Lcn/nubia/camera/zoom/d$a;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1, v4}, Lcn/nubia/camera/zoom/d$a;-><init>(Lcn/nubia/camera/zoom/d;Ljava/lang/String;FF)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 124
    :cond_4
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->b:Ljava/util/ArrayList;

    new-instance v0, Lcn/nubia/camera/zoom/d$a;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->p()Ljava/lang/String;

    move-result-object v1

    const v2, 0x41053742

    invoke-direct {v0, p0, v1, v6, v2}, Lcn/nubia/camera/zoom/d$a;-><init>(Lcn/nubia/camera/zoom/d;Ljava/lang/String;FF)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 112
    :cond_5
    :goto_1
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->b:Ljava/util/ArrayList;

    new-instance v0, Lcn/nubia/camera/zoom/d$a;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/zoom/d;->d:F

    iget v3, p0, Lcn/nubia/camera/zoom/d;->e:F

    invoke-direct {v0, p0, v1, v2, v3}, Lcn/nubia/camera/zoom/d$a;-><init>(Lcn/nubia/camera/zoom/d;Ljava/lang/String;FF)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    iget v0, p0, Lcn/nubia/camera/zoom/d;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    iget v0, p0, Lcn/nubia/camera/zoom/d;->e:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 134
    :cond_6
    invoke-static {p1}, Lcn/nubia/camera/zoom/d;->e(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 135
    invoke-virtual {p0, p1}, Lcn/nubia/camera/zoom/d;->j(Lcn/nubia/camera/ad/a;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 136
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->b:Ljava/util/ArrayList;

    new-instance v0, Lcn/nubia/camera/zoom/d$a;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v4, v1, v1}, Lcn/nubia/camera/zoom/d$a;-><init>(Lcn/nubia/camera/zoom/d;Ljava/lang/String;FF)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->b:Ljava/util/ArrayList;

    new-instance v0, Lcn/nubia/camera/zoom/d$a;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v4, v1, v1}, Lcn/nubia/camera/zoom/d$a;-><init>(Lcn/nubia/camera/zoom/d;Ljava/lang/String;FF)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->b:Ljava/util/ArrayList;

    new-instance v0, Lcn/nubia/camera/zoom/d$a;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->p()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v6, v6}, Lcn/nubia/camera/zoom/d$a;-><init>(Lcn/nubia/camera/zoom/d;Ljava/lang/String;FF)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 144
    :cond_7
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->b:Ljava/util/ArrayList;

    new-instance v0, Lcn/nubia/camera/zoom/d$a;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->h()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/zoom/d;->d:F

    iget v3, p0, Lcn/nubia/camera/zoom/d;->e:F

    invoke-direct {v0, p0, v1, v2, v3}, Lcn/nubia/camera/zoom/d$a;-><init>(Lcn/nubia/camera/zoom/d;Ljava/lang/String;FF)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    iget v0, p0, Lcn/nubia/camera/zoom/d;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    iget v0, p0, Lcn/nubia/camera/zoom/d;->e:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 148
    :cond_8
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/d;->m(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 149
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->b:Ljava/util/ArrayList;

    new-instance v0, Lcn/nubia/camera/zoom/d$a;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/zoom/d;->d:F

    iget v3, p0, Lcn/nubia/camera/zoom/d;->e:F

    invoke-direct {v0, p0, v1, v2, v3}, Lcn/nubia/camera/zoom/d$a;-><init>(Lcn/nubia/camera/zoom/d;Ljava/lang/String;FF)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    iget v0, p0, Lcn/nubia/camera/zoom/d;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    iget v0, p0, Lcn/nubia/camera/zoom/d;->e:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 153
    :cond_9
    iget-object v0, p0, Lcn/nubia/camera/zoom/d;->b:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/camera/zoom/d$a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p1

    iget v2, p0, Lcn/nubia/camera/zoom/d;->d:F

    iget v3, p0, Lcn/nubia/camera/zoom/d;->e:F

    invoke-direct {v1, p0, p1, v2, v3}, Lcn/nubia/camera/zoom/d$a;-><init>(Lcn/nubia/camera/zoom/d;Ljava/lang/String;FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    iget v0, p0, Lcn/nubia/camera/zoom/d;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    iget v0, p0, Lcn/nubia/camera/zoom/d;->e:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method private l(Lcn/nubia/camera/ad/a;)V
    .locals 5

    .line 161
    invoke-virtual {p0, p1}, Lcn/nubia/camera/zoom/d;->i(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    if-nez v0, :cond_1

    .line 162
    invoke-static {p1}, Lcn/nubia/camera/zoom/d;->e(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcn/nubia/camera/zoom/d;->j(Lcn/nubia/camera/ad/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    iput v3, p0, Lcn/nubia/camera/zoom/d;->d:F

    .line 164
    iput v1, p0, Lcn/nubia/camera/zoom/d;->e:F

    goto/16 :goto_3

    .line 166
    :cond_0
    iput v2, p0, Lcn/nubia/camera/zoom/d;->d:F

    .line 167
    iput v2, p0, Lcn/nubia/camera/zoom/d;->e:F

    goto/16 :goto_3

    .line 170
    :cond_1
    invoke-static {p1}, Lcn/nubia/camera/zoom/d;->e(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    iput v3, p0, Lcn/nubia/camera/zoom/d;->d:F

    const/high16 p1, 0x42480000    # 50.0f

    .line 172
    iput p1, p0, Lcn/nubia/camera/zoom/d;->e:F

    goto/16 :goto_3

    .line 173
    :cond_2
    invoke-static {p1}, Lcn/nubia/camera/zoom/d;->f(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    const/high16 v4, 0x41200000    # 10.0f

    if-eqz v0, :cond_7

    .line 174
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/d;->n(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/d;->o(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 178
    :cond_3
    invoke-static {p1}, Lcn/nubia/camera/bb/ad;->d(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lcn/nubia/camera/bb/ad;->b(Lcn/nubia/camera/ad/a;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 182
    :cond_4
    iput v3, p0, Lcn/nubia/camera/zoom/d;->d:F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 183
    iput p1, p0, Lcn/nubia/camera/zoom/d;->e:F

    goto :goto_3

    .line 179
    :cond_5
    :goto_0
    iput v3, p0, Lcn/nubia/camera/zoom/d;->d:F

    .line 180
    iput v4, p0, Lcn/nubia/camera/zoom/d;->e:F

    goto :goto_3

    .line 175
    :cond_6
    :goto_1
    iput v2, p0, Lcn/nubia/camera/zoom/d;->d:F

    .line 176
    iput v4, p0, Lcn/nubia/camera/zoom/d;->e:F

    goto :goto_3

    .line 186
    :cond_7
    invoke-static {p1}, Lcn/nubia/camera/zoom/d;->g(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_8

    const p1, 0x3f19999a    # 0.6f

    .line 187
    iput p1, p0, Lcn/nubia/camera/zoom/d;->d:F

    const/high16 p1, 0x41f00000    # 30.0f

    .line 188
    iput p1, p0, Lcn/nubia/camera/zoom/d;->e:F

    goto :goto_3

    .line 189
    :cond_8
    invoke-static {p1}, Lcn/nubia/camera/zoom/d;->h(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 190
    iput v3, p0, Lcn/nubia/camera/zoom/d;->d:F

    .line 191
    iput v4, p0, Lcn/nubia/camera/zoom/d;->e:F

    goto :goto_3

    .line 192
    :cond_9
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v3, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-eq v0, v3, :cond_b

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v3, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    if-eq v0, v3, :cond_b

    .line 193
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v3, Lcn/nubia/camera/af/a;->aa:Lcn/nubia/camera/af/a;

    if-eq v0, v3, :cond_b

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/af/a;->ab:Lcn/nubia/camera/af/a;

    if-ne p1, v0, :cond_a

    goto :goto_2

    .line 197
    :cond_a
    iput v2, p0, Lcn/nubia/camera/zoom/d;->d:F

    .line 198
    iput v4, p0, Lcn/nubia/camera/zoom/d;->e:F

    goto :goto_3

    .line 194
    :cond_b
    :goto_2
    iput v2, p0, Lcn/nubia/camera/zoom/d;->d:F

    .line 195
    iput v1, p0, Lcn/nubia/camera/zoom/d;->e:F

    :goto_3
    return-void
.end method

.method private m(Lcn/nubia/camera/ad/a;)Z
    .locals 2

    .line 324
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcn/nubia/camera/bb/ad;->a(Lcn/nubia/camera/ad/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private n(Lcn/nubia/camera/ad/a;)Z
    .locals 2

    .line 328
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcn/nubia/camera/bb/ad;->a(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private o(Lcn/nubia/camera/ad/a;)Z
    .locals 2

    .line 332
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcn/nubia/camera/bb/ad;->g(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(FLjava/lang/String;)F
    .locals 9

    .line 69
    iget-object v0, p0, Lcn/nubia/camera/zoom/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return p1

    .line 72
    :cond_0
    invoke-virtual {p0, p2}, Lcn/nubia/camera/zoom/d;->b(Ljava/lang/String;)[F

    move-result-object v0

    .line 73
    invoke-virtual {p0, p2}, Lcn/nubia/camera/zoom/d;->a(Ljava/lang/String;)I

    move-result p2

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 74
    :cond_1
    iget-object v2, p0, Lcn/nubia/camera/zoom/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/zoom/d$a;

    :goto_0
    if-nez p2, :cond_2

    return p1

    :cond_2
    const/4 v2, 0x0

    .line 78
    aget v5, v0, v2

    aget v6, v0, v1

    iget v7, p2, Lcn/nubia/camera/zoom/d$a;->b:F

    iget v8, p2, Lcn/nubia/camera/zoom/d$a;->c:F

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v3 .. v8}, Lcn/nubia/camera/zoom/d;->a(FFFFF)F

    move-result v3

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRealHalZoom zoom: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "; realZoom: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "; appRange: ["

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "];"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ZoomMappingTable"

    invoke-static {p2, p1}, Lcn/nubia/camera/zoom/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public a(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 255
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/zoom/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 256
    iget-object v1, p0, Lcn/nubia/camera/zoom/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/zoom/d$a;

    iget-object v1, v1, Lcn/nubia/camera/zoom/d$a;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public a(F)Lcn/nubia/camera/zoom/d$a;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 275
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    .line 276
    iget-object v2, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    if-ne v1, v3, :cond_3

    .line 282
    iget-object v2, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    goto :goto_2

    .line 284
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_3

    .line 285
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 v0, p1, -0x2

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    if-eq v0, v3, :cond_4

    .line 290
    iget-object p1, p0, Lcn/nubia/camera/zoom/d;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/zoom/d$a;

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/zoom/d$a;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcn/nubia/camera/zoom/d;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Lcn/nubia/camera/ad/a;)Z
    .locals 3

    .line 33
    iget-object v0, p0, Lcn/nubia/camera/zoom/d;->c:Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/d;->l(Lcn/nubia/camera/ad/a;)V

    .line 35
    iget v1, p0, Lcn/nubia/camera/zoom/d;->d:F

    iget v2, p0, Lcn/nubia/camera/zoom/d;->e:F

    invoke-direct {p0, p1, v1, v2}, Lcn/nubia/camera/zoom/d;->a(Lcn/nubia/camera/ad/a;FF)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/zoom/d;->c:Ljava/lang/String;

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMapping is48M: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcn/nubia/camera/zoom/d;->j(Lcn/nubia/camera/ad/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mZoomKey : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/zoom/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; lastZoomKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZoomMappingTable"

    invoke-static {v2, v1}, Lcn/nubia/camera/zoom/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcn/nubia/camera/zoom/d;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/d;->k(Lcn/nubia/camera/ad/a;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()F
    .locals 1

    .line 57
    iget v0, p0, Lcn/nubia/camera/zoom/d;->d:F

    return v0
.end method

.method public b(Lcn/nubia/camera/ad/a;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/camera/ad/a;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcn/nubia/camera/zoom/d;->c:Ljava/lang/String;

    iget v1, p0, Lcn/nubia/camera/zoom/d;->d:F

    iget v2, p0, Lcn/nubia/camera/zoom/d;->e:F

    invoke-static {p1}, Lcn/nubia/camera/zoom/d;->e(Lcn/nubia/camera/ad/a;)Z

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcn/nubia/camera/zoom/e;->a(Ljava/lang/String;FFZ)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)[F
    .locals 4

    .line 264
    invoke-virtual {p0, p1}, Lcn/nubia/camera/zoom/d;->a(Ljava/lang/String;)I

    move-result p1

    .line 265
    iget-object v0, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    .line 266
    iget-object v3, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    .line 267
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v0, v2

    iget-object v2, p0, Lcn/nubia/camera/zoom/d;->a:Ljava/util/ArrayList;

    add-int/2addr p1, v1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, v0, v1

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()F
    .locals 1

    .line 61
    iget v0, p0, Lcn/nubia/camera/zoom/d;->e:F

    return v0
.end method

.method public c(Lcn/nubia/camera/ad/a;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/camera/ad/a;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 53
    iget v0, p0, Lcn/nubia/camera/zoom/d;->d:F

    iget v1, p0, Lcn/nubia/camera/zoom/d;->e:F

    invoke-static {p1}, Lcn/nubia/camera/zoom/d;->e(Lcn/nubia/camera/ad/a;)Z

    move-result v2

    invoke-static {p1}, Lcn/nubia/camera/zoom/d;->g(Lcn/nubia/camera/ad/a;)Z

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcn/nubia/camera/zoom/e;->a(FFZZ)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcn/nubia/camera/zoom/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Lcn/nubia/camera/ad/a;)[Ljava/lang/String;
    .locals 6

    .line 204
    invoke-static {p1}, Lcn/nubia/camera/zoom/d;->f(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 205
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/d;->n(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/d;->o(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 207
    :cond_0
    invoke-static {p1}, Lcn/nubia/camera/bb/ad;->d(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcn/nubia/camera/bb/ad;->b(Lcn/nubia/camera/ad/a;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/String;

    .line 215
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    .line 216
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    .line 217
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->p()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    .line 218
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    return-object p1

    :cond_2
    :goto_0
    new-array p1, v1, [Ljava/lang/String;

    .line 209
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    .line 210
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    .line 211
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->p()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    return-object p1

    :cond_3
    :goto_1
    new-array p1, v3, [Ljava/lang/String;

    .line 206
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    return-object p1

    .line 221
    :cond_4
    invoke-static {p1}, Lcn/nubia/camera/zoom/d;->g(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-array p1, v2, [Ljava/lang/String;

    .line 223
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    .line 224
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->h()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    return-object p1

    .line 226
    :cond_5
    invoke-static {p1}, Lcn/nubia/camera/zoom/d;->h(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-array p1, v2, [Ljava/lang/String;

    .line 228
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    .line 229
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    return-object p1

    .line 232
    :cond_6
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v5, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    if-ne v0, v5, :cond_8

    .line 233
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 234
    invoke-virtual {p0, p1}, Lcn/nubia/camera/zoom/d;->j(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 235
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result p1

    if-eqz p1, :cond_7

    new-array p1, v1, [Ljava/lang/String;

    .line 236
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->p()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    return-object p1

    :cond_7
    new-array p1, v3, [Ljava/lang/String;

    .line 238
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    return-object p1

    .line 240
    :cond_8
    invoke-static {p1}, Lcn/nubia/camera/zoom/d;->e(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-array p1, v3, [Ljava/lang/String;

    .line 241
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->h()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    return-object p1

    .line 242
    :cond_9
    invoke-direct {p0, p1}, Lcn/nubia/camera/zoom/d;->m(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-array p1, v3, [Ljava/lang/String;

    .line 243
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    return-object p1

    :cond_a
    new-array v0, v3, [Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    return-object v0
.end method

.method public i(Lcn/nubia/camera/ad/a;)Z
    .locals 2

    .line 336
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/aq/f;->a(Lcom/android/preference/c;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    invoke-virtual {p0, p1}, Lcn/nubia/camera/zoom/d;->j(Lcn/nubia/camera/ad/a;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j(Lcn/nubia/camera/ad/a;)Z
    .locals 2

    .line 341
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    const-string v0, "pref_moresetting_picturesize_key"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 342
    sget-object v0, Lcn/nubia/camera/aq/f;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
