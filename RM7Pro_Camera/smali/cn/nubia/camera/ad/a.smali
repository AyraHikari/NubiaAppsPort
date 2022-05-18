.class public Lcn/nubia/camera/ad/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Lcn/nubia/camera/af/a;

.field private E:J

.field private F:I

.field private G:Landroid/graphics/Bitmap;

.field private H:Z

.field private I:Lcn/nubia/camera/q/h;

.field private J:Lcn/nubia/camera/ap/b;

.field private K:Lcn/nubia/camera/m/a;

.field private L:Lcn/nubia/camera/a;

.field private M:J

.field private N:Lcn/nubia/camera/dualcameracalibration/i;

.field private a:Landroid/app/Activity;

.field private b:Lcn/nubia/camera/af/a;

.field private c:Lcn/nubia/camera/af/b;

.field private d:Lcn/nubia/camera/af/b;

.field private e:Lcn/nubia/camera/aw/a;

.field private f:Lcn/nubia/camera/d/a;

.field private g:Lcn/nubia/camera/ac/b;

.field private h:Lcn/nubia/l/a/b;

.field private i:Lcn/nubia/camera/aq/a;

.field private j:Lcn/nubia/camera/al/c;

.field private k:Lcn/nubia/j/a;

.field private l:Lcn/nubia/camera/aw/b;

.field private m:Lcn/nubia/camera/ae/a;

.field private n:Lcn/nubia/k/a/a;

.field private o:Lcn/nubia/e/a;

.field private p:Lcn/nubia/camera/f;

.field private q:Lcn/nubia/camera/al/a;

.field private r:Lcn/nubia/camera/k/h;

.field private s:Lcom/android/common/c/e;

.field private t:Lcn/nubia/camera/an/a;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcn/nubia/camera/ad/a;->o:Lcn/nubia/e/a;

    .line 61
    iput-object v0, p0, Lcn/nubia/camera/ad/a;->p:Lcn/nubia/camera/f;

    .line 62
    iput-object v0, p0, Lcn/nubia/camera/ad/a;->q:Lcn/nubia/camera/al/a;

    .line 63
    iput-object v0, p0, Lcn/nubia/camera/ad/a;->r:Lcn/nubia/camera/k/h;

    const/4 v1, 0x0

    .line 75
    iput-boolean v1, p0, Lcn/nubia/camera/ad/a;->C:Z

    .line 76
    sget-object v2, Lcn/nubia/camera/af/a;->a:Lcn/nubia/camera/af/a;

    iput-object v2, p0, Lcn/nubia/camera/ad/a;->D:Lcn/nubia/camera/af/a;

    const-wide/16 v2, -0x1

    .line 77
    iput-wide v2, p0, Lcn/nubia/camera/ad/a;->E:J

    .line 78
    iput v1, p0, Lcn/nubia/camera/ad/a;->F:I

    .line 80
    iput-object v0, p0, Lcn/nubia/camera/ad/a;->G:Landroid/graphics/Bitmap;

    .line 82
    iput-boolean v1, p0, Lcn/nubia/camera/ad/a;->H:Z

    .line 83
    iput-object v0, p0, Lcn/nubia/camera/ad/a;->I:Lcn/nubia/camera/q/h;

    .line 84
    iput-object v0, p0, Lcn/nubia/camera/ad/a;->J:Lcn/nubia/camera/ap/b;

    .line 85
    iput-object v0, p0, Lcn/nubia/camera/ad/a;->K:Lcn/nubia/camera/m/a;

    .line 86
    iput-object v0, p0, Lcn/nubia/camera/ad/a;->L:Lcn/nubia/camera/a;

    .line 425
    iput-object v0, p0, Lcn/nubia/camera/ad/a;->N:Lcn/nubia/camera/dualcameracalibration/i;

    .line 90
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->a:Landroid/app/Activity;

    .line 91
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/camera/ad/a;->a(Landroid/content/Intent;)V

    .line 92
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    invoke-static {}, Lcn/nubia/camera/ba/a;->q()I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/ad/a;->F:I

    .line 96
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/ad/a;->M:J

    return-void
.end method


# virtual methods
.method public A()Lcom/android/preference/c;
    .locals 2

    .line 314
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->i:Lcn/nubia/camera/aq/a;

    iget-object v1, p0, Lcn/nubia/camera/ad/a;->c:Lcn/nubia/camera/af/b;

    invoke-virtual {v1}, Lcn/nubia/camera/af/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aq/a;->b(Ljava/lang/String;)Lcom/android/preference/c;

    move-result-object v0

    return-object v0
.end method

.method public B()Lcom/android/preference/PreferenceGroup;
    .locals 2

    .line 322
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->i:Lcn/nubia/camera/aq/a;

    iget-object v1, p0, Lcn/nubia/camera/ad/a;->c:Lcn/nubia/camera/af/b;

    invoke-virtual {v1}, Lcn/nubia/camera/af/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aq/a;->a(Ljava/lang/String;)Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->c:Lcn/nubia/camera/af/b;

    invoke-virtual {v0}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public D()Z
    .locals 1

    .line 338
    iget-boolean v0, p0, Lcn/nubia/camera/ad/a;->z:Z

    return v0
.end method

.method public E()Z
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcn/nubia/camera/ad/a;->C:Z

    return v0
.end method

.method public F()J
    .locals 2

    .line 354
    iget-wide v0, p0, Lcn/nubia/camera/ad/a;->E:J

    return-wide v0
.end method

.method public G()I
    .locals 1

    .line 358
    iget v0, p0, Lcn/nubia/camera/ad/a;->F:I

    return v0
.end method

.method public H()Landroid/graphics/Bitmap;
    .locals 1

    .line 372
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->G:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public I()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcn/nubia/camera/ad/a;->H:Z

    return v0
.end method

.method public J()Lcn/nubia/camera/q/h;
    .locals 1

    .line 390
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->I:Lcn/nubia/camera/q/h;

    return-object v0
.end method

.method public K()Lcn/nubia/camera/ap/b;
    .locals 1

    .line 394
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->J:Lcn/nubia/camera/ap/b;

    return-object v0
.end method

.method public L()Lcom/android/common/c/e;
    .locals 1

    .line 406
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->s:Lcom/android/common/c/e;

    return-object v0
.end method

.method public M()Lcn/nubia/camera/m/a;
    .locals 1

    .line 414
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->K:Lcn/nubia/camera/m/a;

    return-object v0
.end method

.method public N()Lcn/nubia/camera/a;
    .locals 1

    .line 422
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->L:Lcn/nubia/camera/a;

    return-object v0
.end method

.method public O()Lcn/nubia/camera/dualcameracalibration/i;
    .locals 1

    .line 431
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->N:Lcn/nubia/camera/dualcameracalibration/i;

    return-object v0
.end method

.method public P()J
    .locals 2

    .line 435
    iget-wide v0, p0, Lcn/nubia/camera/ad/a;->M:J

    return-wide v0
.end method

.method public Q()Lcn/nubia/camera/an/a;
    .locals 1

    .line 443
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->t:Lcn/nubia/camera/an/a;

    return-object v0
.end method

.method public a()Landroid/app/Activity;
    .locals 1

    .line 100
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 362
    iput p1, p0, Lcn/nubia/camera/ad/a;->F:I

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 3

    .line 168
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 170
    invoke-static {p1}, Lcn/nubia/camera/ba/a;->a(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/camera/ad/a;->u:Z

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    .line 171
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "android.media.action.START_CAMCORDER"

    .line 172
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/camera/ad/a;->v:Z

    .line 173
    invoke-static {p1}, Lcn/nubia/camera/ba/a;->b(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/ad/a;->w:Z

    .line 176
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/ba/a;->a(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/ad/a;->x:Z

    const-string v0, "wlancamera"

    .line 177
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/ad/a;->z:Z

    .line 178
    invoke-static {p1}, Lcn/nubia/camera/ba/a;->c(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/ad/a;->A:Z

    const-string v0, "oisgyrooffsetcalibration"

    .line 179
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/camera/ad/a;->B:Z

    :cond_2
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->G:Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Lcn/nubia/camera/a;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->L:Lcn/nubia/camera/a;

    return-void
.end method

.method public a(Lcn/nubia/camera/ac/b;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->g:Lcn/nubia/camera/ac/b;

    return-void
.end method

.method public a(Lcn/nubia/camera/ae/a;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->m:Lcn/nubia/camera/ae/a;

    return-void
.end method

.method public a(Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->b:Lcn/nubia/camera/af/a;

    return-void
.end method

.method public a(Lcn/nubia/camera/af/b;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->c:Lcn/nubia/camera/af/b;

    return-void
.end method

.method public a(Lcn/nubia/camera/al/a;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->q:Lcn/nubia/camera/al/a;

    return-void
.end method

.method public a(Lcn/nubia/camera/al/c;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->j:Lcn/nubia/camera/al/c;

    return-void
.end method

.method public a(Lcn/nubia/camera/an/a;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->t:Lcn/nubia/camera/an/a;

    return-void
.end method

.method public a(Lcn/nubia/camera/ap/b;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->J:Lcn/nubia/camera/ap/b;

    return-void
.end method

.method public a(Lcn/nubia/camera/aq/a;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->i:Lcn/nubia/camera/aq/a;

    return-void
.end method

.method public a(Lcn/nubia/camera/aw/a;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->e:Lcn/nubia/camera/aw/a;

    return-void
.end method

.method public a(Lcn/nubia/camera/aw/b;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->l:Lcn/nubia/camera/aw/b;

    return-void
.end method

.method public a(Lcn/nubia/camera/d/a;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->f:Lcn/nubia/camera/d/a;

    return-void
.end method

.method public a(Lcn/nubia/camera/dualcameracalibration/i;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->N:Lcn/nubia/camera/dualcameracalibration/i;

    return-void
.end method

.method public a(Lcn/nubia/camera/f;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->p:Lcn/nubia/camera/f;

    return-void
.end method

.method public a(Lcn/nubia/camera/k/h;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->r:Lcn/nubia/camera/k/h;

    return-void
.end method

.method public a(Lcn/nubia/camera/m/a;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->K:Lcn/nubia/camera/m/a;

    return-void
.end method

.method public a(Lcn/nubia/camera/q/h;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->I:Lcn/nubia/camera/q/h;

    return-void
.end method

.method public a(Lcn/nubia/e/a;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->o:Lcn/nubia/e/a;

    return-void
.end method

.method public a(Lcn/nubia/j/a;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->k:Lcn/nubia/j/a;

    return-void
.end method

.method public a(Lcn/nubia/k/a/a;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->n:Lcn/nubia/k/a/a;

    return-void
.end method

.method public a(Lcn/nubia/l/a/b;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->h:Lcn/nubia/l/a/b;

    return-void
.end method

.method public a(Lcom/android/common/c/e;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->s:Lcom/android/common/c/e;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 216
    iput-boolean p1, p0, Lcn/nubia/camera/ad/a;->y:Z

    return-void
.end method

.method public b()Lcn/nubia/camera/af/a;
    .locals 1

    .line 104
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->b:Lcn/nubia/camera/af/a;

    return-object v0
.end method

.method public b(Landroid/content/Intent;)V
    .locals 2

    .line 184
    iget-boolean v0, p0, Lcn/nubia/camera/ad/a;->x:Z

    .line 185
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/camera/ad/a;->x:Z

    if-eq v0, p1, :cond_0

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/ad/a;->M:J

    :cond_0
    return-void
.end method

.method public b(Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->D:Lcn/nubia/camera/af/a;

    return-void
.end method

.method public b(Lcn/nubia/camera/af/b;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcn/nubia/camera/ad/a;->d:Lcn/nubia/camera/af/b;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 334
    iput-boolean p1, p0, Lcn/nubia/camera/ad/a;->z:Z

    return-void
.end method

.method public c()Lcn/nubia/camera/af/b;
    .locals 1

    .line 112
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->c:Lcn/nubia/camera/af/b;

    return-object v0
.end method

.method public c(Lcn/nubia/camera/af/a;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->D:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_0

    .line 261
    sget-object p1, Lcn/nubia/camera/af/a;->a:Lcn/nubia/camera/af/a;

    iput-object p1, p0, Lcn/nubia/camera/ad/a;->D:Lcn/nubia/camera/af/a;

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FirstFrameAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MemberInfo"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iput-boolean p1, p0, Lcn/nubia/camera/ad/a;->C:Z

    if-eqz p1, :cond_0

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/ad/a;->E:J

    :cond_0
    return-void
.end method

.method public d()Lcn/nubia/camera/af/b;
    .locals 1

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->d:Lcn/nubia/camera/af/b;

    return-object v0
.end method

.method public d(Z)V
    .locals 0

    .line 377
    iput-boolean p1, p0, Lcn/nubia/camera/ad/a;->H:Z

    return-void
.end method

.method public e()Lcn/nubia/camera/aw/a;
    .locals 1

    .line 128
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->e:Lcn/nubia/camera/aw/a;

    return-object v0
.end method

.method public f()Lcn/nubia/camera/d/a;
    .locals 1

    .line 136
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->f:Lcn/nubia/camera/d/a;

    return-object v0
.end method

.method public g()Lcn/nubia/camera/ac/b;
    .locals 1

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->g:Lcn/nubia/camera/ac/b;

    return-object v0
.end method

.method public h()Lcn/nubia/l/a/b;
    .locals 1

    .line 152
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->h:Lcn/nubia/l/a/b;

    return-object v0
.end method

.method public i()Lcn/nubia/camera/aq/a;
    .locals 1

    .line 160
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->i:Lcn/nubia/camera/aq/a;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcn/nubia/camera/ad/a;->u:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcn/nubia/camera/ad/a;->x:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcn/nubia/camera/ad/a;->v:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lcn/nubia/camera/ad/a;->w:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcn/nubia/camera/ad/a;->A:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcn/nubia/camera/ad/a;->B:Z

    return v0
.end method

.method public p()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcn/nubia/camera/ad/a;->y:Z

    return v0
.end method

.method public q()Lcn/nubia/camera/al/c;
    .locals 1

    .line 228
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->j:Lcn/nubia/camera/al/c;

    return-object v0
.end method

.method public r()Lcn/nubia/j/a;
    .locals 1

    .line 232
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->k:Lcn/nubia/j/a;

    return-object v0
.end method

.method public s()Lcn/nubia/camera/aw/b;
    .locals 1

    .line 244
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->l:Lcn/nubia/camera/aw/b;

    return-object v0
.end method

.method public t()Lcn/nubia/camera/ae/a;
    .locals 1

    .line 252
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->m:Lcn/nubia/camera/ae/a;

    return-object v0
.end method

.method public u()Z
    .locals 2

    .line 266
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->D:Lcn/nubia/camera/af/a;

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()Lcn/nubia/e/a;
    .locals 1

    .line 274
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->o:Lcn/nubia/e/a;

    return-object v0
.end method

.method public w()Lcn/nubia/camera/f;
    .locals 1

    .line 282
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->p:Lcn/nubia/camera/f;

    return-object v0
.end method

.method public x()Lcn/nubia/camera/al/a;
    .locals 1

    .line 290
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->q:Lcn/nubia/camera/al/a;

    return-object v0
.end method

.method public y()Lcn/nubia/k/a/a;
    .locals 1

    .line 298
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->n:Lcn/nubia/k/a/a;

    return-object v0
.end method

.method public z()Lcn/nubia/camera/k/h;
    .locals 1

    .line 306
    iget-object v0, p0, Lcn/nubia/camera/ad/a;->r:Lcn/nubia/camera/k/h;

    return-object v0
.end method
