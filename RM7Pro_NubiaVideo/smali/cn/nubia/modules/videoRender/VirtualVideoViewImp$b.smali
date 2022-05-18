.class Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;
.super Lc/a/a/a/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/modules/videoRender/VirtualVideoViewImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;


# direct methods
.method private constructor <init>(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-direct {p0}, Lc/a/a/a/b$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;-><init>(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)V

    return-void
.end method


# virtual methods
.method public a(Lc/a/a/a/b;)Z
    .locals 14

    .line 1
    iget-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {v0}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->L(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {v0}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->N(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)F

    move-result v1

    invoke-virtual {p1}, Lc/a/a/a/b;->g()F

    move-result v2

    iget-object v3, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {v3}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->y(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->O(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;F)F

    .line 3
    iget-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {v0}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->A(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)F

    move-result v1

    invoke-virtual {p1}, Lc/a/a/a/b;->h()F

    move-result v2

    iget-object v3, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {v3}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->C(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->B(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;F)F

    .line 4
    iget-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-virtual {p1}, Lc/a/a/a/b;->g()F

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->z(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;F)F

    .line 5
    iget-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-virtual {p1}, Lc/a/a/a/b;->h()F

    move-result p1

    invoke-static {v0, p1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->D(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;F)F

    .line 6
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result p1

    .line 7
    iget-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-virtual {v0}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    int-to-float p1, p1

    .line 8
    iget-object v1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {v1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->I(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)Lcn/nubia/modules/videoRender/b$a;

    move-result-object v1

    iget v1, v1, Lcn/nubia/modules/videoRender/b$a;->d:F

    mul-float/2addr v1, p1

    int-to-float v0, v0

    .line 9
    iget-object v2, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {v2}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->I(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)Lcn/nubia/modules/videoRender/b$a;

    move-result-object v2

    iget v2, v2, Lcn/nubia/modules/videoRender/b$a;->d:F

    mul-float/2addr v2, v0

    .line 10
    iget-object v3, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {v3}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->I(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)Lcn/nubia/modules/videoRender/b$a;

    move-result-object v3

    iget v3, v3, Lcn/nubia/modules/videoRender/b$a;->e:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 11
    iget-object v4, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    float-to-double v5, v1

    float-to-double v1, v2

    invoke-static {v4}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->I(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)Lcn/nubia/modules/videoRender/b$a;

    move-result-object v3

    iget v3, v3, Lcn/nubia/modules/videoRender/b$a;->e:F

    float-to-double v9, v3

    move-wide v7, v1

    invoke-static/range {v4 .. v10}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->E(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;DDD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 12
    iget-object v7, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    float-to-double v8, v3

    invoke-static {v7}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->I(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)Lcn/nubia/modules/videoRender/b$a;

    move-result-object v4

    iget v4, v4, Lcn/nubia/modules/videoRender/b$a;->e:F

    float-to-double v12, v4

    move-wide v10, v1

    invoke-static/range {v7 .. v13}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->F(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;DDD)D

    move-result-wide v1

    double-to-float v2, v1

    move v1, v3

    .line 13
    :cond_0
    iget-object v3, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {v3}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->I(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)Lcn/nubia/modules/videoRender/b$a;

    move-result-object v3

    iget v3, v3, Lcn/nubia/modules/videoRender/b$a;->d:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    if-ltz v3, :cond_4

    .line 14
    iget-object v3, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {v3}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->N(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)F

    move-result v3

    sub-float/2addr v1, p1

    neg-float p1, v1

    div-float/2addr p1, v4

    cmpg-float v3, v3, p1

    if-gez v3, :cond_1

    .line 15
    iget-object v1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {v1, p1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->O(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;F)F

    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {p1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->N(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)F

    move-result p1

    div-float/2addr v1, v4

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    .line 17
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {p1, v1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->O(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;F)F

    .line 18
    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {p1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->A(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)F

    move-result p1

    sub-float/2addr v2, v0

    neg-float v0, v2

    div-float/2addr v0, v4

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    .line 19
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {p1, v0}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->B(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;F)F

    goto/16 :goto_2

    .line 20
    :cond_3
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {p1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->A(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)F

    move-result p1

    div-float/2addr v2, v4

    cmpl-float p1, p1, v2

    if-lez p1, :cond_c

    .line 21
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {p1, v2}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->B(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;F)F

    goto/16 :goto_2

    :cond_4
    cmpl-float v3, p1, v1

    if-ltz v3, :cond_6

    .line 22
    iget-object v3, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {v3}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->N(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)F

    move-result v3

    sub-float/2addr p1, v1

    neg-float v1, p1

    div-float/2addr v1, v4

    cmpg-float v3, v3, v1

    if-gez v3, :cond_5

    .line 23
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {p1, v1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->O(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;F)F

    goto :goto_1

    .line 24
    :cond_5
    iget-object v1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {v1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->N(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)F

    move-result v1

    div-float/2addr p1, v4

    cmpl-float v1, v1, p1

    if-lez v1, :cond_8

    .line 25
    iget-object v1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {v1, p1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->O(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;F)F

    goto :goto_1

    .line 26
    :cond_6
    iget-object v3, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {v3}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->N(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)F

    move-result v3

    sub-float/2addr v1, p1

    neg-float p1, v1

    div-float/2addr p1, v4

    cmpg-float v3, v3, p1

    if-gez v3, :cond_7

    .line 27
    iget-object v1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {v1, p1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->O(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;F)F

    goto :goto_1

    .line 28
    :cond_7
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {p1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->N(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)F

    move-result p1

    div-float/2addr v1, v4

    cmpl-float p1, p1, v1

    if-lez p1, :cond_8

    .line 29
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {p1, v1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->O(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;F)F

    :cond_8
    :goto_1
    cmpl-float p1, v0, v2

    if-ltz p1, :cond_a

    .line 30
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {p1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->A(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)F

    move-result p1

    sub-float/2addr v0, v2

    neg-float v1, v0

    div-float/2addr v1, v4

    cmpg-float p1, p1, v1

    if-gez p1, :cond_9

    .line 31
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {p1, v1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->B(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;F)F

    goto :goto_2

    .line 32
    :cond_9
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {p1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->A(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)F

    move-result p1

    div-float/2addr v0, v4

    cmpl-float p1, p1, v0

    if-lez p1, :cond_c

    .line 33
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {p1, v0}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->B(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;F)F

    goto :goto_2

    .line 34
    :cond_a
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {p1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->A(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)F

    move-result p1

    sub-float/2addr v2, v0

    neg-float v0, v2

    div-float/2addr v0, v4

    cmpg-float p1, p1, v0

    if-gez p1, :cond_b

    .line 35
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {p1, v0}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->B(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;F)F

    goto :goto_2

    .line 36
    :cond_b
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {p1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->A(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)F

    move-result p1

    div-float/2addr v2, v4

    cmpl-float p1, p1, v2

    if-lez p1, :cond_c

    .line 37
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {p1, v2}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->B(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;F)F

    .line 38
    :cond_c
    :goto_2
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {p1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->J(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)Lcn/nubia/modules/videoRender/d;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {v0}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->N(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)F

    move-result v0

    iget-object v1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {v1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->A(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/modules/videoRender/d;->e(FF)V

    .line 39
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {p1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->M(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)V

    .line 40
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-virtual {p1}, Lc/c/a/f/a/c;->l()V

    :cond_d
    const/4 p1, 0x1

    return p1
.end method
