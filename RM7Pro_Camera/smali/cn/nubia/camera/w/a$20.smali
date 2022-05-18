.class Lcn/nubia/camera/w/a$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/prosetting/ui/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/w/a;->i(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/w/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/w/a;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcn/nubia/camera/w/a$20;->a:Lcn/nubia/camera/w/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 509
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    .line 512
    iget-object p1, p0, Lcn/nubia/camera/w/a$20;->a:Lcn/nubia/camera/w/a;

    invoke-static {p1}, Lcn/nubia/camera/w/a;->o(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/w/a$20;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->d(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0f0027

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object p1, p0, Lcn/nubia/camera/w/a$20;->a:Lcn/nubia/camera/w/a;

    sget-object v0, Lcn/nubia/camera/w/b;->d:Lcn/nubia/camera/w/b;

    iget-object v3, p0, Lcn/nubia/camera/w/a$20;->a:Lcn/nubia/camera/w/a;

    invoke-static {v3}, Lcn/nubia/camera/w/a;->d(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 514
    iget-object p1, p0, Lcn/nubia/camera/w/a$20;->a:Lcn/nubia/camera/w/a;

    sget-object v0, Lcn/nubia/camera/w/b;->d:Lcn/nubia/camera/w/b;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/a;Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    .line 516
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/w/a$20;->a:Lcn/nubia/camera/w/a;

    invoke-static {v1}, Lcn/nubia/camera/w/a;->o(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v1, p0, Lcn/nubia/camera/w/a$20;->a:Lcn/nubia/camera/w/a;

    sget-object v2, Lcn/nubia/camera/w/b;->d:Lcn/nubia/camera/w/b;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 518
    iget-object v1, p0, Lcn/nubia/camera/w/a$20;->a:Lcn/nubia/camera/w/a;

    sget-object v2, Lcn/nubia/camera/w/b;->d:Lcn/nubia/camera/w/b;

    invoke-static {v1, v2, p1}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/a;Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 520
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/w/a$20;->a:Lcn/nubia/camera/w/a;

    invoke-static {p1}, Lcn/nubia/camera/w/a;->d(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "pref_manual_focus_key"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 521
    iget-object p1, p0, Lcn/nubia/camera/w/a$20;->a:Lcn/nubia/camera/w/a;

    invoke-static {p1}, Lcn/nubia/camera/w/a;->p(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/prosetting/ui/ManualFocusView;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;Lcn/nubia/camera/prosetting/ui/b;)V

    return-void
.end method
