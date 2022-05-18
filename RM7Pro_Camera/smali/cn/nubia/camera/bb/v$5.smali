.class Lcn/nubia/camera/bb/v$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/pretty/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bb/v;->g(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/v;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/v;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcn/nubia/camera/bb/v$5;->a:Lcn/nubia/camera/bb/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcn/nubia/camera/bb/v$5;->a:Lcn/nubia/camera/bb/v;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/v;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "xiawenjun"

    const-string v1, "onValueChanged"

    .line 360
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcn/nubia/camera/bb/v$5;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->d(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/bb/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/bb/ac;->k()V

    .line 363
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->au()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/bb/v$5;->a:Lcn/nubia/camera/bb/v;

    .line 364
    invoke-static {v0}, Lcn/nubia/camera/bb/v;->e(Lcn/nubia/camera/bb/v;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/bb/v$5;->a:Lcn/nubia/camera/bb/v;

    .line 365
    invoke-static {v0}, Lcn/nubia/camera/bb/v;->f(Lcn/nubia/camera/bb/v;)Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_gender_key"

    invoke-virtual {v0, v1}, Lcom/android/preference/c;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/bb/v$5;->a:Lcn/nubia/camera/bb/v;

    .line 366
    invoke-static {v0}, Lcn/nubia/camera/bb/v;->g(Lcn/nubia/camera/bb/v;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcn/nubia/camera/bb/v$5;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->h(Lcn/nubia/camera/bb/v;)Lcom/android/preference/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/bb/v;->a(Lcn/nubia/camera/bb/v;Landroid/content/SharedPreferences;)V

    .line 368
    iget-object v0, p0, Lcn/nubia/camera/bb/v$5;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->i(Lcn/nubia/camera/bb/v;)V

    :cond_1
    return-void
.end method
