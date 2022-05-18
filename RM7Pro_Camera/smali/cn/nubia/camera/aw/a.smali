.class public Lcn/nubia/camera/aw/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/a/c$a;
.implements Lcn/nubia/camera/ab/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/aw/a$a;
    }
.end annotation


# instance fields
.field protected a:Lcn/nubia/camera/aw/a$a;

.field protected b:Landroid/app/Activity;

.field protected c:Lcn/nubia/camera/ac/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcn/nubia/camera/ac/b;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    .line 43
    iput-object v0, p0, Lcn/nubia/camera/aw/a;->b:Landroid/app/Activity;

    .line 44
    iput-object v0, p0, Lcn/nubia/camera/aw/a;->c:Lcn/nubia/camera/ac/b;

    .line 47
    iput-object p1, p0, Lcn/nubia/camera/aw/a;->b:Landroid/app/Activity;

    .line 48
    iput-object p2, p0, Lcn/nubia/camera/aw/a;->c:Lcn/nubia/camera/ac/b;

    return-void
.end method

.method private a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)Z
    .locals 1

    .line 229
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->a:Lcn/nubia/camera/af/b;

    .line 230
    invoke-virtual {v0, p2}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    iget-object p2, p2, Lcn/nubia/camera/aw/a$a;->b:Lcn/nubia/camera/af/a;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c(Lcn/nubia/camera/ad/a;)Z
    .locals 1

    .line 132
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d(Lcn/nubia/camera/ad/a;)V
    .locals 2

    .line 444
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 447
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->A:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_1

    .line 448
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object p1

    const-wide/32 v0, 0x9600000

    invoke-virtual {p1, v0, v1}, Lcn/nubia/k/a/a;->a(J)V

    goto :goto_0

    .line 450
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/k/a/a;->a(J)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/camera/af/a;
    .locals 1

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->b:Lcn/nubia/camera/af/a;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)Lcn/nubia/camera/k/ah;
    .locals 7

    .line 346
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 347
    iget-object v1, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/camera/q/i;->b(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)Lcn/nubia/camera/k/ah;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)V
    .locals 1

    .line 395
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/i;->b_(I)V

    :cond_0
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/camera/q/i;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/ab/a$a;)V
    .locals 1

    .line 416
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/i;->a(Lcn/nubia/camera/ab/a$a;)V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/ad/a;)V
    .locals 6

    .line 66
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "currentFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcn/nubia/camera/aw/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcn/nubia/camera/aw/a;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switch member: (-1, -1) -> ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FamilyManager"

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lcn/nubia/camera/aw/a;->c()V

    .line 75
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    .line 77
    new-instance v3, Lcn/nubia/camera/aw/a$a;

    iget-object v4, p0, Lcn/nubia/camera/aw/a;->c:Lcn/nubia/camera/ac/b;

    invoke-interface {v4, v0, v2}, Lcn/nubia/camera/ac/b;->a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/q/i;

    move-result-object v4

    invoke-direct {v3, p0, v0, v2, v4}, Lcn/nubia/camera/aw/a$a;-><init>(Lcn/nubia/camera/aw/a;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;Lcn/nubia/camera/q/i;)V

    iput-object v3, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    .line 81
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v3

    if-nez v3, :cond_2

    .line 82
    sget-object v3, Lcn/nubia/camera/af/a;->d:Lcn/nubia/camera/af/a;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcn/nubia/camera/af/a;->A:Lcn/nubia/camera/af/a;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcn/nubia/camera/af/a;->F:Lcn/nubia/camera/af/a;

    if-ne v2, v3, :cond_2

    .line 87
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object v1

    new-instance v3, Lcn/nubia/camera/aw/a$1;

    invoke-direct {v3, p0, p1}, Lcn/nubia/camera/aw/a$1;-><init>(Lcn/nubia/camera/aw/a;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v1, v3}, Lcn/nubia/camera/aq/a;->a(Lcn/nubia/camera/aq/d;)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v3, p0, Lcn/nubia/camera/aw/a;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f09008d

    iget-object v5, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    iget-object v5, v5, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 107
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/aw/a;->c:Lcn/nubia/camera/ac/b;

    iget-object v3, p0, Lcn/nubia/camera/aw/a;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v4

    invoke-interface {v1, v3, v4, v0, v2}, Lcn/nubia/camera/ac/b;->a(Landroid/app/Activity;Lcom/android/preference/c;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/k/x;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/a/a;

    invoke-virtual {v1}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcn/nubia/camera/an/a;->a(F)V

    .line 112
    invoke-direct {p0, p1}, Lcn/nubia/camera/aw/a;->d(Lcn/nubia/camera/ad/a;)V

    .line 113
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/nubia/camera/ba/g;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/ad/a;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/ad/a;Z)V
    .locals 8

    .line 141
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    .line 142
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v1

    .line 143
    iget-object v2, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lcn/nubia/camera/aw/a$a;->b:Lcn/nubia/camera/af/a;

    .line 144
    :goto_0
    iget-object v4, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v4, Lcn/nubia/camera/aw/a$a;->a:Lcn/nubia/camera/af/b;

    .line 145
    :goto_1
    iget-object v4, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    const-string v5, "FamilyManager"

    if-eqz v4, :cond_3

    if-nez p2, :cond_2

    .line 147
    invoke-direct {p0, p1}, Lcn/nubia/camera/aw/a;->c(Lcn/nubia/camera/ad/a;)Z

    move-result p2

    if-nez p2, :cond_2

    if-ne v0, v2, :cond_2

    iget-object p2, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    iget-object p2, p2, Lcn/nubia/camera/aw/a$a;->a:Lcn/nubia/camera/af/b;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    iget-object p2, p2, Lcn/nubia/camera/aw/a$a;->a:Lcn/nubia/camera/af/b;

    .line 148
    invoke-virtual {p2, v1}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "member is same, no switch"

    .line 149
    invoke-static {v5, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object p2, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    iget-object p2, p2, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {p2, v2, v0}, Lcn/nubia/camera/q/i;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)V

    .line 153
    iget-object p2, p0, Lcn/nubia/camera/aw/a;->c:Lcn/nubia/camera/ac/b;

    iget-object v2, p0, Lcn/nubia/camera/aw/a;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v3

    invoke-interface {p2, v2, v3, v1, v0}, Lcn/nubia/camera/ac/b;->a(Landroid/app/Activity;Lcom/android/preference/c;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/k/x;

    move-result-object p2

    .line 154
    invoke-virtual {p2}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object p2

    .line 155
    invoke-virtual {p2}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object p2

    .line 156
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object p1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v0, p2

    invoke-virtual {p1, v0}, Lcn/nubia/camera/an/a;->a(F)V

    return-void

    .line 159
    :cond_2
    iget-object p2, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    iget-object p2, p2, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {p2}, Lcn/nubia/camera/q/i;->E()V

    .line 161
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch member: ("

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v4, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    const/4 v6, -0x1

    if-eqz v4, :cond_4

    iget-object v4, v4, Lcn/nubia/camera/aw/a$a;->b:Lcn/nubia/camera/af/a;

    goto :goto_2

    .line 162
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v4, ", "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v7, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v7, :cond_5

    iget-object v6, v7, Lcn/nubia/camera/aw/a$a;->a:Lcn/nubia/camera/af/b;

    goto :goto_3

    .line 164
    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_3
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v6, ") -> ("

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v4, ")"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 161
    invoke-static {v5, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance p2, Lcn/nubia/camera/aw/a$a;

    iget-object v4, p0, Lcn/nubia/camera/aw/a;->c:Lcn/nubia/camera/ac/b;

    invoke-interface {v4, v1, v0}, Lcn/nubia/camera/ac/b;->a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/q/i;

    move-result-object v4

    invoke-direct {p2, p0, v1, v0, v4}, Lcn/nubia/camera/aw/a$a;-><init>(Lcn/nubia/camera/aw/a;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;Lcn/nubia/camera/q/i;)V

    iput-object p2, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    .line 169
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object p2

    new-instance v4, Lcn/nubia/camera/aw/a$2;

    invoke-direct {v4, p0, p1, v2, v0}, Lcn/nubia/camera/aw/a$2;-><init>(Lcn/nubia/camera/aw/a;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)V

    invoke-virtual {p2, v4}, Lcn/nubia/camera/aq/a;->a(Lcn/nubia/camera/aq/d;)V

    .line 186
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->J()Lcn/nubia/camera/q/h;

    move-result-object p2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_8

    .line 187
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->J()Lcn/nubia/camera/q/h;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/q/h;->b()V

    .line 188
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p2

    sget-object v6, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-eq p2, v6, :cond_7

    .line 189
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p2

    sget-object v6, Lcn/nubia/camera/af/a;->d:Lcn/nubia/camera/af/a;

    if-eq p2, v6, :cond_7

    .line 190
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p2

    sget-object v6, Lcn/nubia/camera/af/a;->F:Lcn/nubia/camera/af/a;

    if-eq p2, v6, :cond_7

    .line 191
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p2

    sget-object v6, Lcn/nubia/camera/af/a;->c:Lcn/nubia/camera/af/a;

    if-eq p2, v6, :cond_7

    .line 192
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p2

    sget-object v6, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-eq p2, v6, :cond_7

    .line 193
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p2

    sget-object v6, Lcn/nubia/camera/af/a;->A:Lcn/nubia/camera/af/a;

    if-ne p2, v6, :cond_6

    goto :goto_4

    :cond_6
    move p2, v4

    goto :goto_5

    :cond_7
    :goto_4
    move p2, v5

    .line 194
    :goto_5
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->J()Lcn/nubia/camera/q/h;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcn/nubia/camera/q/h;->a(Z)V

    :cond_8
    if-ne v0, v2, :cond_a

    .line 196
    invoke-virtual {v3}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_6

    :cond_9
    move p2, v4

    goto :goto_7

    :cond_a
    :goto_6
    move p2, v5

    .line 197
    :goto_7
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object v2

    .line 200
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->j()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->m()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    move v4, v5

    .line 197
    :cond_c
    invoke-virtual {v2, v1, v0, v4, p2}, Lcn/nubia/camera/aq/a;->a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;ZZ)V

    .line 202
    iget-object p2, p0, Lcn/nubia/camera/aw/a;->c:Lcn/nubia/camera/ac/b;

    iget-object v2, p0, Lcn/nubia/camera/aw/a;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v3

    invoke-interface {p2, v2, v3, v1, v0}, Lcn/nubia/camera/ac/b;->a(Landroid/app/Activity;Lcom/android/preference/c;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/k/x;

    move-result-object p2

    .line 203
    invoke-virtual {p2}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object p2

    .line 204
    invoke-virtual {p2}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object p2

    .line 205
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ba/f;->c()V

    .line 206
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v1, p2

    invoke-virtual {v0, v1}, Lcn/nubia/camera/an/a;->a(F)V

    .line 207
    invoke-direct {p0, p1}, Lcn/nubia/camera/aw/a;->d(Lcn/nubia/camera/ad/a;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/k/h;)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/i;->b(Lcn/nubia/camera/k/h;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/i;->d(Z)V

    :cond_0
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "FamilyManager"

    const-string v1, "onKeyDown"

    .line 236
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/q/i;->a(ILandroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 265
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/i;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_0
    return v1
.end method

.method public b()Lcn/nubia/camera/af/b;
    .locals 1

    .line 125
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->a:Lcn/nubia/camera/af/b;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .line 438
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/i;->e(I)V

    :cond_0
    return-void
.end method

.method public b(Lcn/nubia/camera/ad/a;)V
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0, p1, v0}, Lcn/nubia/camera/aw/a;->a(Lcn/nubia/camera/ad/a;Z)V

    return-void
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 247
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/q/i;->c(ILandroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 307
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/i;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 4

    .line 211
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "currentFragment"

    .line 212
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "FamilyManager"

    const-string v3, "destroy old abandonded fragment"

    .line 213
    invoke-static {v2, v3}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/q/a;

    .line 215
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method public c(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 256
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/q/i;->b(ILandroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 315
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/i;->c(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected d()Z
    .locals 1

    .line 220
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 368
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/i;->d(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public e(Landroid/view/MotionEvent;)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/i;->e(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 280
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    .line 281
    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->d_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()V
    .locals 1

    .line 462
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->f()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 469
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->g()V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .line 289
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    .line 298
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->k()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 1

    .line 326
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->x()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k()V
    .locals 1

    .line 375
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->B()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    .line 381
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->K()V

    :cond_0
    return-void
.end method

.method public m()Z
    .locals 1

    .line 401
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->U()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public n()V
    .locals 1

    .line 409
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->C()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    .line 423
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->F()V

    :cond_0
    return-void
.end method

.method public p()Z
    .locals 1

    .line 430
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->G()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 1

    .line 456
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->I()V

    :cond_0
    return-void
.end method

.method public r()[Ljava/lang/String;
    .locals 1

    .line 474
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->h()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 481
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public t()V
    .locals 1

    .line 489
    iget-object v0, p0, Lcn/nubia/camera/aw/a;->a:Lcn/nubia/camera/aw/a$a;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, v0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->ac()V

    :cond_0
    return-void
.end method
