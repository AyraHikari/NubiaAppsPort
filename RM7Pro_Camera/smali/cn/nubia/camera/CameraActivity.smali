.class public Lcn/nubia/camera/CameraActivity;
.super Lcn/nubia/camera/a/a;
.source "SourceFile"


# instance fields
.field private i:Lcn/nubia/a/a;

.field private j:Lcn/nubia/camera/c;

.field private k:Lcn/nubia/camera/i;

.field private l:Lcn/nubia/camera/p/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcn/nubia/camera/a/a;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcn/nubia/camera/CameraActivity;->l:Lcn/nubia/camera/p/a;

    return-void
.end method

.method private W()V
    .locals 7

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFingerprint "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->T()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraActivity"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->T()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 340
    iget-object v0, p0, Lcn/nubia/camera/CameraActivity;->l:Lcn/nubia/camera/p/a;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Lcn/nubia/camera/p/a;

    invoke-direct {v0}, Lcn/nubia/camera/p/a;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/CameraActivity;->l:Lcn/nubia/camera/p/a;

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "nubia_fingerprint_photo_switch"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    const-string v0, "on"

    goto :goto_0

    :cond_1
    const-string v0, "off"

    .line 346
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v4

    const v5, 0x7f0f01d4

    .line 347
    invoke-virtual {p0, v5}, Lcn/nubia/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_fingerprint_shutter_key"

    .line 346
    invoke-virtual {v4, v6, v5}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 348
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 349
    invoke-interface {v4, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 350
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 352
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initFingerprint fingerSwitch = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/CameraActivity;->l:Lcn/nubia/camera/p/a;

    if-eqz v0, :cond_4

    if-ne v3, v2, :cond_4

    .line 355
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->m()V

    :cond_4
    return-void
.end method


# virtual methods
.method protected a()Lcn/nubia/camera/ac/b;
    .locals 1

    .line 48
    new-instance v0, Lcn/nubia/camera/h;

    invoke-direct {v0}, Lcn/nubia/camera/h;-><init>()V

    return-object v0
.end method

.method protected a(Ljava/lang/String;Lcn/nubia/camera/af/a;Lcn/nubia/camera/ac/b;)Lcn/nubia/camera/af/b;
    .locals 9

    .line 164
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "nubia.camera.family"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 167
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 168
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->G()I

    move-result v4

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "useFrontCamera: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->N()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; useRearCamera: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->P()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CameraActivity"

    invoke-static {v6, v5}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->N()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 172
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 173
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    if-ne v4, v7, :cond_2

    :cond_1
    const v5, 0x7ffffffe

    if-ne v5, v1, :cond_2

    .line 175
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    :cond_2
    const-string v5, "com.android.camera.action.FORCE_TOUCH_ACTION_VIDEO"

    .line 176
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eq v1, v3, :cond_4

    if-ne v2, v3, :cond_4

    :cond_3
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 177
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->P()Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_3

    :cond_5
    if-ltz v2, :cond_c

    .line 180
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->j()I

    move-result v0

    if-ge v2, v0, :cond_c

    if-ne v1, v3, :cond_6

    .line 182
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 184
    :cond_6
    invoke-interface {p3, p2}, Lcn/nubia/camera/ac/b;->a(Lcn/nubia/camera/af/a;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 186
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v7, :cond_7

    .line 187
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/af/b;

    invoke-virtual {p1}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    :cond_7
    move v4, v5

    .line 190
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_b

    .line 191
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/camera/af/b;

    invoke-virtual {v8}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    if-eqz v2, :cond_9

    .line 192
    :cond_8
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/camera/af/b;

    invoke-virtual {v8}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    if-ne v2, v7, :cond_a

    .line 193
    :cond_9
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/af/b;

    invoke-virtual {p1}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 197
    :cond_b
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v4, v7, :cond_10

    .line 198
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/af/b;

    invoke-virtual {p1}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 203
    :cond_c
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->n()Z

    move-result v0

    if-nez v0, :cond_e

    .line 204
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->o()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2

    .line 206
    :cond_d
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 207
    invoke-interface {p3, p2}, Lcn/nubia/camera/ac/b;->a(Lcn/nubia/camera/af/a;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 208
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v7, :cond_10

    .line 209
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/af/b;

    invoke-virtual {p1}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 205
    :cond_e
    :goto_2
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 178
    :cond_f
    :goto_3
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object p1

    :cond_10
    :goto_4
    if-ne v1, v3, :cond_12

    if-gez v2, :cond_11

    .line 215
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->M()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->O()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 216
    :cond_11
    new-instance p2, Lcn/nubia/camera/af/b;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "memberCameraId: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 219
    :cond_12
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/a/a;->a(Ljava/lang/String;Lcn/nubia/camera/af/a;Lcn/nubia/camera/ac/b;)Lcn/nubia/camera/af/b;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcn/nubia/camera/ba/a;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/af/b;

    move-result-object p2

    :goto_5
    return-object p2
.end method

.method protected a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)V
    .locals 2

    .line 387
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->f:Lcn/nubia/camera/d/e;

    if-ne v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lcn/nubia/camera/CameraActivity;->j:Lcn/nubia/camera/c;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/c;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)V

    .line 389
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/d/e;->f:Lcn/nubia/camera/d/e;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/e;)V

    .line 390
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->w()Lcn/nubia/camera/an/a;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/nubia/camera/an/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(ZJJ)V
    .locals 2

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onHidden"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraActivity"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/a/a;->a(ZJJ)V

    .line 268
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->I()Z

    move-result p1

    if-nez p1, :cond_0

    .line 269
    iget-object p1, p0, Lcn/nubia/camera/CameraActivity;->i:Lcn/nubia/a/a;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcn/nubia/a/a;->b(I)V

    :cond_0
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x18

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_1

    const/16 v0, 0x55

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->F()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 122
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/CameraActivity;->i:Lcn/nubia/a/a;

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {v0}, Lcn/nubia/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 130
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/a/a;->a(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected b()V
    .locals 8

    .line 53
    new-instance v0, Lcn/nubia/camera/i;

    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/i;-><init>(Landroid/app/Activity;Lcn/nubia/camera/ad/a;)V

    iput-object v0, p0, Lcn/nubia/camera/CameraActivity;->k:Lcn/nubia/camera/i;

    .line 54
    new-instance v0, Lcn/nubia/a/a;

    .line 56
    invoke-static {p0}, Lcn/nubia/camera/camerafamily/b;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 57
    invoke-static {}, Lcn/nubia/camera/ba/a;->h()I

    move-result v6

    .line 58
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int v7, v1, v2

    const v4, 0x7f09008a

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcn/nubia/a/a;-><init>(Landroid/app/Activity;ILjava/util/List;II)V

    iput-object v0, p0, Lcn/nubia/camera/CameraActivity;->i:Lcn/nubia/a/a;

    .line 59
    new-instance v0, Lcn/nubia/camera/c;

    iget-object v1, p0, Lcn/nubia/camera/CameraActivity;->i:Lcn/nubia/a/a;

    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->E()Lcn/nubia/camera/ae/a;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/CameraActivity;->k:Lcn/nubia/camera/i;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/camera/c;-><init>(Lcn/nubia/a/a;Lcn/nubia/camera/ae/a;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/i;)V

    iput-object v0, p0, Lcn/nubia/camera/CameraActivity;->j:Lcn/nubia/camera/c;

    return-void
.end method

.method public b(ZJJ)V
    .locals 2

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onShown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraActivity"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/a/a;->b(ZJJ)V

    .line 277
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->I()Z

    move-result p1

    if-nez p1, :cond_1

    .line 278
    iget-object p1, p0, Lcn/nubia/camera/CameraActivity;->i:Lcn/nubia/a/a;

    .line 279
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->E()Lcn/nubia/camera/ae/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ae/a;->j()Lcn/nubia/camera/af/a;

    move-result-object p2

    sget-object p3, Lcn/nubia/camera/af/a;->a:Lcn/nubia/camera/af/a;

    if-ne p2, p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 278
    :goto_0
    invoke-virtual {p1, p2}, Lcn/nubia/a/a;->b(I)V

    :cond_1
    return-void
.end method

.method protected b(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x18

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_1

    const/16 v0, 0x55

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->F()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 150
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/CameraActivity;->i:Lcn/nubia/a/a;

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {v0}, Lcn/nubia/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 159
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/a/a;->b(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected c()V
    .locals 2

    const-string v0, "CameraActivity"

    const-string v1, "onCameraResume"

    .line 64
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcn/nubia/camera/CameraActivity;->j:Lcn/nubia/camera/c;

    invoke-virtual {v0}, Lcn/nubia/camera/c;->a()V

    .line 66
    iget-object v0, p0, Lcn/nubia/camera/CameraActivity;->k:Lcn/nubia/camera/i;

    invoke-virtual {v0}, Lcn/nubia/camera/i;->a()V

    .line 67
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->g()V

    .line 68
    invoke-direct {p0}, Lcn/nubia/camera/CameraActivity;->W()V

    return-void
.end method

.method protected d()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcn/nubia/camera/CameraActivity;->j:Lcn/nubia/camera/c;

    invoke-virtual {v0}, Lcn/nubia/camera/c;->b()V

    .line 74
    iget-object v0, p0, Lcn/nubia/camera/CameraActivity;->k:Lcn/nubia/camera/i;

    invoke-virtual {v0}, Lcn/nubia/camera/i;->b()V

    .line 75
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->n()V

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 8

    .line 84
    invoke-super {p0}, Lcn/nubia/camera/a/a;->f()V

    .line 85
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v1

    const/16 v2, 0x8

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    const-string v7, "camerasleep"

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/camera/ae/a;->a(IJJLjava/lang/String;)V

    const-string v0, "CameraActivity"

    const-string v1, "onCameraSleep"

    .line 86
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public g()V
    .locals 8

    .line 91
    invoke-super {p0}, Lcn/nubia/camera/a/a;->g()V

    .line 92
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    const-string v7, "camerasleep"

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/camera/ae/a;->a(IJJLjava/lang/String;)V

    const-string v0, "CameraActivity"

    const-string v1, "onCameraWakeup"

    .line 93
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public g_()V
    .locals 2

    .line 300
    invoke-super {p0}, Lcn/nubia/camera/a/a;->g_()V

    .line 301
    iget-object v0, p0, Lcn/nubia/camera/CameraActivity;->i:Lcn/nubia/a/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/a/a;->b(I)V

    return-void
.end method

.method protected h()Lcn/nubia/camera/af/a;
    .locals 5

    .line 226
    sget-object v0, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    .line 227
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    sget-object v0, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    goto/16 :goto_0

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    sget-object v0, Lcn/nubia/camera/af/a;->z:Lcn/nubia/camera/af/a;

    goto/16 :goto_0

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->n()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 232
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.camera.action.DualCalibrationForSale"

    .line 233
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    sget-object v0, Lcn/nubia/camera/af/a;->R:Lcn/nubia/camera/af/a;

    goto :goto_0

    .line 236
    :cond_2
    sget-object v0, Lcn/nubia/camera/af/a;->H:Lcn/nubia/camera/af/a;

    goto :goto_0

    .line 238
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->o()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 239
    sget-object v0, Lcn/nubia/camera/af/a;->P:Lcn/nubia/camera/af/a;

    goto :goto_0

    .line 240
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->j()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 241
    sget-object v0, Lcn/nubia/camera/af/a;->D:Lcn/nubia/camera/af/a;

    goto :goto_0

    .line 243
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.action.VIDEO_CAMERA"

    .line 244
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 245
    sget-object v0, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    goto :goto_0

    .line 247
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "nubia.camera.family"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_7

    .line 249
    invoke-static {v2}, Lcn/nubia/camera/af/a;->a(I)Lcn/nubia/camera/af/a;

    move-result-object v0

    .line 250
    sget-object v1, Lcn/nubia/camera/af/a;->L:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_9

    .line 251
    iget-object v0, p0, Lcn/nubia/camera/CameraActivity;->k:Lcn/nubia/camera/i;

    invoke-virtual {v0}, Lcn/nubia/camera/i;->c()V

    .line 252
    sget-object v0, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    goto :goto_0

    :cond_7
    const-string v2, "com.android.camera.action.FORCE_TOUCH_ACTION_SELFIE"

    .line 254
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 255
    sget-object v0, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    goto :goto_0

    :cond_8
    const-string v2, "com.android.camera.action.FORCE_TOUCH_ACTION_VIDEO"

    .line 256
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 257
    sget-object v0, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    :cond_9
    :goto_0
    return-object v0
.end method

.method public i()V
    .locals 2

    .line 286
    invoke-super {p0}, Lcn/nubia/camera/a/a;->i()V

    const-string v0, "CameraActivity"

    const-string v1, "Enable switch bar"

    .line 287
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcn/nubia/camera/CameraActivity;->c:Lcn/nubia/camera/ae/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ae/a;->b(Z)V

    return-void
.end method

.method public j()V
    .locals 2

    .line 293
    invoke-super {p0}, Lcn/nubia/camera/a/a;->j()V

    const-string v0, "CameraActivity"

    const-string v1, "disable switch bar"

    .line 294
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcn/nubia/camera/CameraActivity;->c:Lcn/nubia/camera/ae/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ae/a;->b(Z)V

    return-void
.end method

.method public l()V
    .locals 3

    .line 306
    invoke-super {p0}, Lcn/nubia/camera/a/a;->l()V

    .line 307
    iget-object v0, p0, Lcn/nubia/camera/CameraActivity;->i:Lcn/nubia/a/a;

    .line 308
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->E()Lcn/nubia/camera/ae/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ae/a;->j()Lcn/nubia/camera/af/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->a:Lcn/nubia/camera/af/a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 307
    :goto_0
    invoke-virtual {v0, v1}, Lcn/nubia/a/a;->b(I)V

    return-void
.end method

.method protected m()V
    .locals 2

    .line 362
    invoke-super {p0}, Lcn/nubia/camera/a/a;->m()V

    .line 363
    iget-object v0, p0, Lcn/nubia/camera/CameraActivity;->l:Lcn/nubia/camera/p/a;

    if-eqz v0, :cond_0

    .line 364
    iget-object v1, p0, Lcn/nubia/camera/CameraActivity;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Lcn/nubia/camera/p/a;->a(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    const-string v0, "CameraActivity"

    const-string v1, "[openFingerprint] failed.."

    .line 366
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected n()V
    .locals 2

    .line 372
    invoke-super {p0}, Lcn/nubia/camera/a/a;->n()V

    .line 373
    iget-object v0, p0, Lcn/nubia/camera/CameraActivity;->l:Lcn/nubia/camera/p/a;

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Lcn/nubia/camera/p/a;->a()V

    goto :goto_0

    :cond_0
    const-string v0, "CameraActivity"

    const-string v1, "[closeFingerprint] failed.."

    .line 376
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public o()V
    .locals 1

    .line 382
    iget-object v0, p0, Lcn/nubia/camera/CameraActivity;->j:Lcn/nubia/camera/c;

    invoke-virtual {v0}, Lcn/nubia/camera/c;->c()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult requestCode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraActivity"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2711

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_1

    .line 320
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ad/a;->b(Z)V

    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/camera/ad/a;->b(Z)V

    :cond_2
    :goto_0
    const/16 v0, 0x2712

    if-ne p1, v0, :cond_3

    .line 326
    invoke-static {p0}, Lcn/nubia/camera/ba/a;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 328
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v2, "pref_camera_recordlocation_key"

    invoke-virtual {v0, v2}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    const-string v2, "on"

    .line 329
    invoke-virtual {v0, v2}, Lcom/android/preference/ListPreference;->b(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/nubia/e/a;->a(Z)V

    .line 333
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/CameraActivity;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/camera/aw/a;->a(IILandroid/content/Intent;)V

    return-void
.end method
