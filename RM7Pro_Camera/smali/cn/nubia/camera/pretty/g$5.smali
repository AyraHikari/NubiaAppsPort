.class Lcn/nubia/camera/pretty/g$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/q/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/g;->ag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/g;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcn/nubia/camera/pretty/g$5;->a:Lcn/nubia/camera/pretty/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .line 535
    iget-object v0, p0, Lcn/nubia/camera/pretty/g$5;->a:Lcn/nubia/camera/pretty/g;

    invoke-static {v0}, Lcn/nubia/camera/pretty/g;->k(Lcn/nubia/camera/pretty/g;)Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/pretty/g$5;->a:Lcn/nubia/camera/pretty/g;

    invoke-static {v1}, Lcn/nubia/camera/pretty/g;->l(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/g;->a(Lcom/android/preference/c;Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cam_effect"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcn/nubia/camera/pretty/g$5;->a:Lcn/nubia/camera/pretty/g;

    invoke-static {v0}, Lcn/nubia/camera/pretty/g;->m(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/pretty/g$5;->a:Lcn/nubia/camera/pretty/g;

    invoke-static {v1}, Lcn/nubia/camera/pretty/g;->n(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/b;->a(Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcn/nubia/camera/pretty/g$5;->a:Lcn/nubia/camera/pretty/g;

    invoke-static {v0}, Lcn/nubia/camera/pretty/g;->o(Lcn/nubia/camera/pretty/g;)Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_pretty_switch_key"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "portrait_pretty"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
