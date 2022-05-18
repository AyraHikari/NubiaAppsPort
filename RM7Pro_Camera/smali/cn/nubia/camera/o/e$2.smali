.class Lcn/nubia/camera/o/e$2;
.super Lcn/nubia/camera/g/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/o/e;->i_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/o/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/o/e;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcn/nubia/camera/o/e$2;->a:Lcn/nubia/camera/o/e;

    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/g/b;-><init>(Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 239
    invoke-super {p0}, Lcn/nubia/camera/g/b;->a()V

    .line 240
    iget-object v0, p0, Lcn/nubia/camera/o/e$2;->a:Lcn/nubia/camera/o/e;

    invoke-static {v0}, Lcn/nubia/camera/o/e;->k(Lcn/nubia/camera/o/e;)Lcn/nubia/camera/o/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/o/h;->k()V

    .line 241
    iget-object v0, p0, Lcn/nubia/camera/o/e$2;->a:Lcn/nubia/camera/o/e;

    const-string v1, "pref_camera_anti_shake"

    invoke-static {v0, v1}, Lcn/nubia/camera/o/e;->a(Lcn/nubia/camera/o/e;Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    .line 242
    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 243
    iget-object v1, p0, Lcn/nubia/camera/o/e$2;->a:Lcn/nubia/camera/o/e;

    if-eqz v0, :cond_0

    const v2, 0x7f0f030d

    goto :goto_0

    :cond_0
    const v2, 0x7f0f030e

    :goto_0
    invoke-virtual {v1, v2}, Lcn/nubia/camera/o/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    .line 245
    iget-object v1, p0, Lcn/nubia/camera/o/e$2;->a:Lcn/nubia/camera/o/e;

    invoke-static {v1}, Lcn/nubia/camera/o/e;->l(Lcn/nubia/camera/o/e;)Lcn/nubia/camera/o/c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lcn/nubia/camera/o/e$2;->a:Lcn/nubia/camera/o/e;

    invoke-static {v1}, Lcn/nubia/camera/o/e;->l(Lcn/nubia/camera/o/e;)Lcn/nubia/camera/o/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/camera/o/c;->b(Z)V

    :cond_1
    return-void
.end method
