.class public Lcn/nubia/camera/ae/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/ae/a$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/android/common/ui/CameraSelectButton;

.field private c:Lcn/nubia/camera/ad/a;

.field private d:I

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/ae/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/android/common/c/e;

.field private g:Lcn/nubia/camera/ae/b;

.field private h:Landroid/animation/ObjectAnimator;

.field private i:Landroid/animation/ObjectAnimator;

.field private j:I

.field private k:Landroid/os/Handler;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcn/nubia/camera/ad/a;Lcom/android/common/c/e;)V
    .locals 6

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcn/nubia/camera/ae/a;->d:I

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcn/nubia/camera/ae/a;->f:Lcom/android/common/c/e;

    .line 55
    iput-object v0, p0, Lcn/nubia/camera/ae/a;->h:Landroid/animation/ObjectAnimator;

    .line 56
    iput-object v0, p0, Lcn/nubia/camera/ae/a;->i:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcn/nubia/camera/ae/a;->j:I

    .line 64
    new-instance v1, Lcn/nubia/camera/ae/a$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ae/a$1;-><init>(Lcn/nubia/camera/ae/a;)V

    iput-object v1, p0, Lcn/nubia/camera/ae/a;->k:Landroid/os/Handler;

    .line 432
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/ae/a;->l:Ljava/util/ArrayList;

    .line 589
    iput-boolean v0, p0, Lcn/nubia/camera/ae/a;->m:Z

    const-string v0, "MemberScrollerManager"

    const/4 v1, 0x3

    .line 92
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/ae/a;->a:Z

    .line 93
    iput-object p3, p0, Lcn/nubia/camera/ae/a;->f:Lcom/android/common/c/e;

    .line 94
    iput-object p2, p0, Lcn/nubia/camera/ae/a;->c:Lcn/nubia/camera/ad/a;

    .line 95
    check-cast p1, Lcom/android/common/ui/CameraSelectButton;

    iput-object p1, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    .line 96
    invoke-direct {p0}, Lcn/nubia/camera/ae/a;->k()V

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    move-object v0, p0

    .line 98
    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/ae/a;->a(IJJ)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ae/a;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcn/nubia/camera/ae/a;->d:I

    return p1
.end method

.method private a(Ljava/util/ArrayList;Lcn/nubia/camera/ad/a;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/ae/a$a;",
            ">;",
            "Lcn/nubia/camera/ad/a;",
            ")I"
        }
    .end annotation

    .line 220
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 223
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p2

    .line 225
    iget-object v1, p0, Lcn/nubia/camera/ae/a;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->k()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const-string v1, "MemberScrollerManager"

    const-string v4, "reset cameraMember in secure camera"

    .line 226
    invoke-static {v1, v4}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/camera/ae/a$a;

    .line 229
    iget-object v5, v5, Lcn/nubia/camera/ae/a$a;->a:Lcn/nubia/camera/af/a;

    if-ne v5, p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    .line 234
    sget-object p2, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    .line 235
    iget-object v1, p0, Lcn/nubia/camera/ae/a;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1, p2}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/af/a;)V

    :cond_2
    move v1, v3

    .line 240
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 241
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/camera/ae/a$a;

    iget-object v4, v4, Lcn/nubia/camera/ae/a$a;->a:Lcn/nubia/camera/af/a;

    if-ne p2, v4, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_2
    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    move v3, v0

    :goto_3
    return v3
.end method

.method static synthetic a(Lcn/nubia/camera/ae/a;)Lcom/android/common/c/e;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/ae/a;->f:Lcom/android/common/c/e;

    return-object p0
.end method

.method private a(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .line 216
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aQ()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f01ae

    goto :goto_0

    :cond_0
    const v0, 0x7f0f02d8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/res/Resources;Lcn/nubia/camera/ad/a;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcn/nubia/camera/ad/a;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/ae/a$a;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.android.camera.action.DualCalibrationForSale"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 164
    new-instance p1, Lcn/nubia/camera/ae/a$a;

    sget-object p2, Lcn/nubia/camera/af/a;->H:Lcn/nubia/camera/af/a;

    const-string v1, ""

    invoke-direct {p1, p0, p2, v1}, Lcn/nubia/camera/ae/a$a;-><init>(Lcn/nubia/camera/ae/a;Lcn/nubia/camera/af/a;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 167
    :cond_0
    new-instance p2, Lcn/nubia/camera/ae/a$a;

    sget-object v1, Lcn/nubia/camera/af/a;->R:Lcn/nubia/camera/af/a;

    const v2, 0x7f0f009b

    .line 168
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v1, p1}, Lcn/nubia/camera/ae/a$a;-><init>(Lcn/nubia/camera/ae/a;Lcn/nubia/camera/af/a;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 170
    :cond_1
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->j()Z

    move-result v1

    const v2, 0x7f0f0034

    if-eqz v1, :cond_3

    .line 171
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->m()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 172
    new-instance p2, Lcn/nubia/camera/ae/a$a;

    sget-object v1, Lcn/nubia/camera/af/a;->z:Lcn/nubia/camera/af/a;

    .line 173
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v1, p1}, Lcn/nubia/camera/ae/a$a;-><init>(Lcn/nubia/camera/ae/a;Lcn/nubia/camera/af/a;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 175
    :cond_2
    new-instance p2, Lcn/nubia/camera/ae/a$a;

    sget-object v1, Lcn/nubia/camera/af/a;->D:Lcn/nubia/camera/af/a;

    .line 176
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v1, p1}, Lcn/nubia/camera/ae/a$a;-><init>(Lcn/nubia/camera/ae/a;Lcn/nubia/camera/af/a;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 178
    :cond_3
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v1

    const v3, 0x7f0f03e7

    if-eqz v1, :cond_4

    .line 179
    new-instance p2, Lcn/nubia/camera/ae/a$a;

    sget-object v1, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    .line 180
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v1, p1}, Lcn/nubia/camera/ae/a$a;-><init>(Lcn/nubia/camera/ae/a;Lcn/nubia/camera/af/a;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 182
    :cond_4
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->k()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcn/nubia/camera/ae/a;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/camera/camerafamily/b;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_5

    .line 183
    new-instance p2, Lcn/nubia/camera/ae/a$a;

    sget-object v1, Lcn/nubia/camera/af/a;->a:Lcn/nubia/camera/af/a;

    const v4, 0x7f0f002e

    .line 184
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, p0, v1, v4}, Lcn/nubia/camera/ae/a$a;-><init>(Lcn/nubia/camera/ae/a;Lcn/nubia/camera/af/a;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_5
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ak/a;->u()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 187
    new-instance p2, Lcn/nubia/camera/ae/a$a;

    sget-object v1, Lcn/nubia/camera/af/a;->X:Lcn/nubia/camera/af/a;

    const v4, 0x7f0f0154

    .line 188
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, p0, v1, v4}, Lcn/nubia/camera/ae/a$a;-><init>(Lcn/nubia/camera/ae/a;Lcn/nubia/camera/af/a;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_6
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ak/a;->e()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 191
    new-instance p2, Lcn/nubia/camera/ae/a$a;

    sget-object v1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    const v4, 0x7f0f02de

    .line 192
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, p0, v1, v4}, Lcn/nubia/camera/ae/a$a;-><init>(Lcn/nubia/camera/ae/a;Lcn/nubia/camera/af/a;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_7
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ak/a;->d()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 195
    new-instance p2, Lcn/nubia/camera/ae/a$a;

    sget-object v1, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    .line 196
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, p0, v1, v2}, Lcn/nubia/camera/ae/a$a;-><init>(Lcn/nubia/camera/ae/a;Lcn/nubia/camera/af/a;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_8
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ak/a;->f()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 199
    new-instance p2, Lcn/nubia/camera/ae/a$a;

    sget-object v1, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    .line 200
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, p0, v1, v2}, Lcn/nubia/camera/ae/a$a;-><init>(Lcn/nubia/camera/ae/a;Lcn/nubia/camera/af/a;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_9
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ak/a;->aF()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcn/nubia/camera/ae/a;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->G()I

    move-result p2

    if-nez p2, :cond_a

    .line 203
    new-instance p2, Lcn/nubia/camera/ae/a$a;

    sget-object v1, Lcn/nubia/camera/af/a;->O:Lcn/nubia/camera/af/a;

    const v2, 0x7f0f0159

    .line 204
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, p0, v1, v2}, Lcn/nubia/camera/ae/a$a;-><init>(Lcn/nubia/camera/ae/a;Lcn/nubia/camera/af/a;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_a
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ak/a;->g()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 208
    new-instance p2, Lcn/nubia/camera/ae/a$a;

    sget-object v1, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    .line 209
    invoke-direct {p0, p1}, Lcn/nubia/camera/ae/a;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v1, p1}, Lcn/nubia/camera/ae/a$a;-><init>(Lcn/nubia/camera/ae/a;Lcn/nubia/camera/af/a;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_0
    return-object v0
.end method

.method private a(IJJ)V
    .locals 6

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/camera/ae/a;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " setVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MemberScrollerManager"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 473
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 476
    :cond_0
    iput p1, p0, Lcn/nubia/camera/ae/a;->j:I

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gtz v0, :cond_3

    .line 478
    invoke-direct {p0}, Lcn/nubia/camera/ae/a;->o()V

    .line 479
    iget-object p2, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    invoke-virtual {p2}, Lcom/android/common/ui/CameraSelectButton;->getVisibility()I

    move-result p2

    if-ne p2, p1, :cond_1

    return-void

    .line 483
    :cond_1
    iget-object p2, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Lcom/android/common/ui/CameraSelectButton;->setAlpha(F)V

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    .line 486
    :goto_0
    iget-object p2, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    invoke-virtual {p2, p1}, Lcom/android/common/ui/CameraSelectButton;->setVisibility(I)V

    goto/16 :goto_5

    .line 490
    :cond_3
    invoke-direct {p0}, Lcn/nubia/camera/ae/a;->p()V

    if-nez p1, :cond_4

    .line 491
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->h:Landroid/animation/ObjectAnimator;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->i:Landroid/animation/ObjectAnimator;

    .line 492
    :goto_1
    iget-boolean v4, p0, Lcn/nubia/camera/ae/a;->a:Z

    if-eqz v4, :cond_6

    .line 493
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "visibility: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; mCameraSelect.getVisibility(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    invoke-virtual {v5}, Lcom/android/common/ui/CameraSelectButton;->getVisibility()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; !isAnimating(visibility == View.VISIBLE ? mHideAnim : mShowAnim): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_5

    iget-object v5, p0, Lcn/nubia/camera/ae/a;->i:Landroid/animation/ObjectAnimator;

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcn/nubia/camera/ae/a;->h:Landroid/animation/ObjectAnimator;

    .line 494
    :goto_2
    invoke-direct {p0, v5}, Lcn/nubia/camera/ae/a;->a(Landroid/animation/Animator;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; isAnimating(animator): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 495
    invoke-direct {p0, v0}, Lcn/nubia/camera/ae/a;->a(Landroid/animation/Animator;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 493
    invoke-static {v1, v4}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_6
    iget-object v4, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    invoke-virtual {v4}, Lcom/android/common/ui/CameraSelectButton;->getVisibility()I

    move-result v4

    if-ne p1, v4, :cond_8

    if-nez p1, :cond_7

    iget-object p1, p0, Lcn/nubia/camera/ae/a;->i:Landroid/animation/ObjectAnimator;

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcn/nubia/camera/ae/a;->h:Landroid/animation/ObjectAnimator;

    :goto_3
    invoke-direct {p0, p1}, Lcn/nubia/camera/ae/a;->a(Landroid/animation/Animator;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 498
    :cond_8
    invoke-direct {p0, v0}, Lcn/nubia/camera/ae/a;->a(Landroid/animation/Animator;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    const-string p1, "anim isRunning or visibilty is equal, no process"

    .line 499
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 502
    :cond_a
    invoke-direct {p0}, Lcn/nubia/camera/ae/a;->o()V

    cmp-long p1, p4, v2

    if-lez p1, :cond_b

    goto :goto_4

    :cond_b
    move-wide p4, v2

    .line 503
    :goto_4
    invoke-virtual {v0, p4, p5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 504
    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 505
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :goto_5
    return-void
.end method

.method private a(Landroid/animation/Animator;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 511
    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/ae/a;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcn/nubia/camera/ae/a;->m:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/ae/a;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcn/nubia/camera/ae/a;->q()V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/ae/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/ae/a;->c:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/ae/a;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcn/nubia/camera/ae/a;->m:Z

    return p0
.end method

.method static synthetic e(Lcn/nubia/camera/ae/a;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcn/nubia/camera/ae/a;->m()V

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/ae/a;)I
    .locals 0

    .line 46
    iget p0, p0, Lcn/nubia/camera/ae/a;->d:I

    return p0
.end method

.method static synthetic g(Lcn/nubia/camera/ae/a;)Ljava/util/ArrayList;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/ae/a;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/ae/a;)Lcn/nubia/camera/ae/b;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/ae/a;->g:Lcn/nubia/camera/ae/b;

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/camera/ae/a;)Lcom/android/common/ui/CameraSelectButton;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    return-object p0
.end method

.method static synthetic j(Lcn/nubia/camera/ae/a;)I
    .locals 0

    .line 46
    iget p0, p0, Lcn/nubia/camera/ae/a;->j:I

    return p0
.end method

.method private k()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    invoke-virtual {v0}, Lcom/android/common/ui/CameraSelectButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ae/a;->c:Lcn/nubia/camera/ad/a;

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/ae/a;->a(Landroid/content/res/Resources;Lcn/nubia/camera/ad/a;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ae/a;->e:Ljava/util/ArrayList;

    .line 142
    iget-object v1, p0, Lcn/nubia/camera/ae/a;->c:Lcn/nubia/camera/ad/a;

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/ae/a;->a(Ljava/util/ArrayList;Lcn/nubia/camera/ad/a;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ae/a;->d:I

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 145
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/ae/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 146
    iget-object v2, p0, Lcn/nubia/camera/ae/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/ae/a$a;

    iget-object v2, v2, Lcn/nubia/camera/ae/a$a;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    iget v2, p0, Lcn/nubia/camera/ae/a;->d:I

    invoke-virtual {v1, v0, v2}, Lcom/android/common/ui/CameraSelectButton;->a([Ljava/lang/String;I)V

    .line 150
    invoke-direct {p0}, Lcn/nubia/camera/ae/a;->l()V

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/ae/a;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->f:Lcn/nubia/camera/d/e;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 153
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ae/a;->a(Z)V

    .line 155
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->g:Lcn/nubia/camera/ae/b;

    if-eqz v0, :cond_2

    .line 156
    iget-object v1, p0, Lcn/nubia/camera/ae/a;->e:Ljava/util/ArrayList;

    iget v2, p0, Lcn/nubia/camera/ae/a;->d:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/ae/a$a;

    iget-object v1, v1, Lcn/nubia/camera/ae/a$a;->a:Lcn/nubia/camera/af/a;

    invoke-interface {v0, v1}, Lcn/nubia/camera/ae/b;->a(Lcn/nubia/camera/af/a;)V

    :cond_2
    return-void
.end method

.method private l()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    new-instance v1, Lcn/nubia/camera/ae/a$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ae/a$2;-><init>(Lcn/nubia/camera/ae/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/CameraSelectButton;->setUserOntouchListener(Landroid/view/View$OnTouchListener;)V

    .line 289
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    new-instance v1, Lcn/nubia/camera/ae/a$3;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ae/a$3;-><init>(Lcn/nubia/camera/ae/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/CameraSelectButton;->setCameraChangedListener(Lcom/android/common/ui/CameraSelectButton$a;)V

    return-void
.end method

.method private m()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->k:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 357
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->k:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 358
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->k:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 359
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->k:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private n()Ljava/lang/String;
    .locals 5

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    iget-object v1, p0, Lcn/nubia/camera/ae/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "]"

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private o()V
    .locals 1

    .line 515
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->h:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 516
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 519
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 521
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->i:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 522
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 523
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 525
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_3
    return-void
.end method

.method private p()V
    .locals 4

    .line 530
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->h:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    const-string v2, "alpha"

    if-nez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ae/a;->h:Landroid/animation/ObjectAnimator;

    .line 532
    new-instance v3, Lcn/nubia/camera/ae/a$4;

    invoke-direct {v3, p0}, Lcn/nubia/camera/ae/a$4;-><init>(Lcn/nubia/camera/ae/a;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->i:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 559
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ae/a;->i:Landroid/animation/ObjectAnimator;

    .line 560
    new-instance v1, Lcn/nubia/camera/ae/a$5;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ae/a$5;-><init>(Lcn/nubia/camera/ae/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private q()V
    .locals 5

    .line 668
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->f:Lcom/android/common/c/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/common/c/e;->a(IIZ)V

    .line 669
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->k:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 671
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->M()Lcn/nubia/camera/m/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/m/a;->b(Z)V

    return-void
.end method


# virtual methods
.method public a(I)Lcn/nubia/camera/af/a;
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_4

    const v0, 0x7ffffffe

    if-eq p1, v0, :cond_4

    .line 102
    sget-object v0, Lcn/nubia/camera/af/a;->D:Lcn/nubia/camera/af/a;

    .line 105
    invoke-virtual {v0}, Lcn/nubia/camera/af/a;->a()I

    move-result v0

    if-eq p1, v0, :cond_4

    sget-object v0, Lcn/nubia/camera/af/a;->z:Lcn/nubia/camera/af/a;

    .line 106
    invoke-virtual {v0}, Lcn/nubia/camera/af/a;->a()I

    move-result v0

    if-eq p1, v0, :cond_4

    sget-object v0, Lcn/nubia/camera/af/a;->H:Lcn/nubia/camera/af/a;

    .line 107
    invoke-virtual {v0}, Lcn/nubia/camera/af/a;->a()I

    move-result v0

    if-eq p1, v0, :cond_4

    sget-object v0, Lcn/nubia/camera/af/a;->R:Lcn/nubia/camera/af/a;

    .line 108
    invoke-virtual {v0}, Lcn/nubia/camera/af/a;->a()I

    move-result v0

    if-eq p1, v0, :cond_4

    sget-object v0, Lcn/nubia/camera/af/a;->P:Lcn/nubia/camera/af/a;

    .line 109
    invoke-virtual {v0}, Lcn/nubia/camera/af/a;->a()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 113
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/ae/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 114
    iget-object v2, p0, Lcn/nubia/camera/ae/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/ae/a$a;

    iget-object v2, v2, Lcn/nubia/camera/ae/a$a;->a:Lcn/nubia/camera/af/a;

    invoke-virtual {v2}, Lcn/nubia/camera/af/a;->a()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 115
    iget-object p1, p0, Lcn/nubia/camera/ae/a;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/ae/a$a;

    iget-object p1, p1, Lcn/nubia/camera/ae/a$a;->a:Lcn/nubia/camera/af/a;

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/ae/a;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/ae/a$a;

    iget-object p1, p1, Lcn/nubia/camera/ae/a$a;->a:Lcn/nubia/camera/af/a;

    return-object p1

    .line 120
    :cond_3
    invoke-static {p1}, Lcn/nubia/camera/af/a;->a(I)Lcn/nubia/camera/af/a;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcn/nubia/camera/ae/a;->k()V

    return-void
.end method

.method public a(IJJLjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 435
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 436
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 437
    invoke-direct/range {p0 .. p5}, Lcn/nubia/camera/ae/a;->a(IJJ)V

    goto :goto_0

    .line 440
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 441
    invoke-direct/range {p0 .. p5}, Lcn/nubia/camera/ae/a;->a(IJJ)V

    .line 443
    :cond_1
    iget-object p4, p0, Lcn/nubia/camera/ae/a;->l:Ljava/util/ArrayList;

    invoke-virtual {p4, p6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 444
    iget-object p4, p0, Lcn/nubia/camera/ae/a;->l:Ljava/util/ArrayList;

    invoke-virtual {p4, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_2
    :goto_0
    iget-boolean p4, p0, Lcn/nubia/camera/ae/a;->a:Z

    if-eqz p4, :cond_3

    .line 449
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, " "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "; "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcn/nubia/camera/ae/a;->n()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "; duration: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MemberScrollerManager"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public a(J)V
    .locals 2

    .line 379
    invoke-direct {p0}, Lcn/nubia/camera/ae/a;->m()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 381
    iget-object p1, p0, Lcn/nubia/camera/ae/a;->f:Lcom/android/common/c/e;

    invoke-virtual {p1}, Lcom/android/common/c/e;->d()V

    goto :goto_0

    .line 383
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->k:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public a(JZ)V
    .locals 2

    .line 388
    invoke-direct {p0}, Lcn/nubia/camera/ae/a;->m()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 390
    iget-object p1, p0, Lcn/nubia/camera/ae/a;->f:Lcom/android/common/c/e;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p3}, Lcom/android/common/c/e;->a(IIZ)V

    goto :goto_0

    .line 392
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->k:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 610
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/CameraSelectButton;->a(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public a(Lcn/nubia/camera/ae/b;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcn/nubia/camera/ae/a;->g:Lcn/nubia/camera/ae/b;

    return-void
.end method

.method public a(Lcn/nubia/camera/af/a;)V
    .locals 3

    .line 645
    sget-object v0, Lcn/nubia/camera/af/a;->F:Lcn/nubia/camera/af/a;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    sget-object v0, Lcn/nubia/camera/af/a;->c:Lcn/nubia/camera/af/a;

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 653
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->e:Ljava/util/ArrayList;

    iget v2, p0, Lcn/nubia/camera/ae/a;->d:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/ae/a$a;

    iget-object v0, v0, Lcn/nubia/camera/ae/a$a;->a:Lcn/nubia/camera/af/a;

    .line 654
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/ae/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 655
    iget-object v2, p0, Lcn/nubia/camera/ae/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/ae/a$a;

    iget-object v2, v2, Lcn/nubia/camera/ae/a$a;->a:Lcn/nubia/camera/af/a;

    if-ne p1, v2, :cond_1

    .line 656
    iput v1, p0, Lcn/nubia/camera/ae/a;->d:I

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    :cond_2
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/ae/a;->g:Lcn/nubia/camera/ae/b;

    if-eqz v1, :cond_3

    .line 661
    invoke-interface {v1, v0, p1}, Lcn/nubia/camera/ae/b;->b(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)V

    .line 663
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    iget v0, p0, Lcn/nubia/camera/ae/a;->d:I

    invoke-virtual {p1, v0}, Lcom/android/common/ui/CameraSelectButton;->a(I)V

    goto :goto_3

    .line 646
    :cond_4
    :goto_2
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->g:Lcn/nubia/camera/ae/b;

    if-eqz v0, :cond_5

    .line 647
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->e:Ljava/util/ArrayList;

    iget v2, p0, Lcn/nubia/camera/ae/a;->d:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/ae/a$a;

    iget-object v0, v0, Lcn/nubia/camera/ae/a$a;->a:Lcn/nubia/camera/af/a;

    .line 648
    iget-object v2, p0, Lcn/nubia/camera/ae/a;->g:Lcn/nubia/camera/ae/b;

    invoke-interface {v2, v0, p1}, Lcn/nubia/camera/ae/b;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)V

    .line 650
    :cond_5
    iput v1, p0, Lcn/nubia/camera/ae/a;->d:I

    .line 651
    iget-object p1, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    invoke-virtual {p1, v1}, Lcom/android/common/ui/CameraSelectButton;->a(I)V

    :goto_3
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 370
    invoke-direct {p0}, Lcn/nubia/camera/ae/a;->m()V

    if-eqz p1, :cond_0

    .line 372
    invoke-direct {p0}, Lcn/nubia/camera/ae/a;->q()V

    goto :goto_0

    .line 374
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ae/a;->k:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public b()V
    .locals 4

    .line 363
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->M()Lcn/nubia/camera/m/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/m/a;->b(Z)V

    .line 364
    invoke-direct {p0}, Lcn/nubia/camera/ae/a;->m()V

    .line 365
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->f:Lcom/android/common/c/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/common/c/e;->a(IIZ)V

    .line 366
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->k:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public b(J)V
    .locals 2

    .line 397
    invoke-direct {p0}, Lcn/nubia/camera/ae/a;->m()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 399
    iget-object p1, p0, Lcn/nubia/camera/ae/a;->f:Lcom/android/common/c/e;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, v0}, Lcom/android/common/c/e;->a(IIZ)V

    goto :goto_0

    .line 401
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->k:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 586
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/CameraSelectButton;->setEnabled(Z)V

    return-void
.end method

.method public c(J)V
    .locals 2

    const-string v0, "MemberScrollerManager"

    const-string v1, "disableMemberScrollerForAWhile"

    .line 591
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->k:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    .line 593
    iput-boolean v0, p0, Lcn/nubia/camera/ae/a;->m:Z

    .line 594
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public c()Z
    .locals 3

    .line 406
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->k:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/ae/a;->k:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public d()V
    .locals 1

    .line 410
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Lcom/android/common/ui/CameraSelectButton;->a()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0}, Lcom/android/common/ui/CameraSelectButton;->b()V

    :cond_0
    const/4 v0, 0x3

    const-string v1, "MemberScrollerManager"

    .line 420
    invoke-static {v1, v0}, Lcn/nubia/camera/c/a;->a(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/ae/a;->a:Z

    return-void
.end method

.method public f()V
    .locals 2

    .line 424
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    invoke-virtual {v0}, Lcom/android/common/ui/CameraSelectButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    .line 425
    invoke-virtual {v0}, Lcom/android/common/ui/CameraSelectButton;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MemberScrollerManager"

    const-string v1, "Recreate CameraSelectView"

    .line 426
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/CameraSelectButton;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/CameraSelectButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public g()I
    .locals 1

    .line 598
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    invoke-virtual {v0}, Lcom/android/common/ui/CameraSelectButton;->getVisibility()I

    move-result v0

    return v0
.end method

.method public h()V
    .locals 1

    .line 614
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->b:Lcom/android/common/ui/CameraSelectButton;

    invoke-virtual {v0}, Lcom/android/common/ui/CameraSelectButton;->d()V

    return-void
.end method

.method public i()V
    .locals 3

    .line 618
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->k:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->f:Lcom/android/common/c/e;

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/common/c/e;->a(IIZ)V

    .line 621
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->k:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MemberScrollerManager"

    const-string v2, "reset disableMemberScrollerForAWhile when pause"

    .line 622
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iput-boolean v1, p0, Lcn/nubia/camera/ae/a;->m:Z

    .line 625
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 626
    invoke-direct {p0}, Lcn/nubia/camera/ae/a;->o()V

    .line 627
    iput-object v1, p0, Lcn/nubia/camera/ae/a;->h:Landroid/animation/ObjectAnimator;

    .line 628
    iput-object v1, p0, Lcn/nubia/camera/ae/a;->i:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public j()Lcn/nubia/camera/af/a;
    .locals 2

    .line 641
    iget-object v0, p0, Lcn/nubia/camera/ae/a;->e:Ljava/util/ArrayList;

    iget v1, p0, Lcn/nubia/camera/ae/a;->d:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/ae/a$a;

    iget-object v0, v0, Lcn/nubia/camera/ae/a$a;->a:Lcn/nubia/camera/af/a;

    return-object v0
.end method
