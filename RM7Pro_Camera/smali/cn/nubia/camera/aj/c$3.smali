.class Lcn/nubia/camera/aj/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aj/c;->e(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/c;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcn/nubia/camera/aj/c$3;->a:Lcn/nubia/camera/aj/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 232
    iget-object p1, p0, Lcn/nubia/camera/aj/c$3;->a:Lcn/nubia/camera/aj/c;

    invoke-static {p1}, Lcn/nubia/camera/aj/c;->j(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_disable_auto_supernight_key"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 233
    new-instance p1, Lcn/nubia/camera/k/ad;

    invoke-direct {p1}, Lcn/nubia/camera/k/ad;-><init>()V

    .line 234
    sget-object v0, Lcn/nubia/camera/k/a/a$b;->H:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lcn/nubia/camera/aj/c$3;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->d(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/aj/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/aj/h;->a(Lcn/nubia/camera/k/ad;)V

    .line 236
    iget-object p1, p0, Lcn/nubia/camera/aj/c$3;->a:Lcn/nubia/camera/aj/c;

    invoke-static {p1}, Lcn/nubia/camera/aj/c;->k(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/aj/c$a;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcn/nubia/camera/aj/c$a;->removeMessages(I)V

    .line 237
    iget-object p1, p0, Lcn/nubia/camera/aj/c$3;->a:Lcn/nubia/camera/aj/c;

    invoke-static {p1}, Lcn/nubia/camera/aj/c;->k(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/aj/c$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/aj/c$a;->sendEmptyMessage(I)Z

    return-void
.end method
