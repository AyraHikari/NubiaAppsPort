.class Lcn/nubia/camera/r/g$2;
.super Lcn/nubia/camera/g/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/r/g;->i_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/preference/IconListPreference;

.field final synthetic b:Lcn/nubia/camera/r/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/r/g;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;Lcom/android/preference/IconListPreference;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcn/nubia/camera/r/g$2;->b:Lcn/nubia/camera/r/g;

    iput-object p4, p0, Lcn/nubia/camera/r/g$2;->a:Lcom/android/preference/IconListPreference;

    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/g/b;-><init>(Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 156
    invoke-super {p0}, Lcn/nubia/camera/g/b;->a()V

    .line 157
    iget-object v0, p0, Lcn/nubia/camera/r/g$2;->a:Lcom/android/preference/IconListPreference;

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcn/nubia/camera/r/g$2;->b:Lcn/nubia/camera/r/g;

    invoke-static {v0}, Lcn/nubia/camera/r/g;->c(Lcn/nubia/camera/r/g;)Lcom/android/common/ui/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/r/g$2;->b:Lcn/nubia/camera/r/g;

    invoke-static {v1}, Lcn/nubia/camera/r/g;->b(Lcn/nubia/camera/r/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f08015e

    goto :goto_0

    :cond_0
    const v1, 0x7f08015f

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 160
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/r/g$2;->b:Lcn/nubia/camera/r/g;

    invoke-static {v0}, Lcn/nubia/camera/r/g;->d(Lcn/nubia/camera/r/g;)Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/r/g$2;->b:Lcn/nubia/camera/r/g;

    invoke-virtual {v1}, Lcn/nubia/camera/r/g;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/r/g$2;->b:Lcn/nubia/camera/r/g;

    invoke-static {v2}, Lcn/nubia/camera/r/g;->b(Lcn/nubia/camera/r/g;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/r/a;->a(Lcom/android/preference/c;Landroid/content/Context;Z)Z

    move-result v0

    .line 161
    iget-object v1, p0, Lcn/nubia/camera/r/g$2;->b:Lcn/nubia/camera/r/g;

    if-eqz v0, :cond_2

    const v2, 0x7f0f030d

    goto :goto_1

    :cond_2
    const v2, 0x7f0f030e

    :goto_1
    invoke-virtual {v1, v2}, Lcn/nubia/camera/r/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    .line 164
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->aK()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/nubia/camera/r/g$2;->b:Lcn/nubia/camera/r/g;

    .line 165
    invoke-static {v1}, Lcn/nubia/camera/r/g;->a(Lcn/nubia/camera/r/g;)Lcn/nubia/camera/r/k;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/r/k;->e()I

    move-result v1

    if-eqz v0, :cond_3

    const v0, 0x801a

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    if-eq v1, v0, :cond_4

    const-string v0, "FreezeVideoMemberFragment"

    const-string v1, "onSwitch asyncConfigSession"

    .line 166
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcn/nubia/camera/r/g$2;->b:Lcn/nubia/camera/r/g;

    invoke-static {v0}, Lcn/nubia/camera/r/g;->a(Lcn/nubia/camera/r/g;)Lcn/nubia/camera/r/k;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/r/k;->q()V

    const/4 v3, 0x1

    .line 170
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/r/g$2;->b:Lcn/nubia/camera/r/g;

    invoke-static {v0}, Lcn/nubia/camera/r/g;->e(Lcn/nubia/camera/r/g;)Lcn/nubia/camera/r/e;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/camera/r/e;->c(Z)V

    return-void
.end method
