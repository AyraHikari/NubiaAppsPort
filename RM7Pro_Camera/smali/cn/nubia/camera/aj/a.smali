.class public Lcn/nubia/camera/aj/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/aj/a$a;
    }
.end annotation


# instance fields
.field a:Lcom/android/common/c/a$a;

.field private b:Lcn/nubia/camera/ad/a;

.field private c:Lcn/nubia/camera/zoom/d;

.field private d:Lcn/nubia/camera/k/ah;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/camera/aj/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:F


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/zoom/c;Lcn/nubia/camera/k/ah;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/aj/a;->e:Ljava/util/List;

    .line 31
    new-instance v0, Lcn/nubia/camera/aj/a$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aj/a$1;-><init>(Lcn/nubia/camera/aj/a;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/a;->a:Lcom/android/common/c/a$a;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 73
    iput v0, p0, Lcn/nubia/camera/aj/a;->h:F

    .line 42
    iput-object p1, p0, Lcn/nubia/camera/aj/a;->b:Lcn/nubia/camera/ad/a;

    .line 43
    invoke-virtual {p2}, Lcn/nubia/camera/zoom/c;->d()Lcn/nubia/camera/zoom/d;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/aj/a;->c:Lcn/nubia/camera/zoom/d;

    .line 44
    iput-object p3, p0, Lcn/nubia/camera/aj/a;->d:Lcn/nubia/camera/k/ah;

    .line 46
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p3

    sget-object v1, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    if-ne p3, v1, :cond_1

    .line 47
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "0"

    goto :goto_0

    :cond_0
    const-string p1, "1"

    :goto_0
    iput-object p1, p0, Lcn/nubia/camera/aj/a;->g:Ljava/lang/String;

    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p2}, Lcn/nubia/camera/zoom/c;->d()Lcn/nubia/camera/zoom/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/zoom/d;->a(F)Lcn/nubia/camera/zoom/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/zoom/d$a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/aj/a;->g:Ljava/lang/String;

    .line 51
    :goto_1
    invoke-virtual {p2}, Lcn/nubia/camera/zoom/c;->d()Lcn/nubia/camera/zoom/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/zoom/d;->a(F)Lcn/nubia/camera/zoom/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/zoom/d$a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/aj/a;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/aj/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/camera/aj/a;->b:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcn/nubia/camera/aj/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/aj/a$a;

    if-eqz v1, :cond_0

    .line 109
    invoke-interface {v1, p1, p2}, Lcn/nubia/camera/aj/a$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/aj/a;)F
    .locals 0

    .line 23
    iget p0, p0, Lcn/nubia/camera/aj/a;->h:F

    return p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 115
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->g:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/c;)V

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/aj/a;->b:Lcn/nubia/camera/ad/a;

    new-instance v1, Lcn/nubia/camera/af/b;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/nubia/camera/aj/a;->g:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/camera/aj/a;->f:Ljava/lang/String;

    invoke-direct {v1, p2, v2, v3, v4}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/af/b;)V

    .line 121
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/aj/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcn/nubia/camera/aj/a;->c:Lcn/nubia/camera/zoom/d;

    iget-object p2, p0, Lcn/nubia/camera/aj/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/zoom/d;->j(Lcn/nubia/camera/ad/a;)Z

    move-result p1

    const-wide/16 v0, 0x0

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 124
    iget-object p1, p0, Lcn/nubia/camera/aj/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->E()Lcn/nubia/camera/ae/a;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p2}, Lcn/nubia/camera/ae/a;->a(JZ)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/aj/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->E()Lcn/nubia/camera/ae/a;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/ae/a;->b(J)V

    .line 128
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/aj/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/aj/a;->b:Lcn/nubia/camera/ad/a;

    .line 129
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aj/a;->b:Lcn/nubia/camera/ad/a;

    .line 130
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aj/a;->b:Lcn/nubia/camera/ad/a;

    .line 131
    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcn/nubia/camera/aj/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->j()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcn/nubia/camera/aj/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->m()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, p2

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 128
    :goto_2
    invoke-virtual {p1, v0, v1, v2, p2}, Lcn/nubia/camera/aq/a;->a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;ZZ)V

    .line 132
    iget-object p1, p0, Lcn/nubia/camera/aj/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/aj/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object p2

    new-instance v0, Lcn/nubia/camera/aj/a$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aj/a$2;-><init>(Lcn/nubia/camera/aj/a;)V

    invoke-virtual {p1, p2, v0}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/k/h$a;)V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/aj/a;)Lcn/nubia/camera/zoom/d;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/camera/aj/a;->c:Lcn/nubia/camera/zoom/d;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/aj/a;)Lcn/nubia/camera/k/ah;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/camera/aj/a;->d:Lcn/nubia/camera/k/ah;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcn/nubia/camera/aj/a$a;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcn/nubia/camera/aj/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcn/nubia/camera/aj/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(F)Z
    .locals 9

    .line 76
    iget-object v0, p0, Lcn/nubia/camera/aj/a;->c:Lcn/nubia/camera/zoom/d;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/camera/aj/a;->c:Lcn/nubia/camera/zoom/d;

    .line 77
    invoke-virtual {v0}, Lcn/nubia/camera/zoom/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/aj/a;->c:Lcn/nubia/camera/zoom/d;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/zoom/d$a;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/d$a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/camera/aj/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 80
    :cond_0
    iput p1, p0, Lcn/nubia/camera/aj/a;->h:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float v3, p1, v0

    float-to-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    .line 82
    iget-object v0, p0, Lcn/nubia/camera/aj/a;->c:Lcn/nubia/camera/zoom/d;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/zoom/d;->a(F)Lcn/nubia/camera/zoom/d$a;

    move-result-object v0

    .line 83
    iget-object v4, p0, Lcn/nubia/camera/aj/a;->c:Lcn/nubia/camera/zoom/d;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/d$a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/camera/zoom/d;->b(Ljava/lang/String;)[F

    move-result-object v4

    .line 86
    invoke-virtual {v0}, Lcn/nubia/camera/zoom/d$a;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/camera/aj/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    iget-object v0, p0, Lcn/nubia/camera/aj/a;->d:Lcn/nubia/camera/k/ah;

    iget-object v1, p0, Lcn/nubia/camera/aj/a;->c:Lcn/nubia/camera/zoom/d;

    iget-object v3, p0, Lcn/nubia/camera/aj/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcn/nubia/camera/zoom/d;->a(FLjava/lang/String;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcn/nubia/camera/k/ah;->a(F)V

    return v2

    .line 91
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/camera/zoom/d$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v5, p0, Lcn/nubia/camera/aj/a;->c:Lcn/nubia/camera/zoom/d;

    invoke-virtual {v5, v0}, Lcn/nubia/camera/zoom/d;->a(Ljava/lang/String;)I

    move-result v5

    .line 93
    iget-object v6, p0, Lcn/nubia/camera/aj/a;->c:Lcn/nubia/camera/zoom/d;

    iget-object v7, p0, Lcn/nubia/camera/aj/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v7}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/nubia/camera/zoom/d;->a(Ljava/lang/String;)I

    move-result v6

    sub-int v7, v5, v6

    .line 96
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, v2, :cond_4

    const v7, -0x457ced91    # -0.001f

    if-ge v5, v6, :cond_2

    aget v8, v4, v2

    sub-float v8, v3, v8

    cmpg-float v8, v8, v7

    if-ltz v8, :cond_4

    :cond_2
    if-le v5, v6, :cond_3

    aget v1, v4, v1

    sub-float/2addr v3, v1

    cmpl-float v1, v3, v7

    if-ltz v1, :cond_3

    goto :goto_0

    .line 101
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/aj/a;->d:Lcn/nubia/camera/k/ah;

    iget-object v1, p0, Lcn/nubia/camera/aj/a;->c:Lcn/nubia/camera/zoom/d;

    iget-object v3, p0, Lcn/nubia/camera/aj/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcn/nubia/camera/zoom/d;->a(FLjava/lang/String;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcn/nubia/camera/k/ah;->a(F)V

    goto :goto_1

    .line 99
    :cond_4
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/aj/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/aj/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v2

    :cond_5
    :goto_2
    return v1
.end method

.method public b()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcn/nubia/camera/aj/a;->d:Lcn/nubia/camera/k/ah;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah$b;)V

    .line 70
    iget-object v0, p0, Lcn/nubia/camera/aj/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->k()Lcom/android/common/c/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aj/a;->a:Lcom/android/common/c/a$a;

    invoke-virtual {v0, v1}, Lcom/android/common/c/a;->b(Lcom/android/common/c/a$a;)V

    return-void
.end method

.method public b(Lcn/nubia/camera/aj/a$a;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcn/nubia/camera/aj/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
