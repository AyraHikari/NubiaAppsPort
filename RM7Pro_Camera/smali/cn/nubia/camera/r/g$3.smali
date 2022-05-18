.class Lcn/nubia/camera/r/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/q/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/r/g;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/r/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/r/g;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcn/nubia/camera/r/g$3;->a:Lcn/nubia/camera/r/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .line 248
    iget-object v0, p0, Lcn/nubia/camera/r/g$3;->a:Lcn/nubia/camera/r/g;

    invoke-static {v0}, Lcn/nubia/camera/r/g;->f(Lcn/nubia/camera/r/g;)Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/r/g$3;->a:Lcn/nubia/camera/r/g;

    const v2, 0x7f0f022e

    invoke-virtual {v1, v2}, Lcn/nubia/camera/r/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_freeze_video_registration_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcn/nubia/camera/r/g$3;->a:Lcn/nubia/camera/r/g;

    const v2, 0x7f0f0309

    invoke-virtual {v1, v2}, Lcn/nubia/camera/r/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "tripod"

    goto :goto_0

    .line 252
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/r/g$3;->a:Lcn/nubia/camera/r/g;

    const v2, 0x7f0f030b

    invoke-virtual {v1, v2}, Lcn/nubia/camera/r/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "hand"

    goto :goto_0

    .line 255
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/r/g$3;->a:Lcn/nubia/camera/r/g;

    invoke-static {v0}, Lcn/nubia/camera/r/g;->b(Lcn/nubia/camera/r/g;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "auto-tripod"

    goto :goto_0

    :cond_2
    const-string v0, "auto-hand"

    :goto_0
    const-string v1, "capture_tool"

    .line 257
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
