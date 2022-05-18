.class Lcn/nubia/camera/pretty/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/pretty/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/e;->e(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/e;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcn/nubia/camera/pretty/e$2;->a:Lcn/nubia/camera/pretty/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcn/nubia/camera/pretty/e$2;->a:Lcn/nubia/camera/pretty/e;

    invoke-virtual {v0}, Lcn/nubia/camera/pretty/e;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/e$2;->a:Lcn/nubia/camera/pretty/e;

    invoke-static {v0}, Lcn/nubia/camera/pretty/e;->b(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->k()V

    .line 218
    iget-object v0, p0, Lcn/nubia/camera/pretty/e$2;->a:Lcn/nubia/camera/pretty/e;

    invoke-static {v0}, Lcn/nubia/camera/pretty/e;->c(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/pretty/b;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/pretty/b;->e()V

    .line 220
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->au()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/pretty/e$2;->a:Lcn/nubia/camera/pretty/e;

    .line 221
    invoke-static {v0}, Lcn/nubia/camera/pretty/e;->d(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/s/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/pretty/e$2;->a:Lcn/nubia/camera/pretty/e;

    .line 222
    invoke-static {v0}, Lcn/nubia/camera/pretty/e;->e(Lcn/nubia/camera/pretty/e;)Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_gender_key"

    invoke-virtual {v0, v1}, Lcom/android/preference/c;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/pretty/e$2;->a:Lcn/nubia/camera/pretty/e;

    .line 223
    invoke-static {v0}, Lcn/nubia/camera/pretty/e;->f(Lcn/nubia/camera/pretty/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcn/nubia/camera/pretty/e$2;->a:Lcn/nubia/camera/pretty/e;

    invoke-static {v0}, Lcn/nubia/camera/pretty/e;->g(Lcn/nubia/camera/pretty/e;)Lcom/android/preference/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/pretty/e;->a(Lcn/nubia/camera/pretty/e;Landroid/content/SharedPreferences;)V

    .line 225
    iget-object v0, p0, Lcn/nubia/camera/pretty/e$2;->a:Lcn/nubia/camera/pretty/e;

    invoke-static {v0}, Lcn/nubia/camera/pretty/e;->h(Lcn/nubia/camera/pretty/e;)V

    :cond_1
    return-void
.end method
