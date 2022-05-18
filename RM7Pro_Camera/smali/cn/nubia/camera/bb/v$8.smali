.class Lcn/nubia/camera/bb/v$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/n/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bb/v;->h(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/preference/ListPreference;

.field final synthetic b:Lcn/nubia/camera/bb/v;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/v;Lcom/android/preference/ListPreference;)V
    .locals 0

    .line 780
    iput-object p1, p0, Lcn/nubia/camera/bb/v$8;->b:Lcn/nubia/camera/bb/v;

    iput-object p2, p0, Lcn/nubia/camera/bb/v$8;->a:Lcom/android/preference/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 783
    iget-object p2, p0, Lcn/nubia/camera/bb/v$8;->b:Lcn/nubia/camera/bb/v;

    invoke-virtual {p2}, Lcn/nubia/camera/bb/v;->D()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 787
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ak/a;->au()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/nubia/camera/bb/v$8;->b:Lcn/nubia/camera/bb/v;

    .line 788
    invoke-static {p2}, Lcn/nubia/camera/bb/v;->o(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/nubia/camera/bb/v$8;->a:Lcom/android/preference/ListPreference;

    .line 789
    invoke-virtual {p2}, Lcom/android/preference/ListPreference;->l()I

    move-result p2

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/bb/v$8;->b:Lcn/nubia/camera/bb/v;

    .line 790
    invoke-static {p1}, Lcn/nubia/camera/bb/v;->p(Lcn/nubia/camera/bb/v;)Lcom/android/preference/c;

    move-result-object p1

    const-string p2, "pref_gender_key"

    invoke-virtual {p1, p2}, Lcom/android/preference/c;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 791
    iget-object p1, p0, Lcn/nubia/camera/bb/v$8;->b:Lcn/nubia/camera/bb/v;

    invoke-static {p1}, Lcn/nubia/camera/bb/v;->q(Lcn/nubia/camera/bb/v;)Lcom/android/preference/c;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/camera/bb/v;->a(Lcn/nubia/camera/bb/v;Landroid/content/SharedPreferences;)V

    .line 792
    iget-object p1, p0, Lcn/nubia/camera/bb/v$8;->b:Lcn/nubia/camera/bb/v;

    invoke-static {p1}, Lcn/nubia/camera/bb/v;->i(Lcn/nubia/camera/bb/v;)V

    .line 794
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/bb/v$8;->b:Lcn/nubia/camera/bb/v;

    invoke-static {p1}, Lcn/nubia/camera/bb/v;->d(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/bb/ac;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/bb/ac;->k()V

    return-void
.end method
