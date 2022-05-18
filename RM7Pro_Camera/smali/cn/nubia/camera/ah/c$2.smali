.class Lcn/nubia/camera/ah/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/q/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ah/c;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ah/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ah/c;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcn/nubia/camera/ah/c$2;->a:Lcn/nubia/camera/ah/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .line 241
    iget-object v0, p0, Lcn/nubia/camera/ah/c$2;->a:Lcn/nubia/camera/ah/c;

    invoke-static {v0}, Lcn/nubia/camera/ah/c;->b(Lcn/nubia/camera/ah/c;)Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ah/c$2;->a:Lcn/nubia/camera/ah/c;

    const v2, 0x7f0f01f9

    invoke-virtual {v1, v2}, Lcn/nubia/camera/ah/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_multi_exposure"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "multiexp_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
