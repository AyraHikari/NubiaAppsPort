.class Lcn/nubia/camera/w/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/prosetting/ui/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/w/a;->k(Landroid/view/View;)V
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

    .line 564
    iput-object p1, p0, Lcn/nubia/camera/w/a$2;->a:Lcn/nubia/camera/w/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 567
    iget-object v0, p0, Lcn/nubia/camera/w/a$2;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->d(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 568
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_electronic_compensation_key"

    .line 567
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 568
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 569
    iget-object v0, p0, Lcn/nubia/camera/w/a$2;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->s(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/prosetting/ui/ShutterCompensationView;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;Lcn/nubia/camera/prosetting/ui/b;)V

    .line 570
    iget-object v0, p0, Lcn/nubia/camera/w/a$2;->a:Lcn/nubia/camera/w/a;

    sget-object v1, Lcn/nubia/camera/w/b;->g:Lcn/nubia/camera/w/b;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcn/nubia/camera/w/a$2;->a:Lcn/nubia/camera/w/a;

    sget-object v1, Lcn/nubia/camera/w/b;->g:Lcn/nubia/camera/w/b;

    invoke-static {v0, v1, p1}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/a;Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcn/nubia/camera/w/a$2;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->t(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
