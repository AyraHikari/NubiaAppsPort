.class Lcn/nubia/camera/aj/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/pretty/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aj/c;->d(Landroid/view/View;)V
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

    .line 200
    iput-object p1, p0, Lcn/nubia/camera/aj/c$2;->a:Lcn/nubia/camera/aj/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcn/nubia/camera/aj/c$2;->a:Lcn/nubia/camera/aj/c;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/c;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/c$2;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->d(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/aj/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aj/h;->k()V

    .line 209
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->au()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/aj/c$2;->a:Lcn/nubia/camera/aj/c;

    .line 210
    invoke-static {v0}, Lcn/nubia/camera/aj/c;->e(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/aj/c$2;->a:Lcn/nubia/camera/aj/c;

    .line 211
    invoke-static {v0}, Lcn/nubia/camera/aj/c;->f(Lcn/nubia/camera/aj/c;)Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_gender_key"

    invoke-virtual {v0, v1}, Lcom/android/preference/c;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/aj/c$2;->a:Lcn/nubia/camera/aj/c;

    .line 212
    invoke-static {v0}, Lcn/nubia/camera/aj/c;->g(Lcn/nubia/camera/aj/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcn/nubia/camera/aj/c$2;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->h(Lcn/nubia/camera/aj/c;)Lcom/android/preference/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/aj/c;->a(Lcn/nubia/camera/aj/c;Landroid/content/SharedPreferences;)V

    .line 214
    iget-object v0, p0, Lcn/nubia/camera/aj/c$2;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->i(Lcn/nubia/camera/aj/c;)V

    :cond_1
    return-void
.end method
