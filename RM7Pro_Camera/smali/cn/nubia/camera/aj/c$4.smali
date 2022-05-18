.class Lcn/nubia/camera/aj/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/n/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aj/c;->f(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/preference/ListPreference;

.field final synthetic b:Lcn/nubia/camera/aj/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/c;Lcom/android/preference/ListPreference;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcn/nubia/camera/aj/c$4;->b:Lcn/nubia/camera/aj/c;

    iput-object p2, p0, Lcn/nubia/camera/aj/c$4;->a:Lcom/android/preference/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 255
    iget-object p2, p0, Lcn/nubia/camera/aj/c$4;->b:Lcn/nubia/camera/aj/c;

    invoke-virtual {p2}, Lcn/nubia/camera/aj/c;->D()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ak/a;->au()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/nubia/camera/aj/c$4;->b:Lcn/nubia/camera/aj/c;

    .line 260
    invoke-static {p2}, Lcn/nubia/camera/aj/c;->l(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/nubia/camera/aj/c$4;->a:Lcom/android/preference/ListPreference;

    .line 261
    invoke-virtual {p2}, Lcom/android/preference/ListPreference;->l()I

    move-result p2

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/aj/c$4;->b:Lcn/nubia/camera/aj/c;

    .line 262
    invoke-static {p1}, Lcn/nubia/camera/aj/c;->m(Lcn/nubia/camera/aj/c;)Lcom/android/preference/c;

    move-result-object p1

    const-string p2, "pref_gender_key"

    invoke-virtual {p1, p2}, Lcom/android/preference/c;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 263
    iget-object p1, p0, Lcn/nubia/camera/aj/c$4;->b:Lcn/nubia/camera/aj/c;

    invoke-static {p1}, Lcn/nubia/camera/aj/c;->n(Lcn/nubia/camera/aj/c;)Lcom/android/preference/c;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/camera/aj/c;->a(Lcn/nubia/camera/aj/c;Landroid/content/SharedPreferences;)V

    .line 264
    iget-object p1, p0, Lcn/nubia/camera/aj/c$4;->b:Lcn/nubia/camera/aj/c;

    invoke-static {p1}, Lcn/nubia/camera/aj/c;->i(Lcn/nubia/camera/aj/c;)V

    .line 266
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/aj/c$4;->b:Lcn/nubia/camera/aj/c;

    invoke-static {p1}, Lcn/nubia/camera/aj/c;->d(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/aj/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/aj/h;->k()V

    return-void
.end method
