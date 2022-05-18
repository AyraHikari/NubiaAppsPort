.class Lcn/nubia/camera/aj/e$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/q/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aj/e;->ar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/e;)V
    .locals 0

    .line 1105
    iput-object p1, p0, Lcn/nubia/camera/aj/e$7;->a:Lcn/nubia/camera/aj/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 4

    .line 1108
    iget-object v0, p0, Lcn/nubia/camera/aj/e$7;->a:Lcn/nubia/camera/aj/e;

    invoke-static {v0}, Lcn/nubia/camera/aj/e;->l(Lcn/nubia/camera/aj/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1109
    iget-object v0, p0, Lcn/nubia/camera/aj/e$7;->a:Lcn/nubia/camera/aj/e;

    .line 1110
    invoke-static {v0}, Lcn/nubia/camera/aj/e;->m(Lcn/nubia/camera/aj/e;)Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aj/e$7;->a:Lcn/nubia/camera/aj/e;

    const v2, 0x7f0f0247

    invoke-virtual {v1, v2}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_live_photo_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v2, "livephoto"

    .line 1109
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1112
    iget-object v0, p0, Lcn/nubia/camera/aj/e$7;->a:Lcn/nubia/camera/aj/e;

    invoke-static {v0}, Lcn/nubia/camera/aj/e;->n(Lcn/nubia/camera/aj/e;)Lcom/android/preference/c;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/aj/e$7;->a:Lcn/nubia/camera/aj/e;

    const v3, 0x7f0f0226

    invoke-virtual {v2, v3}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_composition_key"

    invoke-virtual {v0, v3, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcn/nubia/camera/aj/e$7;->a:Lcn/nubia/camera/aj/e;

    invoke-static {v0}, Lcn/nubia/camera/aj/e;->o(Lcn/nubia/camera/aj/e;)Lcn/nubia/camera/aj/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aj/c;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/composition/CompositionView;

    const-string v1, "on-fail"

    if-eqz v0, :cond_0

    .line 1115
    invoke-virtual {v0}, Lcn/nubia/camera/composition/CompositionView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "on-ok"

    :cond_0
    const-string v0, "composition_state"

    .line 1122
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/aj/e$7;->a:Lcn/nubia/camera/aj/e;

    invoke-static {v0}, Lcn/nubia/camera/aj/e;->p(Lcn/nubia/camera/aj/e;)Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aj/e$7;->a:Lcn/nubia/camera/aj/e;

    const v2, 0x7f0f02ad

    invoke-virtual {v1, v2}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_third_arith_hdr_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cam_hdr"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    iget-object v0, p0, Lcn/nubia/camera/aj/e$7;->a:Lcn/nubia/camera/aj/e;

    invoke-static {v0}, Lcn/nubia/camera/aj/e;->q(Lcn/nubia/camera/aj/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aj/e$7;->a:Lcn/nubia/camera/aj/e;

    invoke-static {v1}, Lcn/nubia/camera/aj/e;->r(Lcn/nubia/camera/aj/e;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/g;->a(Lcom/android/preference/c;Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cam_effect"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
