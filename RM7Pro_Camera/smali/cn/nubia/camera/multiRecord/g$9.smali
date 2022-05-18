.class Lcn/nubia/camera/multiRecord/g$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/multiRecord/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/multiRecord/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/multiRecord/g;)V
    .locals 0

    .line 1234
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/g$9;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 8

    const/4 v0, 0x0

    new-array v1, v0, [I

    new-array v2, v0, [Landroid/graphics/SurfaceTexture;

    .line 1266
    sget-object v3, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v3}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    sget-object v3, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    .line 1267
    invoke-virtual {v3}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v3

    if-ne v3, v5, :cond_0

    goto :goto_0

    .line 1270
    :cond_0
    sget-object v3, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v3}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v3

    const/4 v6, 0x5

    if-eq v3, v6, :cond_1

    sget-object v3, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    .line 1271
    invoke-virtual {v3}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v3

    const/4 v6, 0x7

    if-ne v3, v6, :cond_3

    :cond_1
    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 1272
    sget-object v3, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v3}, Lcn/nubia/camera/multiRecord/d;->h()I

    move-result v3

    aput v3, v2, v0

    sget-object v3, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v3}, Lcn/nubia/camera/multiRecord/d;->g()[I

    move-result-object v3

    aget v3, v3, v0

    aput v3, v2, v5

    sget-object v3, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v3}, Lcn/nubia/camera/multiRecord/d;->g()[I

    move-result-object v3

    aget v3, v3, v5

    aput v3, v2, v4

    new-array v1, v1, [Landroid/graphics/SurfaceTexture;

    .line 1273
    iget-object v3, p0, Lcn/nubia/camera/multiRecord/g$9;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v3}, Lcn/nubia/camera/multiRecord/g;->Q(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/c/e;->m()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    aput-object v3, v1, v0

    sget-object v3, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    .line 1274
    invoke-virtual {v3}, Lcn/nubia/camera/multiRecord/d;->f()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    aput-object v0, v1, v5

    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    aput-object v0, v1, v4

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_1

    :cond_2
    :goto_0
    new-array v1, v4, [I

    .line 1268
    sget-object v2, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v2}, Lcn/nubia/camera/multiRecord/d;->h()I

    move-result v2

    aput v2, v1, v0

    sget-object v2, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v2}, Lcn/nubia/camera/multiRecord/d;->g()[I

    move-result-object v2

    aget v2, v2, v0

    aput v2, v1, v5

    new-array v2, v4, [Landroid/graphics/SurfaceTexture;

    .line 1269
    iget-object v3, p0, Lcn/nubia/camera/multiRecord/g$9;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v3}, Lcn/nubia/camera/multiRecord/g;->P(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/c/e;->m()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    aput-object v3, v2, v0

    sget-object v3, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v3}, Lcn/nubia/camera/multiRecord/d;->f()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    aput-object v0, v2, v5

    .line 1276
    :cond_3
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$9;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->D(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/multiRecord/h;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcn/nubia/camera/multiRecord/h;->a([Landroid/graphics/SurfaceTexture;[I)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 5

    .line 1242
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$9;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->D(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/multiRecord/h;

    move-result-object v0

    const-string v1, "MultiRecordFragment"

    if-eqz v0, :cond_3

    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->i()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1246
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1247
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$9;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->D(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/multiRecord/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/h;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v4, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$9;->a:Lcn/nubia/camera/multiRecord/g;

    .line 1248
    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->L(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v4, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v4}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1249
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$9;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->M(Lcn/nubia/camera/multiRecord/g;)V

    .line 1250
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ba/f;->c()V

    .line 1251
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$9;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->N(Lcn/nubia/camera/multiRecord/g;)Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_key_save_original_video_key"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1252
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/g$9;->a()V

    .line 1254
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$9;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->D(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/multiRecord/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/h;->a()V

    .line 1255
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$9;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0, v2, v3}, Lcn/nubia/camera/multiRecord/g;->a(Lcn/nubia/camera/multiRecord/g;J)J

    .line 1256
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$9;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->O(Lcn/nubia/camera/multiRecord/g;)V

    goto :goto_0

    .line 1259
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore click: state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/g$9;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v2}, Lcn/nubia/camera/multiRecord/g;->D(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/multiRecord/h;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/multiRecord/h;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string v0, "ignore click"

    .line 1243
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
