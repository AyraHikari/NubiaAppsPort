.class Lcn/nubia/camera/elefnovideo/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/elefnovideo/e;->i_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/elefnovideo/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/elefnovideo/e;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/e$1;->a:Lcn/nubia/camera/elefnovideo/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/e$1;->a:Lcn/nubia/camera/elefnovideo/e;

    const-string v1, "pref_camera_image_registration"

    invoke-static {v0, v1}, Lcn/nubia/camera/elefnovideo/e;->a(Lcn/nubia/camera/elefnovideo/e;Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    .line 153
    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 154
    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e$1;->a:Lcn/nubia/camera/elefnovideo/e;

    invoke-static {v1}, Lcn/nubia/camera/elefnovideo/e;->a(Lcn/nubia/camera/elefnovideo/e;)Lcn/nubia/camera/elefnovideo/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e$1;->a:Lcn/nubia/camera/elefnovideo/e;

    invoke-static {v1}, Lcn/nubia/camera/elefnovideo/e;->a(Lcn/nubia/camera/elefnovideo/e;)Lcn/nubia/camera/elefnovideo/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/camera/elefnovideo/c;->c(Z)V

    .line 157
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->aK()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e$1;->a:Lcn/nubia/camera/elefnovideo/e;

    invoke-static {v1}, Lcn/nubia/camera/elefnovideo/e;->b(Lcn/nubia/camera/elefnovideo/e;)Lcn/nubia/camera/elefnovideo/i;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/elefnovideo/i;->q()V

    .line 159
    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e$1;->a:Lcn/nubia/camera/elefnovideo/e;

    invoke-static {v1}, Lcn/nubia/camera/elefnovideo/e;->c(Lcn/nubia/camera/elefnovideo/e;)V

    .line 161
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e$1;->a:Lcn/nubia/camera/elefnovideo/e;

    if-eqz v0, :cond_2

    const v0, 0x7f0f030d

    goto :goto_0

    :cond_2
    const v0, 0x7f0f030e

    :goto_0
    invoke-virtual {v1, v0}, Lcn/nubia/camera/elefnovideo/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    return-void
.end method
