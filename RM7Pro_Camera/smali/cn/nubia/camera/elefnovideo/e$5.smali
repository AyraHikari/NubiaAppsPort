.class Lcn/nubia/camera/elefnovideo/e$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/q/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/elefnovideo/e;->ae()V
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

    .line 255
    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/e$5;->a:Lcn/nubia/camera/elefnovideo/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .line 258
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/e$5;->a:Lcn/nubia/camera/elefnovideo/e;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/e;->k(Lcn/nubia/camera/elefnovideo/e;)Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e$5;->a:Lcn/nubia/camera/elefnovideo/e;

    const v2, 0x7f0f01e8

    invoke-virtual {v1, v2}, Lcn/nubia/camera/elefnovideo/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_image_registration"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e$5;->a:Lcn/nubia/camera/elefnovideo/e;

    const v2, 0x7f0f0309

    invoke-virtual {v1, v2}, Lcn/nubia/camera/elefnovideo/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tripod"

    goto :goto_0

    :cond_0
    const-string v0, "hand"

    :goto_0
    const-string v1, "capture_tool"

    .line 260
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/e$5;->a:Lcn/nubia/camera/elefnovideo/e;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/e;->l(Lcn/nubia/camera/elefnovideo/e;)Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e$5;->a:Lcn/nubia/camera/elefnovideo/e;

    const v2, 0x7f0f01ca

    invoke-virtual {v1, v2}, Lcn/nubia/camera/elefnovideo/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_elefno_video_color"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "elevid_effect"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
