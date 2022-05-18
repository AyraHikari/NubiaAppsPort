.class Lcn/nubia/camera/pretty/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/n/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/e;->f(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/preference/ListPreference;

.field final synthetic b:Lcn/nubia/camera/pretty/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/e;Lcom/android/preference/ListPreference;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcn/nubia/camera/pretty/e$3;->b:Lcn/nubia/camera/pretty/e;

    iput-object p2, p0, Lcn/nubia/camera/pretty/e$3;->a:Lcom/android/preference/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 260
    iget-object p2, p0, Lcn/nubia/camera/pretty/e$3;->b:Lcn/nubia/camera/pretty/e;

    invoke-virtual {p2}, Lcn/nubia/camera/pretty/e;->D()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 264
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ak/a;->au()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/nubia/camera/pretty/e$3;->b:Lcn/nubia/camera/pretty/e;

    .line 265
    invoke-static {p2}, Lcn/nubia/camera/pretty/e;->d(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/s/a;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/nubia/camera/pretty/e$3;->a:Lcom/android/preference/ListPreference;

    .line 266
    invoke-virtual {p2}, Lcom/android/preference/ListPreference;->l()I

    move-result p2

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/pretty/e$3;->b:Lcn/nubia/camera/pretty/e;

    .line 267
    invoke-static {p1}, Lcn/nubia/camera/pretty/e;->i(Lcn/nubia/camera/pretty/e;)Lcom/android/preference/c;

    move-result-object p1

    const-string p2, "pref_gender_key"

    invoke-virtual {p1, p2}, Lcom/android/preference/c;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 268
    iget-object p1, p0, Lcn/nubia/camera/pretty/e$3;->b:Lcn/nubia/camera/pretty/e;

    invoke-static {p1}, Lcn/nubia/camera/pretty/e;->j(Lcn/nubia/camera/pretty/e;)Lcom/android/preference/c;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/camera/pretty/e;->a(Lcn/nubia/camera/pretty/e;Landroid/content/SharedPreferences;)V

    .line 269
    iget-object p1, p0, Lcn/nubia/camera/pretty/e$3;->b:Lcn/nubia/camera/pretty/e;

    invoke-static {p1}, Lcn/nubia/camera/pretty/e;->h(Lcn/nubia/camera/pretty/e;)V

    .line 271
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/pretty/e$3;->b:Lcn/nubia/camera/pretty/e;

    invoke-static {p1}, Lcn/nubia/camera/pretty/e;->b(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/k/ah;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->k()V

    return-void
.end method
